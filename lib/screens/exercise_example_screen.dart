import 'package:flutter/material.dart';
import '../models/exercise.dart';
import '../widgets/app_scaffold.dart';
// import '../screens/color_card_screen.dart';
import '../screens/transition_counting_screen.dart';

class ExerciseExampleScreen extends StatelessWidget {
  // Full exercise data received from InstructorScreen
  final Exercise selectedInstructorExercise;

  const ExerciseExampleScreen({
    super.key,
    required this.selectedInstructorExercise,
  });

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      appBar: AppBar(
        title: Text(selectedInstructorExercise.name),
        centerTitle: true,
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Exercise name
            Text(
              selectedInstructorExercise.name,
              style: Theme.of(context).textTheme.headlineLarge,
            ),

            const SizedBox(height: 16),

            // Exercise image (path stored in Exercise.image)
            Image.asset(selectedInstructorExercise.image, height: 250),

            const SizedBox(height: 16),

            // Exercise description
            Text(
              selectedInstructorExercise.description,
              style: Theme.of(context).textTheme.bodyMedium,
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 24),

            ElevatedButton(
              onPressed: () {
                // Only the cardColor is passed — ColorCardScreen or transition_counting_screen doesn't need anything else
                // Why: we only want focus on background color and the StroopCard, not the name, description, or image
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TransitionCountingScreen(
                      cardColor: selectedInstructorExercise.cardColor,
                    ),
                  ),
                );
              },
              child: const Text('Show the card'),
            ),

            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Go back'),
            ),
          ],
        ),
      ),
    );
  }
}
