import 'package:flutter/material.dart';

class AdzanOverlay extends StatelessWidget {
  final String currentAdzanName;
  final double adzanProgress;
  final DateTime currentTime;
  final Animation<double> pulseAnimation;

  const AdzanOverlay({
    super.key,
    required this.currentAdzanName,
    required this.adzanProgress,
    required this.currentTime,
    required this.pulseAnimation,
  });

  String get displayAdzanName => currentAdzanName.toLowerCase() == 'dzuhur' &&
          currentTime.weekday == DateTime.friday
      ? 'Jum\'at'
      : currentAdzanName;

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: Container(
        color: Colors.black,
        child: Center(
          child: LayoutBuilder(
            builder: (context, constraints) {
              final maxWidth = constraints.maxWidth * 0.8;
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: maxWidth,
                    child: DefaultTextStyle(
                      style: const TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                      child: Text.rich(
                        TextSpan(
                          children: [
                            const TextSpan(text: 'Saatnya Adzan '),
                            TextSpan(text: displayAdzanName),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 50),
                  SizedBox(
                    width: maxWidth,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: LinearProgressIndicator(
                        value: adzanProgress,
                        backgroundColor: Colors.grey[900],
                        valueColor:
                            const AlwaysStoppedAnimation<Color>(Colors.white),
                        minHeight: 30,
                      ),
                    ),
                  ),
                  const SizedBox(height: 50),
                  _buildTimeDisplay(),
                ],
              );
            },
          ),
        ),
      ),
    );
  }

  Widget _buildTimeDisplay() {
    return Material(
      color: Colors.transparent,
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 12,
        ),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white, width: 2),
          borderRadius: BorderRadius.circular(30),
        ),
        child: DefaultTextStyle(
          style: const TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              FadeTransition(
                opacity: pulseAnimation,
                child: const Icon(
                  Icons.access_time,
                  color: Colors.white,
                  size: 24,
                ),
              ),
              const SizedBox(width: 16),
              Text(
                '${currentTime.hour.toString().padLeft(2, '0')}:'
                '${currentTime.minute.toString().padLeft(2, '0')}',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
