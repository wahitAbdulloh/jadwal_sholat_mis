import 'package:flutter/material.dart';
import 'package:jadwal_sholat_mis/constants/app_constants.dart';
import '../widgets/adzan_overlay.dart';
import '../widgets/iqomah_overlay.dart';
import '../widgets/prayer_times_list.dart';
import '../models/prayer_time.dart';
import '../utils/date_formatter.dart';
import '../services/alarm_service.dart';
import '../services/prayer_service.dart';
import '../services/audio_manager.dart';
import 'dart:async';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  DateTime _currentTime = DateTime.now();
  final AlarmService _alarmService = AlarmService();
  late final PrayerService _prayerService;
  PrayerTime? _nextPrayer;
  String _countdownText = '';
  bool _showingAdzanOverlay = false;
  String _currentAdzanName = '';
  double _adzanProgress = 0.0;
  Timer? _adzanTimer;
  late final AnimationController _pulseController;
  late final Animation<double> _pulseAnimation;
  bool _showingIqomahOverlay = false;
  int _iqomahSeconds = 0;
  Timer? _iqomahTimer;
  final AudioManager _audioManager = AudioManager();
  List<PrayerTime> _todaySchedule = [];
  bool _isLoading = true;
  bool _isIqomahComplete = false;
  PrayerTime? _currentPrayer;

  @override
  void initState() {
    super.initState();

    // Initialize animations first
    _pulseController = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );

    _pulseAnimation = Tween<double>(
      begin: 0.4,
      end: 1.0,
    ).animate(_pulseController);

    // Start the animation
    _pulseController.repeat(reverse: true);

    // Initialize other services
    _prayerService = PrayerService(_alarmService);
    _prayerService.initializePrayerAlarms();

    _loadInitialData();

    Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        _currentTime = DateTime.now();
        _updateCountdown();
      });
    });

    _startAdzanCheck();
  }

  Future<void> _loadInitialData() async {
    try {
      final schedule = await _prayerService.getTodaySchedule();
      if (mounted) {
        setState(() {
          _todaySchedule = schedule;
          _isLoading = false;
        });
      }
    } catch (e) {
      print('Error loading schedule: $e');
    }
  }

  void _startAdzanCheck() {
    Stream.periodic(const Duration(seconds: 1)).listen((_) async {
      final now = TimeOfDay.now();
      final todaySchedule = await _prayerService.getTodaySchedule();

      for (var prayer in todaySchedule) {
        if (prayer.time.hour == now.hour &&
            prayer.time.minute == now.minute &&
            _currentTime.second == 0) {
          _showAdzanOverlay(prayer.name);
        }
      }
    });
  }

  void _showAdzanOverlay(String prayerName) {
    if (!_showingAdzanOverlay) {
      setState(() {
        _showingAdzanOverlay = true;
        _currentAdzanName = prayerName;
        _adzanProgress = 0.0;
      });

      // Play Adzan alarm
      _audioManager.playAdzanAlarm();

      // Start 3-minute timer for adzan
      const adzanDuration = AppConstants.adzanDuration;
      const updateInterval = Duration(milliseconds: 100);
      int elapsedIntervals = 0;
      final totalIntervals =
          adzanDuration.inMilliseconds ~/ updateInterval.inMilliseconds;

      _adzanTimer?.cancel();
      _adzanTimer = Timer.periodic(updateInterval, (timer) {
        elapsedIntervals++;
        setState(() {
          _adzanProgress = elapsedIntervals / totalIntervals;
        });

        if (elapsedIntervals >= totalIntervals) {
          timer.cancel();
          setState(() {
            _showingAdzanOverlay = false;
          });
          // Only show Iqomah if it's not Friday prayer
          final bool isFridayPrayer = _currentTime.weekday == DateTime.friday &&
              _currentAdzanName.toLowerCase() == 'dzuhur';
          if (!isFridayPrayer) {
            _showIqomahOverlay();
          } else {
            _isIqomahComplete = true;
          }
        }
      });
    }
  }

  void _showIqomahOverlay() {
    int iqomahDuration = AppConstants.iqomahDurations[_currentAdzanName] ?? 15;

    setState(() {
      _showingIqomahOverlay = true;
      _iqomahSeconds = iqomahDuration * 60;
    });

    _iqomahTimer?.cancel();
    _iqomahTimer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (_iqomahSeconds > 0) {
          _iqomahSeconds--;
        } else {
          _showingIqomahOverlay = false;
          _isIqomahComplete = true;
          timer.cancel();
          _audioManager.playIqomahAlarm();
        }
      });
    });
  }

  String _formatIqomahTime() {
    final minutes = (_iqomahSeconds ~/ 60).toString().padLeft(2, '0');
    final seconds = (_iqomahSeconds % 60).toString().padLeft(2, '0');
    return '$minutes:$seconds';
  }

  Future<void> _updateCountdown() async {
    final todaySchedule = await _prayerService.getTodaySchedule();
    final now = TimeOfDay.now();
    final currentMinutes = now.hour * 60 + now.minute;
    final currentSeconds = _currentTime.second;

    // Check for current prayer first
    _currentPrayer = null;
    for (var prayer in todaySchedule) {
      if (await _isCurrentPrayer(prayer.time, now)) {
        _currentPrayer = prayer;
        String currentPrayerName =
            prayer.name == 'Dzuhur' && DateTime.now().weekday == DateTime.friday
                ? 'Jum\'at'
                : prayer.name;
        _countdownText = 'Waktu Sholat $currentPrayerName';
        return;
      }
    }

    // If no current prayer, find next prayer
    _nextPrayer = null;

    // Find next prayer time
    for (var prayer in todaySchedule) {
      final prayerMinutes = prayer.time.hour * 60 + prayer.time.minute;
      if (prayerMinutes > currentMinutes ||
          (prayerMinutes == currentMinutes && currentSeconds == 0)) {
        _nextPrayer = prayer;
        break;
      }
    }

    if (_nextPrayer != null) {
      String nextPrayerName = _nextPrayer!.name == 'Dzuhur' &&
              DateTime.now().weekday == DateTime.friday
          ? 'Jum\'at'
          : _nextPrayer!.name;

      final nextPrayerMinutes =
          _nextPrayer!.time.hour * 60 + _nextPrayer!.time.minute;
      final remainingMinutes = nextPrayerMinutes - currentMinutes - 1;
      final remainingSeconds = 60 - currentSeconds;
      final hours = remainingMinutes ~/ 60;
      final minutes = remainingMinutes % 60;

      if (remainingMinutes < 0 ||
          (remainingMinutes == 0 && remainingSeconds > 0)) {
        // Show only seconds when less than 1 minute remains
        _countdownText = '$remainingSeconds detik menuju $nextPrayerName';
      } else if (hours <= 0) {
        // Show both minutes and seconds when less than 1 hour remains
        _countdownText =
            '$minutes menit $remainingSeconds detik menuju $nextPrayerName';
      } else {
        // Show hours and minutes for times over 1 hour
        _countdownText = '$hours jam $minutes menit menuju $nextPrayerName';
      }
    } else {
      _countdownText = 'Semua waktu sholat hari ini telah lewat';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        _buildMainScaffold(),
        if (_showingAdzanOverlay)
          AdzanOverlay(
            currentAdzanName: _currentAdzanName,
            adzanProgress: _adzanProgress,
            currentTime: _currentTime,
            pulseAnimation: _pulseAnimation,
          ),
        if (_showingIqomahOverlay)
          IqomahOverlay(
            currentAdzanName: _currentAdzanName,
            formattedTime: _formatIqomahTime(),
          ),
      ],
    );
  }

  Widget _buildMainScaffold() {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Masjid Imam Syafi\'i Bangkalan - ${formatDate(_currentTime)}',
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            shadows: [
              Shadow(
                offset: Offset(1.0, 1.0),
                blurRadius: 3.0,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
            ],
          ),
        ),
      ),
      extendBodyBehindAppBar: true,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(_currentPrayer != null ? 0.8 : 0.5),
          ),
          child: SafeArea(
            child: Column(
              children: [
                _buildClockAndCountdown(),
                const Spacer(), // Tambahkan Spacer untuk mendorong widget ke bawah
                _isLoading
                    ? const Center(child: CircularProgressIndicator())
                    : _todaySchedule.isEmpty
                        ? const Center(child: Text('No prayer times available'))
                        : PrayerTimesList(
                            todaySchedule: _todaySchedule,
                            currentTime: TimeOfDay.now(),
                            isCurrentPrayer: (time, now) async =>
                                _isCurrentPrayer(time, now),
                          ),
                const SizedBox(height: 16), // Tambahkan padding bawah
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<bool> _isCurrentPrayer(TimeOfDay prayerTime, TimeOfDay now) async {
    if (!_isIqomahComplete) return false;

    final currentTotalMinutes = now.hour * 60 + now.minute;
    final prayerTotalMinutes = prayerTime.hour * 60 + prayerTime.minute;

    // Find prayer name based on time
    final todaySchedule = await _prayerService.getTodaySchedule();
    final prayer = todaySchedule
        .where((p) =>
            p.time.hour == prayerTime.hour &&
            p.time.minute == prayerTime.minute)
        .firstOrNull;

    if (prayer == null) return false;

    // Get highlight duration from constants
    final highlightDuration =
        AppConstants.prayerHighlightDurations[prayer.name.toLowerCase()] ?? 30;

    return currentTotalMinutes >= prayerTotalMinutes &&
        currentTotalMinutes < (prayerTotalMinutes + highlightDuration) &&
        prayerTotalMinutes <= currentTotalMinutes;
  }

  Widget _buildClockAndCountdown() {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.45,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '${_currentTime.hour.toString().padLeft(2, '0')}:'
              '${_currentTime.minute.toString().padLeft(2, '0')}:'
              '${_currentTime.second.toString().padLeft(2, '0')}',
              style: const TextStyle(
                fontSize: 100,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                shadows: [
                  Shadow(
                    offset: Offset(2.0, 2.0),
                    blurRadius: 3.0,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.5),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                _countdownText,
                style: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _pulseController.dispose();
    _adzanTimer?.cancel();
    _iqomahTimer?.cancel();
    _audioManager.dispose();
    _isIqomahComplete = false;
    super.dispose();
  }
}
