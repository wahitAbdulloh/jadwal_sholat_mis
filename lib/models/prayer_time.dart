import 'package:flutter/material.dart';

class PrayerTime {
  final String name;
  final TimeOfDay time;

  PrayerTime({
    required this.name,
    required this.time,
  });

  Map<String, dynamic> toMap() {
    return {
      'prayer_name': name,
      'hour': time.hour,
      'minute': time.minute,
    };
  }

  static PrayerTime fromMap(Map<String, dynamic> map) {
    return PrayerTime(
      name: map['prayer_name'],
      time: TimeOfDay(hour: map['hour'], minute: map['minute']),
    );
  }

  static TimeOfDay stringToTimeOfDay(String time) {
    final parts = time.split(':');
    return TimeOfDay(hour: int.parse(parts[0]), minute: int.parse(parts[1]));
  }
}
