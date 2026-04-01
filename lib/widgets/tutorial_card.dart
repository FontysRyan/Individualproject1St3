import 'package:flutter/material.dart';
import '../models/participant_tutorial.dart';

class TutorialCard extends StatelessWidget {
  final Participanttutorial step;

  const TutorialCard({super.key, required this.step});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Text(step.title),
            Image.asset(step.image),
            Text(step.description),
          ],
        ),
      ),
    );
  }
}