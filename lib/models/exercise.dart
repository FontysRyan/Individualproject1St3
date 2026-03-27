import 'package:flutter/material.dart';

class Exercise {
  final String name;
  final String description;
  final String image;
  final Color cardColor; // Added in model to store the card background color. As this should STAY the same.

  Exercise({
    required this.name,
    required this.description,
    required this.image,
    required this.cardColor,
  });
}