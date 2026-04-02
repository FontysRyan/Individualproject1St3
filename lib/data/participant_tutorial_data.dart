import '../models/participant_tutorial.dart'; // using model to see data format and type to fill in.

final List<Participanttutorial> tutorialSteps = [ // name is really important, it is used in the participant_tutorial_screen.dart to create the cards for the tutorial.
  Participanttutorial(
    title: 'Step 1',
    image: 'assets/images/step 1 image.png',
    description: 'Locate the poster and read the instructions on the poster before starting the exercise.',
  ),
  Participanttutorial(
    title: 'Step 2',
    image: 'assets/images/step 2 image.png',
    description: 'Locate the instructor and get ready to do the exercises based on the colorcard that they show you to you using there phone.',
  ),
  Participanttutorial(
    title: 'Step 3',
    image: 'assets/images/squat.png',
    description: 'Keep up with the instructor and have fun!',
  ),
];