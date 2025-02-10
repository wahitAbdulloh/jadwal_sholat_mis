import 'package:flutter/material.dart';
import '../models/prayer_time.dart';

final Map<DateTime, List<PrayerTime>> prayerSchedule = {
  DateTime(2025, 2, 1): [
    PrayerTime(name: 'Subuh', time: const TimeOfDay(hour: 4, minute: 10)),
    PrayerTime(name: 'Dzuhur', time: const TimeOfDay(hour: 11, minute: 47)),
    PrayerTime(name: 'Ashar', time: const TimeOfDay(hour: 15, minute: 03)),
    PrayerTime(name: 'Maghrib', time: const TimeOfDay(hour: 17, minute: 56)),
    PrayerTime(name: 'Isya', time: const TimeOfDay(hour: 19, minute: 09)),
  ],
  DateTime(2025, 2, 2): [
    PrayerTime(name: 'Subuh', time: const TimeOfDay(hour: 4, minute: 10)),
    PrayerTime(name: 'Dzuhur', time: const TimeOfDay(hour: 11, minute: 47)),
    PrayerTime(name: 'Ashar', time: const TimeOfDay(hour: 15, minute: 03)),
    PrayerTime(name: 'Maghrib', time: const TimeOfDay(hour: 17, minute: 56)),
    PrayerTime(name: 'Isya', time: const TimeOfDay(hour: 19, minute: 09)),
  ],
  DateTime(2025, 2, 3): [
    PrayerTime(name: 'Subuh', time: const TimeOfDay(hour: 4, minute: 11)),
    PrayerTime(name: 'Dzuhur', time: const TimeOfDay(hour: 11, minute: 47)),
    PrayerTime(name: 'Ashar', time: const TimeOfDay(hour: 15, minute: 02)),
    PrayerTime(name: 'Maghrib', time: const TimeOfDay(hour: 17, minute: 56)),
    PrayerTime(name: 'Isya', time: const TimeOfDay(hour: 19, minute: 09)),
  ],
  DateTime(2025, 2, 4): [
    PrayerTime(name: 'Subuh', time: const TimeOfDay(hour: 4, minute: 11)),
    PrayerTime(name: 'Dzuhur', time: const TimeOfDay(hour: 11, minute: 47)),
    PrayerTime(name: 'Ashar', time: const TimeOfDay(hour: 15, minute: 02)),
    PrayerTime(name: 'Maghrib', time: const TimeOfDay(hour: 17, minute: 56)),
    PrayerTime(name: 'Isya', time: const TimeOfDay(hour: 19, minute: 08)),
  ],
  DateTime(2025, 2, 5): [
    PrayerTime(name: 'Subuh', time: const TimeOfDay(hour: 4, minute: 11)),
    PrayerTime(name: 'Dzuhur', time: const TimeOfDay(hour: 11, minute: 47)),
    PrayerTime(name: 'Ashar', time: const TimeOfDay(hour: 15, minute: 02)),
    PrayerTime(name: 'Maghrib', time: const TimeOfDay(hour: 17, minute: 56)),
    PrayerTime(name: 'Isya', time: const TimeOfDay(hour: 19, minute: 08)),
  ],
  DateTime(2025, 2, 6): [
    PrayerTime(name: 'Subuh', time: const TimeOfDay(hour: 4, minute: 12)),
    PrayerTime(name: 'Dzuhur', time: const TimeOfDay(hour: 11, minute: 47)),
    PrayerTime(name: 'Ashar', time: const TimeOfDay(hour: 15, minute: 01)),
    PrayerTime(name: 'Maghrib', time: const TimeOfDay(hour: 17, minute: 56)),
    PrayerTime(name: 'Isya', time: const TimeOfDay(hour: 19, minute: 08)),
  ],
  DateTime(2025, 2, 7): [
    PrayerTime(name: 'Subuh', time: const TimeOfDay(hour: 4, minute: 12)),
    PrayerTime(name: 'Dzuhur', time: const TimeOfDay(hour: 11, minute: 47)),
    PrayerTime(name: 'Ashar', time: const TimeOfDay(hour: 15, minute: 01)),
    PrayerTime(name: 'Maghrib', time: const TimeOfDay(hour: 17, minute: 56)),
    PrayerTime(name: 'Isya', time: const TimeOfDay(hour: 19, minute: 08)),
  ],
  DateTime(2025, 2, 8): [
    PrayerTime(name: 'Subuh', time: const TimeOfDay(hour: 4, minute: 13)),
    PrayerTime(name: 'Dzuhur', time: const TimeOfDay(hour: 11, minute: 47)),
    PrayerTime(name: 'Ashar', time: const TimeOfDay(hour: 15, minute: 00)),
    PrayerTime(name: 'Maghrib', time: const TimeOfDay(hour: 17, minute: 56)),
    PrayerTime(name: 'Isya', time: const TimeOfDay(hour: 19, minute: 07)),
  ],
  DateTime(2025, 2, 9): [
    PrayerTime(name: 'Subuh', time: const TimeOfDay(hour: 4, minute: 13)),
    PrayerTime(name: 'Dzuhur', time: const TimeOfDay(hour: 11, minute: 47)),
    PrayerTime(name: 'Ashar', time: const TimeOfDay(hour: 15, minute: 00)),
    PrayerTime(name: 'Maghrib', time: const TimeOfDay(hour: 17, minute: 56)),
    PrayerTime(name: 'Isya', time: const TimeOfDay(hour: 19, minute: 07)),
  ],
  DateTime(2025, 2, 10): [
    PrayerTime(name: 'Subuh', time: const TimeOfDay(hour: 4, minute: 13)),
    PrayerTime(name: 'Dzuhur', time: const TimeOfDay(hour: 11, minute: 56)),
    PrayerTime(name: 'Ashar', time: const TimeOfDay(hour: 15, minute: 24)),
    PrayerTime(name: 'Maghrib', time: const TimeOfDay(hour: 17, minute: 55)),
    PrayerTime(name: 'Isya', time: const TimeOfDay(hour: 19, minute: 07)),
  ],
  DateTime(2025, 2, 11): [
    PrayerTime(name: 'Subuh', time: const TimeOfDay(hour: 4, minute: 14)),
    PrayerTime(name: 'Dzuhur', time: const TimeOfDay(hour: 11, minute: 47)),
    PrayerTime(name: 'Ashar', time: const TimeOfDay(hour: 14, minute: 59)),
    PrayerTime(name: 'Maghrib', time: const TimeOfDay(hour: 17, minute: 55)),
    PrayerTime(name: 'Isya', time: const TimeOfDay(hour: 19, minute: 07)),
  ],
  DateTime(2025, 2, 12): [
    PrayerTime(name: 'Subuh', time: const TimeOfDay(hour: 4, minute: 14)),
    PrayerTime(name: 'Dzuhur', time: const TimeOfDay(hour: 11, minute: 47)),
    PrayerTime(name: 'Ashar', time: const TimeOfDay(hour: 14, minute: 58)),
    PrayerTime(name: 'Maghrib', time: const TimeOfDay(hour: 17, minute: 55)),
    PrayerTime(name: 'Isya', time: const TimeOfDay(hour: 19, minute: 06)),
  ],
  DateTime(2025, 2, 13): [
    PrayerTime(name: 'Subuh', time: const TimeOfDay(hour: 4, minute: 14)),
    PrayerTime(name: 'Dzuhur', time: const TimeOfDay(hour: 11, minute: 47)),
    PrayerTime(name: 'Ashar', time: const TimeOfDay(hour: 14, minute: 58)),
    PrayerTime(name: 'Maghrib', time: const TimeOfDay(hour: 17, minute: 55)),
    PrayerTime(name: 'Isya', time: const TimeOfDay(hour: 19, minute: 06)),
  ],
  DateTime(2025, 2, 14): [
    PrayerTime(name: 'Subuh', time: const TimeOfDay(hour: 4, minute: 14)),
    PrayerTime(name: 'Dzuhur', time: const TimeOfDay(hour: 11, minute: 47)),
    PrayerTime(name: 'Ashar', time: const TimeOfDay(hour: 14, minute: 57)),
    PrayerTime(name: 'Maghrib', time: const TimeOfDay(hour: 17, minute: 55)),
    PrayerTime(name: 'Isya', time: const TimeOfDay(hour: 19, minute: 06)),
  ],
  DateTime(2025, 2, 15): [
    PrayerTime(name: 'Subuh', time: const TimeOfDay(hour: 4, minute: 15)),
    PrayerTime(name: 'Dzuhur', time: const TimeOfDay(hour: 11, minute: 47)),
    PrayerTime(name: 'Ashar', time: const TimeOfDay(hour: 14, minute: 57)),
    PrayerTime(name: 'Maghrib', time: const TimeOfDay(hour: 17, minute: 54)),
    PrayerTime(name: 'Isya', time: const TimeOfDay(hour: 19, minute: 05)),
  ],
  DateTime(2025, 2, 16): [
    PrayerTime(name: 'Subuh', time: const TimeOfDay(hour: 4, minute: 15)),
    PrayerTime(name: 'Dzuhur', time: const TimeOfDay(hour: 11, minute: 47)),
    PrayerTime(name: 'Ashar', time: const TimeOfDay(hour: 14, minute: 56)),
    PrayerTime(name: 'Maghrib', time: const TimeOfDay(hour: 17, minute: 54)),
    PrayerTime(name: 'Isya', time: const TimeOfDay(hour: 19, minute: 05)),
  ],
  DateTime(2025, 2, 17): [
    PrayerTime(name: 'Subuh', time: const TimeOfDay(hour: 4, minute: 15)),
    PrayerTime(name: 'Dzuhur', time: const TimeOfDay(hour: 11, minute: 47)),
    PrayerTime(name: 'Ashar', time: const TimeOfDay(hour: 14, minute: 55)),
    PrayerTime(name: 'Maghrib', time: const TimeOfDay(hour: 17, minute: 54)),
    PrayerTime(name: 'Isya', time: const TimeOfDay(hour: 19, minute: 05)),
  ],
  DateTime(2025, 2, 18): [
    PrayerTime(name: 'Subuh', time: const TimeOfDay(hour: 4, minute: 15)),
    PrayerTime(name: 'Dzuhur', time: const TimeOfDay(hour: 11, minute: 47)),
    PrayerTime(name: 'Ashar', time: const TimeOfDay(hour: 14, minute: 55)),
    PrayerTime(name: 'Maghrib', time: const TimeOfDay(hour: 17, minute: 54)),
    PrayerTime(name: 'Isya', time: const TimeOfDay(hour: 19, minute: 04)),
  ],
  DateTime(2025, 2, 19): [
    PrayerTime(name: 'Subuh', time: const TimeOfDay(hour: 4, minute: 16)),
    PrayerTime(name: 'Dzuhur', time: const TimeOfDay(hour: 11, minute: 47)),
    PrayerTime(name: 'Ashar', time: const TimeOfDay(hour: 14, minute: 54)),
    PrayerTime(name: 'Maghrib', time: const TimeOfDay(hour: 17, minute: 53)),
    PrayerTime(name: 'Isya', time: const TimeOfDay(hour: 19, minute: 04)),
  ],
  DateTime(2025, 2, 20): [
    PrayerTime(name: 'Subuh', time: const TimeOfDay(hour: 4, minute: 16)),
    PrayerTime(name: 'Dzuhur', time: const TimeOfDay(hour: 11, minute: 47)),
    PrayerTime(name: 'Ashar', time: const TimeOfDay(hour: 14, minute: 53)),
    PrayerTime(name: 'Maghrib', time: const TimeOfDay(hour: 17, minute: 53)),
    PrayerTime(name: 'Isya', time: const TimeOfDay(hour: 19, minute: 03)),
  ],
  DateTime(2025, 2, 21): [
    PrayerTime(name: 'Subuh', time: const TimeOfDay(hour: 4, minute: 16)),
    PrayerTime(name: 'Dzuhur', time: const TimeOfDay(hour: 11, minute: 47)),
    PrayerTime(name: 'Ashar', time: const TimeOfDay(hour: 14, minute: 52)),
    PrayerTime(name: 'Maghrib', time: const TimeOfDay(hour: 17, minute: 53)),
    PrayerTime(name: 'Isya', time: const TimeOfDay(hour: 19, minute: 03)),
  ],
  DateTime(2025, 2, 22): [
    PrayerTime(name: 'Subuh', time: const TimeOfDay(hour: 4, minute: 16)),
    PrayerTime(name: 'Dzuhur', time: const TimeOfDay(hour: 11, minute: 47)),
    PrayerTime(name: 'Ashar', time: const TimeOfDay(hour: 14, minute: 51)),
    PrayerTime(name: 'Maghrib', time: const TimeOfDay(hour: 17, minute: 52)),
    PrayerTime(name: 'Isya', time: const TimeOfDay(hour: 19, minute: 03)),
  ],
  DateTime(2025, 2, 23): [
    PrayerTime(name: 'Subuh', time: const TimeOfDay(hour: 4, minute: 16)),
    PrayerTime(name: 'Dzuhur', time: const TimeOfDay(hour: 11, minute: 46)),
    PrayerTime(name: 'Ashar', time: const TimeOfDay(hour: 14, minute: 51)),
    PrayerTime(name: 'Maghrib', time: const TimeOfDay(hour: 17, minute: 52)),
    PrayerTime(name: 'Isya', time: const TimeOfDay(hour: 19, minute: 02)),
  ],
  DateTime(2025, 2, 24): [
    PrayerTime(name: 'Subuh', time: const TimeOfDay(hour: 4, minute: 17)),
    PrayerTime(name: 'Dzuhur', time: const TimeOfDay(hour: 11, minute: 46)),
    PrayerTime(name: 'Ashar', time: const TimeOfDay(hour: 14, minute: 50)),
    PrayerTime(name: 'Maghrib', time: const TimeOfDay(hour: 17, minute: 52)),
    PrayerTime(name: 'Isya', time: const TimeOfDay(hour: 19, minute: 02)),
  ],
  DateTime(2025, 2, 25): [
    PrayerTime(name: 'Subuh', time: const TimeOfDay(hour: 4, minute: 17)),
    PrayerTime(name: 'Dzuhur', time: const TimeOfDay(hour: 11, minute: 46)),
    PrayerTime(name: 'Ashar', time: const TimeOfDay(hour: 14, minute: 49)),
    PrayerTime(name: 'Maghrib', time: const TimeOfDay(hour: 17, minute: 51)),
    PrayerTime(name: 'Isya', time: const TimeOfDay(hour: 19, minute: 01)),
  ],
  DateTime(2025, 2, 26): [
    PrayerTime(name: 'Subuh', time: const TimeOfDay(hour: 4, minute: 17)),
    PrayerTime(name: 'Dzuhur', time: const TimeOfDay(hour: 11, minute: 46)),
    PrayerTime(name: 'Ashar', time: const TimeOfDay(hour: 14, minute: 48)),
    PrayerTime(name: 'Maghrib', time: const TimeOfDay(hour: 17, minute: 51)),
    PrayerTime(name: 'Isya', time: const TimeOfDay(hour: 19, minute: 01)),
  ],
  DateTime(2025, 2, 27): [
    PrayerTime(name: 'Subuh', time: const TimeOfDay(hour: 4, minute: 17)),
    PrayerTime(name: 'Dzuhur', time: const TimeOfDay(hour: 11, minute: 46)),
    PrayerTime(name: 'Ashar', time: const TimeOfDay(hour: 14, minute: 47)),
    PrayerTime(name: 'Maghrib', time: const TimeOfDay(hour: 17, minute: 51)),
    PrayerTime(name: 'Isya', time: const TimeOfDay(hour: 19, minute: 00)),
  ],
  DateTime(2025, 2, 28): [
    PrayerTime(name: 'Subuh', time: const TimeOfDay(hour: 4, minute: 17)),
    PrayerTime(name: 'Dzuhur', time: const TimeOfDay(hour: 11, minute: 46)),
    PrayerTime(name: 'Ashar', time: const TimeOfDay(hour: 14, minute: 46)),
    PrayerTime(name: 'Maghrib', time: const TimeOfDay(hour: 17, minute: 50)),
    PrayerTime(name: 'Isya', time: const TimeOfDay(hour: 19, minute: 00)),
  ],
};
