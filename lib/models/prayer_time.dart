import 'package:flutter/material.dart';

enum PrayerType {
  wajib, // For obligatory prayers
  sunnah, // For optional prayers
}

class PrayerTime {
  final String name;
  final TimeOfDay time;
  final PrayerType type;

  const PrayerTime({
    required this.name,
    required this.time,
    required this.type,
  });

  bool get requiresAdzanIqomah => type == PrayerType.wajib;
}
