import 'dart:async';

import 'package:dataspin_academy/view/value/app_fonts.dart';
import 'package:flutter/material.dart';

class SecTimer extends StatefulWidget {
  const SecTimer({super.key});

  @override
  _SecTimerState createState() => _SecTimerState();
}

class _SecTimerState extends State<SecTimer> {
  int secondsRemaining = 20;
  bool timerActive = true;

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    Timer.periodic(const Duration(seconds: 1), (Timer timer) {
      if (secondsRemaining == 0) {
        setState(() {
          timerActive = false;
        });
        timer.cancel();
      } else {
        setState(() {
          secondsRemaining--;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return timerActive
        ? RichText(
            text: TextSpan(children: [
              TextSpan(
                text: "Qayta jo’natish vaqti: ",
                style: AppFonts.h4.copyWith(
                  color: Colors.black.withOpacity(0.4),
                ),
              ),
              TextSpan(
                text:
                    "00:${secondsRemaining < 10 ? "0$secondsRemaining" : secondsRemaining}",
                style: AppFonts.h4,
              ),
            ]),
          )
        : Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Kod kelmadimi? ",
                style: AppFonts.h4.copyWith(
                  color: Colors.black.withOpacity(0.4),
                ),
              ),
              InkWell(
                onTap: () {
                  startTimer();
                  timerActive = true;
                  secondsRemaining = 20;
                  setState(() {});
                },
                child: const Text(
                  "Qayta jo’natish",
                  style: AppFonts.h4,
                ),
              ),
            ],
          );
  }
}
