import '../models/participant_tutorial.dart'; // using model to see data format and type to fill in.

final List<Participanttutorial> tutorialSteps = [
  // name is really important, it is used in the participant_tutorial_screen.dart to create the cards for the tutorial.
  Participanttutorial(
    title: 'Step 1',
    image: 'assets/images/step 1 image.png',
    description:
        'Locate the poster and read the instructions on the poster before starting the exercise.',
  ),
  Participanttutorial(
    title: 'Step 2',
    image: 'assets/images/step 2 image.png',
    description:
        'Locate the instructor and get ready to do the exercises based on the colorcard that they show you to you using there phone.',
  ),
  Participanttutorial(
    title: 'Step 3',
    image: 'assets/images/step 3 image.png',
    description:
        'Do not get fooled by the text on the phone, focus on the background color of what the phone shows.',
  ),
  Participanttutorial(
    title: 'Step 4',
    image: 'assets/images/step 4 image.png',
    description:
        'Do the right exercise based on the colorcard that the instructor shows you.',
  ),
    Participanttutorial(
    title: 'Step 5',
    image: 'assets/images/step 5 image.png',
    description:
        'Repeat this progress until you lose by doing wrong exercises or win. Have fun and good luck!',
  ),
];
