import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:timezone/timezone.dart' as tz;
import 'package:timezone/data/latest.dart' as tz;
import '../constants/app_constants.dart';
import 'audio_manager.dart';

class AlarmService {
  final FlutterLocalNotificationsPlugin _notifications;
  final AudioManager _audioManager;
  final List<TimeOfDay> _alarms;

  AlarmService()
      : _notifications = FlutterLocalNotificationsPlugin(),
        _audioManager = AudioManager(),
        _alarms = [] {
    _initialize();
  }

  Future<void> _initialize() async {
    await _initializeNotifications();
    _startAlarmChecker();
  }

  Future<void> _initializeNotifications() async {
    tz.initializeTimeZones();

    const initializationSettings = InitializationSettings(
      android: AndroidInitializationSettings('@mipmap/ic_launcher'),
    );

    await _notifications.initialize(
      initializationSettings,
      onDidReceiveNotificationResponse: (details) => _playAlarmSound(),
    );
  }

  void _startAlarmChecker() {
    Stream.periodic(const Duration(seconds: 1)).listen((_) => _checkAlarms());
  }

  void _checkAlarms() {
    final now = TimeOfDay.now();
    final currentTime = DateTime.now();

    for (var alarm in _alarms) {
      if (alarm.hour == now.hour &&
          alarm.minute == now.minute &&
          currentTime.second == 0) {
        _playAlarmSound();
      }
    }
  }

  Future<void> _playAlarmSound() async {
    if (!_audioManager.isPlaying) {
      await _audioManager.playAdzanAlarm();
    }
  }

  Future<void> setAlarm(TimeOfDay time) async {
    _alarms.add(time);
    await _scheduleNotification(time);
  }

  Future<void> _scheduleNotification(TimeOfDay time) async {
    const notificationDetails = NotificationDetails(
      android: AndroidNotificationDetails(
        AppConstants.notificationChannelId,
        AppConstants.notificationChannelName,
        channelDescription: AppConstants.notificationChannelDesc,
        importance: Importance.max,
        priority: Priority.high,
        playSound: true,
      ),
    );

    await _notifications.zonedSchedule(
      _alarms.length,
      'Waktu Sholat',
      'Saatnya menunaikan sholat',
      tz.TZDateTime.from(_getNextOccurrence(time), tz.local),
      notificationDetails,
      androidScheduleMode: AndroidScheduleMode.exactAllowWhileIdle,
      uiLocalNotificationDateInterpretation:
          UILocalNotificationDateInterpretation.absoluteTime,
    );
  }

  DateTime _getNextOccurrence(TimeOfDay time) {
    final now = DateTime.now();
    var scheduledDate = DateTime(
      now.year,
      now.month,
      now.day,
      time.hour,
      time.minute,
    );

    if (scheduledDate.isBefore(now)) {
      scheduledDate = scheduledDate.add(const Duration(days: 1));
    }

    return scheduledDate;
  }

  Future<void> clearAllAlarms() async {
    // Cancel all scheduled notifications
    await _notifications.cancelAll();
    // Clear the alarm list
    _alarms.clear();
  }
}
