import 'package:flutter/widgets.dart';

import '../models/exercise.dart';
final List<Exercise> exercises = [
  Exercise(
    name: 'Squats',
    description: 'Lower your hips as if sitting in a chair, keeping your chest up and knees behind your toes. Drive through your heels to stand back up.',
    image: 'assets/images/squat.png',
    cardColor: Color.fromARGB(255, 76, 175, 80),
  ),
  Exercise(
    name: 'Jumps',
    description: 'Stand with your feet shoulder-width apart and jump as high as you can and land back upon your feet.',
    image: 'assets/images/jump.png',
    cardColor: Color.fromARGB(255, 33, 150, 243),
  ),
  Exercise(
    name: 'Push-ups',
    description: 'Start in a plank position with your hands shoulder-width apart. Lower your body until your chest nearly touches the ground, then push back up.',
    image: 'assets/images/push-up.png',
    cardColor: Color.fromARGB(255, 255, 193, 7),
  ),
  Exercise(
    name: 'Forward lunges',
    description: 'Step forward with one foot and lower your body until both knees are bent at 90 degrees. Push off the front foot to return to the starting position.',
    image: 'assets/images/forwardLung.png',
    cardColor: Color.fromARGB(255, 244, 67, 54),
  ),
];