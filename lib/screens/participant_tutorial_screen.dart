import 'package:flutter/material.dart';
import '../widgets/tutorial_card.dart';
import '../widgets/app_scaffold.dart';
import '../data/participant_tutorial_data.dart'; // Import the tutorial data

class ParticipantTutorialScreen extends StatelessWidget {
  const ParticipantTutorialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      appBar: AppBar(title: const Text('Participant Tutorial')),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // HEADER
            Text(
              'Participant Tutorial',
              style: Theme.of(context).textTheme.headlineLarge,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),

            // SUBTEXT
            Text(
              'Follow the steps below during the exercise.',
              style: Theme.of(context).textTheme.bodyMedium,
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 20),

            // Pageview (using the tutorialSteps list from participant_tutorial_data.dart to create a card for each step)
            SizedBox(
              height: 400,
              child: PageView(
                children: tutorialSteps // our data list from participant_tutorial_data.dart, we can replace this if nessary. (dynamic data list)
                    .map((step) => TutorialCard(step: step))
                    .toList(),
              ),
            ), // 

            const SizedBox(height: 20),

            // BUTTON BACK
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
