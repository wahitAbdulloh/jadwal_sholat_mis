import 'package:flutter/material.dart';
import '../models/prayer_time.dart';

class PrayerTimesList extends StatelessWidget {
  final List<PrayerTime> todaySchedule;
  final TimeOfDay currentTime;
  final Future<bool> Function(TimeOfDay, TimeOfDay) isCurrentPrayer;

  const PrayerTimesList({
    super.key,
    required this.todaySchedule,
    required this.currentTime,
    required this.isCurrentPrayer,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      padding: const EdgeInsets.all(16),
      decoration: _buildContainerDecoration(),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildTitle(),
          const SizedBox(height: 12),
          _buildPrayerTimesList(),
        ],
      ),
    );
  }

  BoxDecoration _buildContainerDecoration() {
    return BoxDecoration(
      color: Colors.white.withOpacity(0.8),
      borderRadius: BorderRadius.circular(15),
    );
  }

  Widget _buildTitle() {
    return const Text(
      'Jadwal Adzan Hari Ini',
      style: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget _buildPrayerTimesList() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: todaySchedule
            .map(
              (prayer) => PrayerTimeCard(
                prayer: prayer,
                currentTime: currentTime,
                isCurrentPrayer: isCurrentPrayer,
              ),
            )
            .toList(),
      ),
    );
  }
}

class PrayerTimeCard extends StatelessWidget {
  final PrayerTime prayer;
  final TimeOfDay currentTime;
  final Future<bool> Function(TimeOfDay, TimeOfDay) isCurrentPrayer;

  const PrayerTimeCard({
    super.key,
    required this.prayer,
    required this.currentTime,
    required this.isCurrentPrayer,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: FutureBuilder<bool>(
        future: isCurrentPrayer(prayer.time, currentTime),
        builder: (context, snapshot) {
          final isNow = snapshot.data ?? false;
          return _buildCard(isNow);
        },
      ),
    );
  }

  Widget _buildCard(bool isCurrentPrayer) {
    return Card(
      color: isCurrentPrayer ? Colors.blue.shade100 : null,
      child: Container(
        width: 120,
        padding: const EdgeInsets.all(8),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _buildPrayerName(isCurrentPrayer),
            const SizedBox(height: 4),
            _buildPrayerTime(isCurrentPrayer),
          ],
        ),
      ),
    );
  }

  Widget _buildPrayerName(bool isCurrentPrayer) {
    return FittedBox(
      child: Text(
        prayer.name.toLowerCase() == 'dzuhur' &&
                DateTime.now().weekday == DateTime.friday
            ? 'Jum\'at'
            : prayer.name,
        style: TextStyle(
          fontSize: 20,
          fontWeight: isCurrentPrayer ? FontWeight.bold : FontWeight.normal,
        ),
      ),
    );
  }

  Widget _buildPrayerTime(bool isCurrentPrayer) {
    return FittedBox(
      child: Text(
        '${prayer.time.hour.toString().padLeft(2, '0')}:${prayer.time.minute.toString().padLeft(2, '0')}',
        style: TextStyle(
          fontSize: 24,
          fontWeight: isCurrentPrayer ? FontWeight.bold : FontWeight.normal,
          color: isCurrentPrayer ? Colors.blue : null,
        ),
      ),
    );
  }
}
