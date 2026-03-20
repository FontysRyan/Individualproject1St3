import 'dart:io';

import 'package:flutter/material.dart';
import 'screens/instructor_screen.dart';
import 'screens/participant_screen.dart';
import 'theme/app_theme.dart';
import 'widgets/app_scaffold.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ExerBrain',
      theme: AppTheme.originalTheme,
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  void navigateTo(BuildContext context, Widget screen) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => screen),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      appBar: AppBar(title: const Text('ExerBrain')),
      child: Center( // Center the buttons
        child: Column( // Use a Column to stack the buttons vertically
          mainAxisSize: MainAxisSize.min, // Center the column vertically ()
          children: [ 
            Text(
              'Roles',
              style: Theme.of(context).textTheme.headlineLarge,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            // Subheader (uses theme.titleMedium)
            Text(
              'Choose a role to continue',
              style: Theme.of(context).textTheme.bodyMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24), // Add some space between the text and buttons
            
            ElevatedButton(
              onPressed: () =>
                  navigateTo(context, const InstructorScreen()),
              child: const Text('Instructor'),
            ),
            const SizedBox(height: 5),
            ElevatedButton( 
              onPressed: () =>
                  navigateTo(context, const ParticipantScreen()),
              child: const Text('Participant'),
            ),
          ],
        ),
      ),
    );
  }
}