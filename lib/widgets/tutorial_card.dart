import 'package:flutter/material.dart';
import '../models/participant_tutorial.dart';
import '../theme/app_theme.dart';

class TutorialCard extends StatelessWidget {
  final Participanttutorial step;

  const TutorialCard({super.key, required this.step}); // we pass in the step data from the participant_tutorial_data.dart to fill in the card with the correct data for each step.

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4, // nice shadow for the card
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Text(step.title),
            const SizedBox(height: 10),
            Container(
              decoration: AppTheme.tutorialImageBorder, // AppTheme.tutorialImageBorder,
              child: ClipRRect(
                borderRadius: AppTheme.tutorialBorderRadius,
                child: Image.asset(step.image),
              ),
            ),
            const SizedBox(height: 10),
            Text(step.description),
          ],
        ),
      ),
    );
  }
}