class Question {
  final String questionText;
  final List<String> options;
  final int correctOptionIndex;

  Question({required this.questionText, required this.options, required this.correctOptionIndex});
}

List<Question> questions = [
    Question(
      questionText: "Hangisi Türkiye'nin başkentidir ?",
      options: ["İstanbul", "Kocaeli", "Ankara", "Bursa"],
      correctOptionIndex: 2,
    ),
    Question(
    questionText: "Türkiye'nin en yüksek dağı hangisidir?",
    options: ["Ağrı Dağı", "Uludağ", "Erciyes", "Kaçkar Dağı"],
    correctOptionIndex: 0,
  ),

    Question(
    questionText: "Hangi gezegen Güneş Sistemi'ndeki en büyük gezegendir?",
    options: ["Mars", "Jüpiter", "Venüs", "Satürn"],
    correctOptionIndex: 1,
  ),

    Question(
    questionText: "Hangi renk 'gökkuşağı'nda bulunmaz?",
    options: ["Mavi", "Kırmızı","Yeşil", "Sarı" ],
    correctOptionIndex: 3,
  ),
  Question(
      questionText: "Hangisi Türkiye'nin başkentidir ?",
      options: ["İstanbul", "Kocaeli", "Ankara", "Bursa"],
      correctOptionIndex: 2,
    ),
    Question(
    questionText: "Türkiye'nin en yüksek dağı hangisidir?",
    options: ["Ağrı Dağı", "Uludağ", "Erciyes", "Kaçkar Dağı"],
    correctOptionIndex: 0,
  ),

    Question(
    questionText: "Hangi gezegen Güneş Sistemi'ndeki en büyük gezegendir?",
    options: ["Mars", "Jüpiter", "Venüs", "Satürn"],
    correctOptionIndex: 1,
  ),

    Question(
    questionText: "Hangi renk 'gökkuşağı'nda bulunmaz?",
    options: ["Mavi", "Kırmızı","Yeşil", "Sarı" ],
    correctOptionIndex: 3,
  ),
  Question(
      questionText: "Hangisi Türkiye'nin başkentidir ?",
      options: ["İstanbul", "Kocaeli", "Ankara", "Bursa"],
      correctOptionIndex: 2,
    ),
    Question(
    questionText: "Türkiye'nin en yüksek dağı hangisidir?",
    options: ["Ağrı Dağı", "Uludağ", "Erciyes", "Kaçkar Dağı"],
    correctOptionIndex: 0,
  ),
    
  ];

  class Reward {
    final String rewardamount;
    final String optioncolor;
    Reward({required this.rewardamount, required this.optioncolor});
  }

  List<Reward> rewards=[
    Reward(rewardamount: "5.000.000", optioncolor: 'assets/milyonerassets/şıklar3.png'),
    Reward(rewardamount: "1.000.000", optioncolor: 'assets/milyonerassets/şıklar3.png'),
    Reward(rewardamount: "500.000", optioncolor: 'assets/milyonerassets/şıklar3.png'),
    Reward(rewardamount: "250.000", optioncolor: 'assets/milyonerassets/şıklar3.png'),
    Reward(rewardamount: "120.000", optioncolor: 'assets/milyonerassets/şıklar3.png'),
    Reward(rewardamount: "60.000", optioncolor: 'assets/milyonerassets/şıklar3.png'),
    Reward(rewardamount: "30.000", optioncolor: 'assets/milyonerassets/şıklar3.png'),
    Reward(rewardamount: "15.000", optioncolor: 'assets/milyonerassets/şıklar3.png'),
    Reward(rewardamount: "7.500", optioncolor: 'assets/milyonerassets/şıklar3.png'),
    Reward(rewardamount: "3.000", optioncolor: 'assets/milyonerassets/şıklar3.png')
];