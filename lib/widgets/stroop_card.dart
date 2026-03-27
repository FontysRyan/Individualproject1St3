import 'package:flutter/material.dart';
import 'dart:math';

// ---------------------------------------------------------------------------
// StroopColor, StroopItem, StroopCard — the core logic and display for the Stroop exercise.
// The parent screen controls when a new item appears by rebuilding this widget.
// ---------------------------------------------------------------------------

enum StroopColor { red, blue, green, yellow }

class StroopItem { // container — holds one word + one ink color together
  final StroopColor word;      // The color word displayed as text
  final StroopColor textColor; // The actual ink color the word is drawn in

  StroopItem({required this.word, required this.textColor});
}

// StroopCard: generates and displays one StroopItem per build.
// Stateless — the parent rebuilds this widget whenever a new item is needed.
class StroopCard extends StatelessWidget {
  const StroopCard({super.key});

  // Generates one StroopItem each time the widget is built.
  // 90% chance: word and ink color match (easier).
  // 10% chance: word and ink color differ (the Stroop challenge).
  StroopItem _generateStroopItem() {
    final Random random = Random();
    final StroopColor word = StroopColor.values[random.nextInt(4)];
    final bool mismatch = random.nextDouble() < 0.1; // 10% mismatch chance

    if (!mismatch) { // word and ink color are the same
    print("No missmatch triggered. Color stay the same as the word itself {word: $word, textColor: $word}");
      return StroopItem(word: word, textColor: word);
    }

    // Mismatch: pick an ink color that is different from the word
    StroopColor inkColor;
    do {
      inkColor = StroopColor.values[random.nextInt(4)];
    } while (inkColor == word);

    return StroopItem(word: word, textColor: inkColor);
  }

  // Converts a StroopColor enum value to its display label (e.g. "RED")
  String _getColorLabel(StroopColor color) => color.name.toUpperCase();

  // Converts a StroopColor value to a Flutter Color for rendering
  Color _getFlutterColor(StroopColor color) {
    switch (color) {
      case StroopColor.red:    return const Color.fromARGB(255, 176, 12, 0);
      case StroopColor.blue:   return const Color.fromARGB(255, 0, 87, 158);
      case StroopColor.green:  return const Color.fromARGB(255, 0, 160, 5);
      case StroopColor.yellow: return const Color.fromARGB(255, 255, 236, 62);
    }
  }

  @override
  Widget build(BuildContext context) {
    final StroopItem item = _generateStroopItem(); // one item generated per build
    return Text(
      _getColorLabel(item.word),       // shows the WORD (e.g. "RED")
      style: TextStyle(
        fontSize: 48,
        fontWeight: FontWeight.bold,
        color: _getFlutterColor(item.textColor), // drawn in the INK COLOR (may differ from word)
      ),
    );
  }
}