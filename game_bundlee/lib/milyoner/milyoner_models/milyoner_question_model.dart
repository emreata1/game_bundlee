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
    
  ];