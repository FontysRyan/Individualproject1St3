import 'dart:async';
import 'package:flutter/material.dart';
import 'package:animated_flip_counter/animated_flip_counter.dart';
import 'color_card_screen.dart';

class TransitionCountingScreen extends StatefulWidget {
  final Color cardColor;

  const TransitionCountingScreen({
    super.key,
    required this.cardColor,
  });

  @override
  State<TransitionCountingScreen> createState() => _TransitionCountingScreenState();
}

// our timer that counts down from 3 to 1 before showing the ColorCardScreen. It also passes the cardColor to the next screen.
class _TransitionCountingScreenState extends State<TransitionCountingScreen> {
  int _counter = 5;
  Timer? _timer;

  @override
  void initState() {
    super.initState();

    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_counter > 1) {
        setState(() {
          _counter--;
        });
      } else {
        _timer?.cancel();

        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => ColorCardScreen(
              cardColorReceivedFromExerciseExampleScreen: widget.cardColor,
            ),
          ),
        );
      }
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: AnimatedFlipCounter(
          value: _counter, // Animation triggers when this value changes
          textStyle: const TextStyle(
            fontSize: 100,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 129, 129, 129),
            shadows: [
              Shadow( 
                color: Color.fromARGB(255, 255, 255, 255),
                offset: Offset(8, 8),
                blurRadius: 8,
              ),
            ],
          ),
        ),
      ),
    );
  }
}