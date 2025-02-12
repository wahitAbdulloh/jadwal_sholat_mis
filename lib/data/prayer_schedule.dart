import 'package:flutter/material.dart';
import '../models/prayer_time.dart';

final Map<DateTime, List<PrayerTime>> prayerSchedule = {
  DateTime(2025, 2, 1): [
    const PrayerTime(
      name: 'Imsak',
      time: TimeOfDay(hour: 4, minute: 0),
      type: PrayerType.sunnah,
    ),
    const PrayerTime(
      name: 'Subuh',
      time: TimeOfDay(hour: 4, minute: 10),
      type: PrayerType.wajib,
    ),
    const PrayerTime(
      name: 'Dhuha',
      time: TimeOfDay(hour: 5, minute: 54),
      type: PrayerType.sunnah,
    ),
    const PrayerTime(
      name: 'Dzuhur',
      time: TimeOfDay(hour: 11, minute: 47),
      type: PrayerType.wajib,
    ),
    const PrayerTime(
      name: 'Ashar',
      time: TimeOfDay(hour: 15, minute: 3),
      type: PrayerType.wajib,
    ),
    const PrayerTime(
      name: 'Maghrib',
      time: TimeOfDay(hour: 17, minute: 56),
      type: PrayerType.wajib,
    ),
    const PrayerTime(
      name: 'Isya',
      time: TimeOfDay(hour: 19, minute: 9),
      type: PrayerType.wajib,
    ),
  ],
  DateTime(2025, 2, 2): [
    const PrayerTime(
      name: 'Imsak',
      time: TimeOfDay(hour: 4, minute: 0),
      type: PrayerType.sunnah,
    ),
    const PrayerTime(
      name: 'Subuh',
      time: TimeOfDay(hour: 4, minute: 10),
      type: PrayerType.wajib,
    ),
    const PrayerTime(
      name: 'Dhuha',
      time: TimeOfDay(hour: 5, minute: 54),
      type: PrayerType.sunnah,
    ),
    const PrayerTime(
      name: 'Dzuhur',
      time: TimeOfDay(hour: 11, minute: 47),
      type: PrayerType.wajib,
    ),
    const PrayerTime(
      name: 'Ashar',
      time: TimeOfDay(hour: 15, minute: 3),
      type: PrayerType.wajib,
    ),
    const PrayerTime(
      name: 'Maghrib',
      time: TimeOfDay(hour: 17, minute: 56),
      type: PrayerType.wajib,
    ),
    const PrayerTime(
      name: 'Isya',
      time: TimeOfDay(hour: 19, minute: 9),
      type: PrayerType.wajib,
    ),
  ],
  DateTime(2025, 2, 3): [
    const PrayerTime(
      name: 'Imsak',
      time: TimeOfDay(hour: 4, minute: 1),
      type: PrayerType.sunnah,
    ),
    const PrayerTime(
      name: 'Subuh',
      time: TimeOfDay(hour: 4, minute: 11),
      type: PrayerType.wajib,
    ),
    const PrayerTime(
      name: 'Dhuha',
      time: TimeOfDay(hour: 5, minute: 54),
      type: PrayerType.sunnah,
    ),
    const PrayerTime(
      name: 'Dzuhur',
      time: TimeOfDay(hour: 11, minute: 47),
      type: PrayerType.wajib,
    ),
    const PrayerTime(
      name: 'Ashar',
      time: TimeOfDay(hour: 15, minute: 2),
      type: PrayerType.wajib,
    ),
    const PrayerTime(
      name: 'Maghrib',
      time: TimeOfDay(hour: 17, minute: 56),
      type: PrayerType.wajib,
    ),
    const PrayerTime(
      name: 'Isya',
      time: TimeOfDay(hour: 19, minute: 9),
      type: PrayerType.wajib,
    ),
  ],
  DateTime(2025, 2, 4): [
    const PrayerTime(
      name: 'Imsak',
      time: TimeOfDay(hour: 4, minute: 1),
      type: PrayerType.sunnah,
    ),
    const PrayerTime(
      name: 'Subuh',
      time: TimeOfDay(hour: 4, minute: 11),
      type: PrayerType.wajib,
    ),
    const PrayerTime(
      name: 'Dhuha',
      time: TimeOfDay(hour: 5, minute: 55),
      type: PrayerType.sunnah,
    ),
    const PrayerTime(
      name: 'Dzuhur',
      time: TimeOfDay(hour: 11, minute: 47),
      type: PrayerType.wajib,
    ),
    const PrayerTime(
      name: 'Ashar',
      time: TimeOfDay(hour: 15, minute: 2),
      type: PrayerType.wajib,
    ),
    const PrayerTime(
      name: 'Maghrib',
      time: TimeOfDay(hour: 17, minute: 56),
      type: PrayerType.wajib,
    ),
    const PrayerTime(
      name: 'Isya',
      time: TimeOfDay(hour: 19, minute: 8),
      type: PrayerType.wajib,
    ),
  ],
  DateTime(2025, 2, 5): [
    const PrayerTime(
      name: 'Imsak',
      time: TimeOfDay(hour: 4, minute: 1),
      type: PrayerType.sunnah,
    ),
    const PrayerTime(
      name: 'Subuh',
      time: TimeOfDay(hour: 4, minute: 11),
      type: PrayerType.wajib,
    ),
    const PrayerTime(
      name: 'Dhuha',
      time: TimeOfDay(hour: 5, minute: 55),
      type: PrayerType.sunnah,
    ),
    const PrayerTime(
      name: 'Dzuhur',
      time: TimeOfDay(hour: 11, minute: 47),
      type: PrayerType.wajib,
    ),
    const PrayerTime(
      name: 'Ashar',
      time: TimeOfDay(hour: 15, minute: 2),
      type: PrayerType.wajib,
    ),
    const PrayerTime(
      name: 'Maghrib',
      time: TimeOfDay(hour: 17, minute: 56),
      type: PrayerType.wajib,
    ),
    const PrayerTime(
      name: 'Isya',
      time: TimeOfDay(hour: 19, minute: 8),
      type: PrayerType.wajib,
    ),
  ],
  DateTime(2025, 2, 6): [
    const PrayerTime(
      name: 'Imsak',
      time: TimeOfDay(hour: 4, minute: 2),
      type: PrayerType.sunnah,
    ),
    const PrayerTime(
      name: 'Subuh',
      time: TimeOfDay(hour: 4, minute: 12),
      type: PrayerType.wajib,
    ),
    const PrayerTime(
      name: 'Dhuha',
      time: TimeOfDay(hour: 5, minute: 55),
      type: PrayerType.sunnah,
    ),
    const PrayerTime(
      name: 'Dzuhur',
      time: TimeOfDay(hour: 11, minute: 47),
      type: PrayerType.wajib,
    ),
    const PrayerTime(
      name: 'Ashar',
      time: TimeOfDay(hour: 15, minute: 1),
      type: PrayerType.wajib,
    ),
    const PrayerTime(
      name: 'Maghrib',
      time: TimeOfDay(hour: 17, minute: 56),
      type: PrayerType.wajib,
    ),
    const PrayerTime(
      name: 'Isya',
      time: TimeOfDay(hour: 19, minute: 8),
      type: PrayerType.wajib,
    ),
  ],
  DateTime(2025, 2, 7): [
    const PrayerTime(
      name: 'Imsak',
      time: TimeOfDay(hour: 4, minute: 2),
      type: PrayerType.sunnah,
    ),
    const PrayerTime(
      name: 'Subuh',
      time: TimeOfDay(hour: 4, minute: 12),
      type: PrayerType.wajib,
    ),
    const PrayerTime(
      name: 'Dhuha',
      time: TimeOfDay(hour: 5, minute: 55),
      type: PrayerType.sunnah,
    ),
    const PrayerTime(
      name: 'Dzuhur',
      time: TimeOfDay(hour: 11, minute: 47),
      type: PrayerType.wajib,
    ),
    const PrayerTime(
      name: 'Ashar',
      time: TimeOfDay(hour: 15, minute: 1),
      type: PrayerType.wajib,
    ),
    const PrayerTime(
      name: 'Maghrib',
      time: TimeOfDay(hour: 17, minute: 56),
      type: PrayerType.wajib,
    ),
    const PrayerTime(
      name: 'Isya',
      time: TimeOfDay(hour: 19, minute: 8),
      type: PrayerType.wajib,
    ),
  ],
  DateTime(2025, 2, 8): [
    const PrayerTime(
      name: 'Imsak',
      time: TimeOfDay(hour: 4, minute: 2),
      type: PrayerType.sunnah,
    ),
    const PrayerTime(
      name: 'Subuh',
      time: TimeOfDay(hour: 4, minute: 13),
      type: PrayerType.wajib,
    ),
    const PrayerTime(
      name: 'Dhuha',
      time: TimeOfDay(hour: 5, minute: 55),
      type: PrayerType.sunnah,
    ),
    const PrayerTime(
      name: 'Dzuhur',
      time: TimeOfDay(hour: 11, minute: 47),
      type: PrayerType.wajib,
    ),
    const PrayerTime(
      name: 'Ashar',
      time: TimeOfDay(hour: 15, minute: 0),
      type: PrayerType.wajib,
    ),
    const PrayerTime(
      name: 'Maghrib',
      time: TimeOfDay(hour: 17, minute: 56),
      type: PrayerType.wajib,
    ),
    const PrayerTime(
      name: 'Isya',
      time: TimeOfDay(hour: 19, minute: 7),
      type: PrayerType.wajib,
    ),
  ],
  DateTime(2025, 2, 9): [
    const PrayerTime(
      name: 'Imsak',
      time: TimeOfDay(hour: 4, minute: 3),
      type: PrayerType.sunnah,
    ),
    const PrayerTime(
      name: 'Subuh',
      time: TimeOfDay(hour: 4, minute: 13),
      type: PrayerType.wajib,
    ),
    const PrayerTime(
      name: 'Dhuha',
      time: TimeOfDay(hour: 5, minute: 56),
      type: PrayerType.sunnah,
    ),
    const PrayerTime(
      name: 'Dzuhur',
      time: TimeOfDay(hour: 11, minute: 47),
      type: PrayerType.wajib,
    ),
    const PrayerTime(
      name: 'Ashar',
      time: TimeOfDay(hour: 15, minute: 0),
      type: PrayerType.wajib,
    ),
    const PrayerTime(
      name: 'Maghrib',
      time: TimeOfDay(hour: 17, minute: 56),
      type: PrayerType.wajib,
    ),
    const PrayerTime(
      name: 'Isya',
      time: TimeOfDay(hour: 19, minute: 7),
      type: PrayerType.wajib,
    ),
  ],
  DateTime(2025, 2, 10): [
    const PrayerTime(
      name: 'Imsak',
      time: TimeOfDay(hour: 4, minute: 3),
      type: PrayerType.sunnah,
    ),
    const PrayerTime(
      name: 'Subuh',
      time: TimeOfDay(hour: 4, minute: 13),
      type: PrayerType.wajib,
    ),
    const PrayerTime(
      name: 'Dhuha',
      time: TimeOfDay(hour: 5, minute: 56),
      type: PrayerType.sunnah,
    ),
    const PrayerTime(
      name: 'Dzuhur',
      time: TimeOfDay(hour: 11, minute: 47),
      type: PrayerType.wajib,
    ),
    const PrayerTime(
      name: 'Ashar',
      time: TimeOfDay(hour: 15, minute: 0),
      type: PrayerType.wajib,
    ),
    const PrayerTime(
      name: 'Maghrib',
      time: TimeOfDay(hour: 17, minute: 55),
      type: PrayerType.wajib,
    ),
    const PrayerTime(
      name: 'Isya',
      time: TimeOfDay(hour: 19, minute: 7),
      type: PrayerType.wajib,
    ),
  ],
  DateTime(2025, 2, 11): [
    const PrayerTime(
      name: 'Imsak',
      time: TimeOfDay(hour: 0, minute: 3),
      type: PrayerType.sunnah,
    ),
    const PrayerTime(
      name: 'Subuh',
      time: TimeOfDay(hour: 4, minute: 14),
      type: PrayerType.wajib,
    ),
    const PrayerTime(
      name: 'Dhuha',
      time: TimeOfDay(hour: 5, minute: 56),
      type: PrayerType.sunnah,
    ),
    const PrayerTime(
      name: 'Dzuhur',
      time: TimeOfDay(hour: 11, minute: 47),
      type: PrayerType.wajib,
    ),
    const PrayerTime(
      name: 'Ashar',
      time: TimeOfDay(hour: 14, minute: 59),
      type: PrayerType.wajib,
    ),
    const PrayerTime(
      name: 'Maghrib',
      time: TimeOfDay(hour: 17, minute: 55),
      type: PrayerType.wajib,
    ),
    const PrayerTime(
      name: 'Isya',
      time: TimeOfDay(hour: 19, minute: 7),
      type: PrayerType.wajib,
    ),
  ],
  DateTime(2025, 2, 12): [
    const PrayerTime(
      name: 'Imsak',
      time: TimeOfDay(hour: 4, minute: 4),
      type: PrayerType.sunnah,
    ),
    const PrayerTime(
      name: 'Subuh',
      time: TimeOfDay(hour: 4, minute: 14),
      type: PrayerType.wajib,
    ),
    const PrayerTime(
      name: 'Dhuha',
      time: TimeOfDay(hour: 5, minute: 56),
      type: PrayerType.sunnah,
    ),
    const PrayerTime(
      name: 'Dzuhur',
      time: TimeOfDay(hour: 11, minute: 47),
      type: PrayerType.wajib,
    ),
    const PrayerTime(
      name: 'Ashar',
      time: TimeOfDay(hour: 14, minute: 58),
      type: PrayerType.wajib,
    ),
    const PrayerTime(
      name: 'Maghrib',
      time: TimeOfDay(hour: 17, minute: 55),
      type: PrayerType.wajib,
    ),
    const PrayerTime(
      name: 'Isya',
      time: TimeOfDay(hour: 19, minute: 6),
      type: PrayerType.wajib,
    ),
  ],
  DateTime(2025, 2, 13): [
    const PrayerTime(
      name: 'Imsak',
      time: TimeOfDay(hour: 4, minute: 4),
      type: PrayerType.sunnah,
    ),
    const PrayerTime(
      name: 'Subuh',
      time: TimeOfDay(hour: 4, minute: 14),
      type: PrayerType.wajib,
    ),
    const PrayerTime(
      name: 'Dhuha',
      time: TimeOfDay(hour: 5, minute: 56),
      type: PrayerType.sunnah,
    ),
    const PrayerTime(
      name: 'Dzuhur',
      time: TimeOfDay(hour: 11, minute: 47),
      type: PrayerType.wajib,
    ),
    const PrayerTime(
      name: 'Ashar',
      time: TimeOfDay(hour: 14, minute: 58),
      type: PrayerType.wajib,
    ),
    const PrayerTime(
      name: 'Maghrib',
      time: TimeOfDay(hour: 17, minute: 55),
      type: PrayerType.wajib,
    ),
    const PrayerTime(
      name: 'Isya',
      time: TimeOfDay(hour: 19, minute: 6),
      type: PrayerType.wajib,
    ),
  ],
  DateTime(2025, 2, 14): [
    const PrayerTime(
      name: 'Imsak',
      time: TimeOfDay(hour: 4, minute: 4),
      type: PrayerType.sunnah,
    ),
    const PrayerTime(
      name: 'Subuh',
      time: TimeOfDay(hour: 4, minute: 14),
      type: PrayerType.wajib,
    ),
    const PrayerTime(
      name: 'Dhuha',
      time: TimeOfDay(hour: 5, minute: 56),
      type: PrayerType.sunnah,
    ),
    const PrayerTime(
      name: 'Dzuhur',
      time: TimeOfDay(hour: 11, minute: 47),
      type: PrayerType.wajib,
    ),
    const PrayerTime(
      name: 'Ashar',
      time: TimeOfDay(hour: 14, minute: 57),
      type: PrayerType.wajib,
    ),
    const PrayerTime(
      name: 'Maghrib',
      time: TimeOfDay(hour: 17, minute: 55),
      type: PrayerType.wajib,
    ),
    const PrayerTime(
      name: 'Isya',
      time: TimeOfDay(hour: 19, minute: 6),
      type: PrayerType.wajib,
    ),
  ],
  DateTime(2025, 2, 15): [
    const PrayerTime(
      name: 'Imsak',
      time: TimeOfDay(hour: 4, minute: 5),
      type: PrayerType.sunnah,
    ),
    const PrayerTime(
      name: 'Subuh',
      time: TimeOfDay(hour: 4, minute: 15),
      type: PrayerType.wajib,
    ),
    const PrayerTime(
      name: 'Dhuha',
      time: TimeOfDay(hour: 5, minute: 56),
      type: PrayerType.sunnah,
    ),
    const PrayerTime(
      name: 'Dzuhur',
      time: TimeOfDay(hour: 11, minute: 47),
      type: PrayerType.wajib,
    ),
    const PrayerTime(
      name: 'Ashar',
      time: TimeOfDay(hour: 14, minute: 57),
      type: PrayerType.wajib,
    ),
    const PrayerTime(
      name: 'Maghrib',
      time: TimeOfDay(hour: 17, minute: 54),
      type: PrayerType.wajib,
    ),
    const PrayerTime(
      name: 'Isya',
      time: TimeOfDay(hour: 19, minute: 5),
      type: PrayerType.wajib,
    ),
  ],
};
