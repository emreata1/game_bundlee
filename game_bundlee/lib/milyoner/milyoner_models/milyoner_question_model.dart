class Question {
  final String questionText;
  final List<String> options;
  final int correctOptionIndex;

  Question({required this.questionText, required this.options, required this.correctOptionIndex});
}

List<Question> questions = [
    Question(
      questionText: "Hangisi Türkiye'nin başkentidir ?",
      options: ["Ankara", "İstanbul", "İzmir", "Bursa"],
      correctOptionIndex: 0,
    ),
    Question(
      questionText: "Hangisi Türkiye'nin başkenti değildir?",
      options: ["19 mart 1532", "İstanb", "İzr", "Bsa"],
      correctOptionIndex: 0,
    ),
    Question(
      questionText: "Hangisi Türkiye'nin başkenti değildir?",
      options: ["Ankara", "İstanbul", "İzmir", "Bursa"],
      correctOptionIndex: 0,
    ),
    
  ];