import 'package:flutter/material.dart';
import '../widgets/app_scaffold.dart';

class ParticipantTutorialScreen extends StatelessWidget {
  const ParticipantTutorialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      appBar: AppBar(title: Text('Participant Tutorial')),

      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
           
            Text( // main header
              'Participant Tutorial',
              // No need to create a new textTheme variable from what I learned. 
              // I can just use Theme.of(context).textTheme inline to get my theme and I also imported it in the main.dart file so it should work here as well.
              style: Theme.of(context).textTheme.headlineLarge,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8), // spaces
           
            // Subheader (uses theme.bodyMedium)
            Text(
              'This is the participant tutorial screen. Follow the instructor’s color cards.',
              style: Theme.of(context).textTheme.bodyMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
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
