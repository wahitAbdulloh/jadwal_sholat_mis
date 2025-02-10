class AppConstants {
  static const String notificationChannelId = 'alarm_channel';
  static const String notificationChannelName = 'Alarm Channel';
  static const String notificationChannelDesc =
      'Channel for alarm notifications';

  static const Duration adzanDuration = Duration(minutes: 3);
  static const Map<String, int> iqomahDurations = {
    'Subuh': 30, // 30 minutes
    'Dzuhur': 17, // 17 minutes
    'Ashar': 15, // 15 minutes
    'Maghrib': 10, // 10 minutes
    'Isya': 15, // 15 minutes,
  };
  static const Duration alarmAutoStopDuration = Duration(seconds: 5);

  static const Map<String, int> prayerHighlightDurations = {
    'subuh': 30,
    'dzuhur': 30,
    'ashar': 7,
    'maghrib': 30,
    'isya': 30,
  };
}
