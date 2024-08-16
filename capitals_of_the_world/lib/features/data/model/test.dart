class Test {
  Test({
    required this.capitalName,
    required this.capitalImage,
    required this.answers,
  });
  final String capitalName;
  final String capitalImage;
  final List<Answer> answers;
}

class Answer {
  final String answerText;
  final bool isTrue;
  Answer({
    required this.answerText,
    required this.isTrue,
  });
}

Test bishkek = Test(
  capitalName: 'Bishkek',
  capitalImage: 'http://st-1.akipress.org/st_limon/1/1523419800_0.jpg',
  answers: [
    Answer(answerText: 'Kazakhstan', isTrue: false),
    Answer(answerText: 'Kyrgyzstan', isTrue: true),
    Answer(answerText: 'Pakistan', isTrue: false),
    Answer(answerText: 'China', isTrue: false),
  ],
);

Test astana = Test(
  capitalName: 'Astana',
  capitalImage: 'http://st-1.akipress.org/st_limon/1/1523419800_0.jpg',
  answers: [
    Answer(answerText: 'Kazakhstan', isTrue: true),
    Answer(answerText: 'Kyrgyzstan', isTrue: false),
    Answer(answerText: 'Pakistan', isTrue: false),
    Answer(answerText: 'China', isTrue: false),
  ],
);

List<Test> testList = [
  bishkek,
  astana,
];
