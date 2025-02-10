import 'package:flutter/material.dart';
import '../models/prayer_time.dart';
import '../data/prayer_schedule.dart';
import 'alarm_service.dart';

class PrayerService {
  final AlarmService _alarmService;

  PrayerService(this._alarmService);

  Future<List<PrayerTime>> getTodaySchedule() async {
    final today = DateTime.now();
    return getScheduleForDate(today);
  }

  Future<List<PrayerTime>> getScheduleForDate(DateTime date) async {
    final scheduleDate = DateTime(date.year, date.month, date.day);
    return prayerSchedule[scheduleDate] ?? [];
  }

  Future<PrayerTime?> getNextPrayer() async {
    final todaySchedule = await getTodaySchedule();
    if (todaySchedule.isEmpty) return null;

    final now = TimeOfDay.now();
    final currentMinutes = _convertToMinutes(now);

    try {
      return todaySchedule.firstWhere(
          (prayer) => _convertToMinutes(prayer.time) > currentMinutes);
    } catch (_) {
      return todaySchedule.first; // Return first prayer of next day
    }
  }

  int _convertToMinutes(TimeOfDay time) => time.hour * 60 + time.minute;

  Future<void> initializePrayerAlarms() async {
    final todaySchedule = await getTodaySchedule();
    for (var prayer in todaySchedule) {
      await _alarmService.setAlarm(prayer.time);
    }
  }
}
