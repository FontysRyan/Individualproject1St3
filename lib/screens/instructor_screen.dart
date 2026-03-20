import 'package:flutter/material.dart';
import '../widgets/app_scaffold.dart';

class InstructorScreen extends StatelessWidget {
  const InstructorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // No need to create a new textTheme variable if you want
    // you can just do Theme.of(context).textTheme inline
    return AppScaffold(
      appBar: AppBar(
        title: const Text('Instructor'),
        centerTitle: true,
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Header (uses theme.headlineLarge)
            Text(
              'Instructor Screen',
              style: Theme.of(context).textTheme.headlineLarge,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            // Subheader (uses theme.titleMedium)
            Text(
              'Choose your exercise',
              style: Theme.of(context).textTheme.bodyMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),
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