class AppConstants {
  static const String notificationChannelId = 'alarm_channel';
  static const String notificationChannelName = 'Alarm Channel';
  static const String notificationChannelDesc =
      'Channel for alarm notifications';

  static const Duration adzanDuration = Duration(minutes: 3);
  static const Map<String, int> iqomahDurations = {
    'Subuh': 27, // 30 minutes
    'Dzuhur': 17, // 20 minutes
    'Ashar': 17, // 20 minutes
    'Maghrib': 9, // 12 minutes
    'Isya': 12, // 15 minutes,
  };
  static const Duration alarmAutoStopDuration = Duration(seconds: 5);

  static const Map<String, int> prayerHighlightDurations = {
    'subuh': 60,
    'dzuhur': 60,
    'ashar': 40,
    'maghrib': 40,
    'isya': 40,
  };
}
