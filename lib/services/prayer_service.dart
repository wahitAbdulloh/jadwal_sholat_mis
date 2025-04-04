import 'package:flutter/material.dart';
import '../models/prayer_time.dart';
import '../data/prayer_schedule.dart';
import 'alarm_service.dart';

class PrayerService {
  final AlarmService _alarmService;

  PrayerService(this._alarmService); // Hapus karakter '/' yang tidak sengaja

  Future<List<PrayerTime>> getTodaySchedule() async {
    final today = DateTime.now();
    return getScheduleForDate(today);
  }

  Future<List<PrayerTime>> getNextDaySchedule() async {
    final tomorrow = DateTime.now().add(const Duration(days: 1));
    return _getPrayerTimes(tomorrow);
  }

  Future<List<PrayerTime>> getScheduleForDate(DateTime date) async {
    final scheduleDate = DateTime(date.year, date.month, date.day);
    return prayerSchedule[scheduleDate] ?? [];
  }

  Future<List<PrayerTime>> _getPrayerTimes(DateTime date) async {
    final scheduleDate = DateTime(date.year, date.month, date.day);
    return prayerSchedule[scheduleDate] ?? [];
  }

  Future<void> initializePrayerAlarms() async {
    final todaySchedule = await getTodaySchedule();
    for (var prayer in todaySchedule) {
      await _alarmService.setAlarm(prayer.time);
    }
  }

  Future<List<PrayerTime>> getCurrentSchedule() async {
    final schedule = await getTodaySchedule();

    // If all prayers have passed and it's past midnight, get next day's schedule
    if (schedule.isEmpty || _haveAllPrayersPassed(schedule)) {
      // Clear all previous alarms before setting new ones for the next day
      await _alarmService.clearAllAlarms();
      return getNextDaySchedule();
    }

    return schedule;
  }

  bool _haveAllPrayersPassed(List<PrayerTime> schedule) {
    if (schedule.isEmpty) return true;

    final now = TimeOfDay.now();
    final currentMinutes = now.hour * 60 + now.minute;

    // Get the last prayer time of the day
    final lastPrayer = schedule.last;
    final lastPrayerMinutes =
        lastPrayer.time.hour * 60 + lastPrayer.time.minute;

    return currentMinutes > lastPrayerMinutes;
  }
}
