class QuizeBrain {
  const QuizeBrain({required this.suroo, required this.joop});
  final String suroo;
  final bool joop;
}

QuizeBrain q1 =
    const QuizeBrain(suroo: 'Кыргызстанда 7 область барбы?', joop: true);
QuizeBrain q2 =
    const QuizeBrain(suroo: 'Кыргызстанда 8 область барбы?', joop: false);
QuizeBrain q3 =
    const QuizeBrain(suroo: 'Кыргызстанда 9 область барбы?', joop: false);
QuizeBrain q4 = const QuizeBrain(suroo: 'Кыргызстан тоолу өлкөбү?', joop: true);

final quizeBrainList = [q1, q2, q3, q4];

int index = 0;
