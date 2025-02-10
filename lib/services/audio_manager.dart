import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/foundation.dart';
import '../constants/app_constants.dart';
import 'dart:async';

/// Manages audio playback for the application
class AudioManager {
  static final AudioManager _instance = AudioManager._internal();
  factory AudioManager() => _instance;

  final AudioPlayer _audioPlayer = AudioPlayer();
  bool _isPlaying = false;
  Timer? _autoStopTimer;

  AudioManager._internal() {
    _initAudio();
  }

  Future<void> _initAudio() async {
    try {
      _audioPlayer
        ..setPlayerMode(PlayerMode.mediaPlayer)
        ..setVolume(1.0)
        ..setSourceAsset('audio/alarm.wav');
    } catch (e) {
      debugPrint('Error initializing audio: $e');
    }
  }

  Future<void> playAlarm() async {
    if (_isPlaying) return;

    try {
      _isPlaying = true;
      await _audioPlayer.setReleaseMode(ReleaseMode.loop);
      await _audioPlayer.play(AssetSource('audio/alarm.wav'));
      _scheduleAutoStop();
    } catch (e) {
      debugPrint('Error playing alarm: $e');
      _isPlaying = false;
    }
  }

  void _scheduleAutoStop() {
    _autoStopTimer?.cancel();
    _autoStopTimer = Timer(
      AppConstants.alarmAutoStopDuration,
      () {
        _stopAlarm();
        debugPrint('Auto-stopping alarm');
      },
    );
  }

  Future<void> _stopAlarm() async {
    try {
      _isPlaying = false;
      _autoStopTimer?.cancel();
      _autoStopTimer = null;
      await _audioPlayer.stop();
    } catch (e) {
      debugPrint('Error stopping alarm: $e');
    }
  }

  bool get isPlaying => _isPlaying;

  void dispose() {
    _autoStopTimer?.cancel();
    _audioPlayer.dispose();
  }
}
