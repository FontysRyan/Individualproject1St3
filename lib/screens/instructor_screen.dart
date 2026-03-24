import 'package:flutter/material.dart';
import '../widgets/app_scaffold.dart';

// data and screens for exercise example
import '../data/exercise_data.dart';
import '../screens/exercise_example_screen.dart'; // data be send to this page when exercise button is pressed

class InstructorScreen extends StatelessWidget {
  const InstructorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      appBar: AppBar(title: const Text('Instructor'), centerTitle: true),
      child: Center(
        child: Column(
  mainAxisSize: MainAxisSize.min,
  children: [
    Text(
      'Instructor Screen',
      style: Theme.of(context).textTheme.headlineLarge,
    ),
    const SizedBox(height: 8),

    Text(
      'Choose your exercise',
      style: Theme.of(context).textTheme.bodyMedium,
    ),
    const SizedBox(height: 24),

    ...exercises.map((exerciseData) { // Loop through the exercise list and create a button for each exercise in the exercise_data.dart file
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 4),
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    ExerciseExampleScreen(selectedInstructorExercise: exerciseData), // Pass the selected exercise data to the ExerciseExampleScreen
              ),
            );
          },
          child: Text(exerciseData.name),
        ),
      );
    }).toList(),

    ElevatedButton(
      onPressed: () {
        Navigator.pop(context);
      },
      child: const Text('Go back'),
    ),
  ],
)
      ),
    );
  }
}
