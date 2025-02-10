import 'package:flutter/material.dart';
import 'dart:async';

class IqomahOverlay extends StatefulWidget {
  final String currentAdzanName;
  final String formattedTime;

  const IqomahOverlay({
    super.key,
    required this.currentAdzanName,
    required this.formattedTime,
  });

  @override
  State<IqomahOverlay> createState() => _IqomahOverlayState();
}

class _IqomahOverlayState extends State<IqomahOverlay> {
  late Timer _timer;
  int _currentMessageIndex = 0;

  final List<String> _messages = [
    'Perbanyak Doa Antara Adzan dan Iqomah',
    'Doa Antara Adzan dan Iqomah Tidak Tertolak',
    'Matikan Handphone Sebelum Sholat',
    'Jangan Mendahului Gerakan Imam',
    'Rapatkan dan Luruskan Shaf untuk Kesempurnaan Sholat',
  ];

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(const Duration(minutes: 2), (timer) {
      setState(() {
        _currentMessageIndex = (_currentMessageIndex + 1) % _messages.length;
      });
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: Container(
        color: Colors.white,
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
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.center,
                      child: Text.rich(
                        TextSpan(
                          children: [
                            const TextSpan(text: 'Menjelang Iqomah '),
                            TextSpan(text: widget.currentAdzanName),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  DefaultTextStyle(
                    style: const TextStyle(
                      fontSize: 275,
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                      letterSpacing: 4,
                    ),
                    textAlign: TextAlign.center,
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(text: widget.formattedTime),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 24, vertical: 12),
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: DefaultTextStyle(
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                      child: Text(
                        _messages[_currentMessageIndex],
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
