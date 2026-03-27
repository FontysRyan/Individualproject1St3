import 'package:flutter/material.dart';
// import '../screens/instructor_screen.dart'; // not needed anymore
import '../widgets/stroop_card.dart'; // StroopCard handles all Stroop logic and display

class ColorCardScreen extends StatelessWidget {
  // Only the background color is needed here — not the whole Exercise
  // card text will be handled by the stroop_card.dart widget, which is his own state.
  // Seprating background color (this here) and text color/word (stroop_card.dart)
  final Color cardColorReceivedFromExerciseExampleScreen;

  const ColorCardScreen({
    super.key,
    required this.cardColorReceivedFromExerciseExampleScreen,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // The background color is the exercise's card color (set in exercise_data.dart)
      backgroundColor: cardColorReceivedFromExerciseExampleScreen,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [


            // StroopCard is fully self-contained:
            // it manages its own state and handles taps internally
            const StroopCard(),

            const SizedBox(height: 24),
            
            // You want to see the full color card.
            // ElevatedButton(
            //   onPressed: () {
            //     // Returns the instructor to their screen to pick the next exercise
            //     Navigator.push(
            //       context,
            //       MaterialPageRoute(
            //         builder: (context) => const InstructorScreen(),
            //       ),
            //     );
            //   },
            //   child: const Text('Return to instructor screen'),
            // ),
          ],
        ),
      ),
    );
  }
}
