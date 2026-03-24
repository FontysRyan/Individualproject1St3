import '../models/exercise.dart';
final List<Exercise> exercises = [
  Exercise( // Create a list of exercises with their name, description, and image path, model is defined in exercise.dart file
    name: 'Squats',
    description: 'Lower your hips as if sitting in a chair, keeping your chest up and knees behind your toes. Drive through your heels to stand back up.',
    image: 'assets/images/squat.png',
        // TODO: Add fields to give the correct color card text + color card text color + color card background

  ),
  Exercise(
    name: 'Jumps',
    description: 'Stand with your feet shoulder-width apart and jump as high as you can and land back upon your feet.',
    image: 'assets/images/jump.png',
        // TODO: Add fields to give the correct color card text + color card text color + color card background

  ),
  Exercise(
    name: 'Push-ups',
    description: 'Start in a plank position with your hands shoulder-width apart. Lower your body until your chest nearly touches the ground, then push back up.  ',
    image: 'assets/images/push-up.png',
        // TODO: Add fields to give the correct color card text + color card text color + color card background

  ),
  Exercise(
    name: 'Forward lunges',
    description: 'Step forward with one foot and lower your body until both knees are bent at 90 degrees. Push off the front foot to return to the starting position.',
    image: 'assets/images/forwardLung.png',
        // TODO: Add fields to give the correct color card text + color card text color + color card background

  ),
];