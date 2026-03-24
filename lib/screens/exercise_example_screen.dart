import 'package:flutter/material.dart';
import '../models/exercise.dart';
import '../widgets/app_scaffold.dart';

class ExerciseExampleScreen extends StatelessWidget {
  final Exercise selectedInstructorExercise; // Data recieved from instructor screen when exercise button is pressed

  const ExerciseExampleScreen({super.key, required this.selectedInstructorExercise});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      appBar: AppBar(title: Text(selectedInstructorExercise.name), centerTitle: true),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Exercise name (uses theme.headlineLarge)
            Text(
              selectedInstructorExercise.name,
              style: Theme.of(context).textTheme.headlineLarge,
            ),

            const SizedBox(height: 16),

            // Exercise image (uses the image path from the exercise data)
            Image.asset(selectedInstructorExercise.image, height: 250),

            const SizedBox(height: 16),

            // Exercise description (uses theme.bodyMedium)
            Text(
              selectedInstructorExercise.description,
              style: Theme.of(context).textTheme.bodyMedium,
              textAlign: TextAlign.center,
            ),

            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Go back'),
            ),
          ],
        ),
      ),
    );
  }
}
