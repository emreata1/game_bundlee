class Question {
  final String image;
  final Map<String, bool> options;

  Question({
    required this.image,
    required this.options,
  });

}

class QuizQuestionModel {
  final List<Question> questions;

  QuizQuestionModel({
    required this.questions,
  });

  static QuizQuestionModel chapterOne = QuizQuestionModel(
    questions: [
      Question(image: '', options: {'İstanbul': false, 'Ankara': true, 'İzmir': false, 'Adana': false}),
      Question(image: '', options: {'Türkiye': true, 'Almanya': false, 'Fransa': false, 'İngiltere': false}),
      Question(image: '', options: {'Fatih Sultan Mehmet': true, 'Abdülhamid Han': false, 'Süleyman Şah': false, 'Atatürk': false}),
      Question(image: '', options: {'29 Ekim': true, '23 Nisan': false, '19 Mayıs': false, '30 Ağustos': false}),
      Question(image: '', options: {'Mehmet': true, 'Ahmet': false, 'Ali': false, 'Hasan': false}),
      Question(image: '', options: {'İstanbul': false, 'Ankara': true, 'İzmir': false, 'Adana': false}),
      Question(image: '', options: {'Türkiye': true, 'Almanya': false, 'Fransa': false, 'İngiltere': false}),
      Question(image: '', options: {'Fatih Sultan Mehmet': true, 'Abdülhamid Han': false, 'Süleyman Şah': false, 'Atatürk': false}),
      Question(image: '', options: {'29 Ekim': true, '23 Nisan': false, '19 Mayıs': false, '30 Ağustos': false}),
      Question(image: '', options: {'Mehmet': true, 'Ahmet': false, 'Ali': false, 'Hasan': false}),
    ],
  );

  static QuizQuestionModel chapterTwo = QuizQuestionModel(
    questions: [
      Question(image: '', options: {'Ankara': true, 'İstanbul': false, 'İzmir': false, 'Adana': false}),
      Question(image: '', options: {'İngiltere': true, 'Fransa': false, 'Almanya': false, 'Türkiye': false}),
      Question(image: '', options: {'Süleyman Şah': true, 'Fatih Sultan Mehmet': false, 'Abdülhamid Han': false, 'Atatürk': false}),
      Question(image: '', options: {'19 Mayıs': true, '23 Nisan': false, '29 Ekim': false, '30 Ağustos': false}),
      Question(image: '', options: {'Hasan': true, 'Ahmet': false, 'Mehmet': false, 'Ali': false}),
      Question(image: '', options: {'İstanbul': false, 'Ankara': true, 'İzmir': false, 'Adana': false}),
      Question(image: '', options: {'Türkiye': true, 'Almanya': false, 'Fransa': false, 'İngiltere': false}),
      Question(image: '', options: {'Fatih Sultan Mehmet': true, 'Abdülhamid Han': false, 'Süleyman Şah': false, 'Atatürk': false}),
      Question(image: '', options: {'29 Ekim': true, '23 Nisan': false, '19 Mayıs': false, '30 Ağustos': false}),
      Question(image: '', options: {'Mehmet': true, 'Ahmet': false, 'Ali': false, 'Hasan': false}),
    ],
  );

  static QuizQuestionModel chapterThree = QuizQuestionModel(
    questions: [
      Question(image: '', options: {'Türkiye': true, 'Almanya': false, 'Fransa': false, 'İngiltere': false}),
      Question(image: '', options: {'İstanbul': true, 'Ankara': false, 'İzmir': false, 'Adana': false}),
      Question(image: '', options: {'Abdülhamid Han': true, 'Süleyman Şah': false, 'Fatih Sultan Mehmet': false, 'Atatürk': false}),
      Question(image: '', options: {'23 Nisan': true, '29 Ekim': false, '19 Mayıs': false, '30 Ağustos': false}),
      Question(image: '', options: {'Ahmet': true, 'Mehmet': false, 'Ali': false, 'Hasan': false}),Question(image: '', options: {'İstanbul': false, 'Ankara': true, 'İzmir': false, 'Adana': false}),
      Question(image: '', options: {'Türkiye': true, 'Almanya': false, 'Fransa': false, 'İngiltere': false}),
      Question(image: '', options: {'Fatih Sultan Mehmet': true, 'Abdülhamid Han': false, 'Süleyman Şah': false, 'Atatürk': false}),
      Question(image: '', options: {'29 Ekim': true, '23 Nisan': false, '19 Mayıs': false, '30 Ağustos': false}),
      Question(image: '', options: {'Mehmet': true, 'Ahmet': false, 'Ali': false, 'Hasan': false}),
    ],
  );

  static QuizQuestionModel chapterFour = QuizQuestionModel(
    questions: [
      Question(image: '', options: {'Sametas': true, 'Bradee': false, 'Justeein': false, 'Dwayne': false}),
      Question(image: '', options: {'İstanbulas': true, 'Ankara': false, 'İzmir': false, 'Adana': false}),
      Question(image: '', options: {'19 Mayıssss': true, '23 Nisan': false, '29 Ekim': false, '30 Ağustos': false}),
      Question(image: '', options: {'Türkiyeaaa': true, 'Almanya': false, 'Fransa': false, 'İngiltere': false}),
      Question(image: '', options: {'Atatürkaa': true, 'Fatih Sultan Mehmet': false, 'Abdülhamid Han': false, 'Süleyman Şah': false}),Question(image: '', options: {'İstanbul': false, 'Ankara': true, 'İzmir': false, 'Adana': false}),
      Question(image: '', options: {'Türkiye': true, 'Almanya': false, 'Fransa': false, 'İngiltere': false}),
      Question(image: '', options: {'Fatih Sultan Mehmet': true, 'Abdülhamid Han': false, 'Süleyman Şah': false, 'Atatürk': false}),
      Question(image: '', options: {'29 Ekim': true, '23 Nisan': false, '19 Mayıs': false, '30 Ağustos': false}),
      Question(image: '', options: {'Mehmet': true, 'Ahmet': false, 'Ali': false, 'Hasan': false}),
    ],
  );

  static QuizQuestionModel chapterFive = QuizQuestionModel(
    questions: [
      Question(image: '', options: {'Ahmet': true, 'Mehmet': false, 'Ali': false, 'Hasan': false}),
      Question(image: '', options: {'İzmir': true, 'Ankara': false, 'Adana': false, 'İstanbul': false}),
      Question(image: '', options: {'29 Ekim': true, '23 Nisan': false, '19 Mayıs': false, '30 Ağustos': false}),
      Question(image: '', options: {'Türkiye': true, 'Almanya': false, 'Fransa': false, 'İngiltere': false}),
      Question(image: '', options: {'Fatih Sultan Mehmet': true, 'Abdülhamid Han': false, 'Süleyman Şah': false, 'Atatürk': false}),
    ],
  );

  static QuizQuestionModel chapterSix = QuizQuestionModel(
    questions: [
      Question(image: '', options: {'Mehmet': true, 'Ahmet': false, 'Ali': false, 'Hasan': false}),
      Question(image: '', options: {'Ankara': true, 'İzmir': false, 'Adana': false, 'İstanbul': false}),
      Question(image: '', options: {'19 Mayıs': true, '23 Nisan': false, '29 Ekim': false, '30 Ağustos': false}),
      Question(image: '', options: {'Almanya': true, 'Türkiye': false, 'Fransa': false, 'İngiltere': false}),
      Question(image: '', options: {'Süleyman Şah': true, 'Fatih Sultan Mehmet': false, 'Abdülhamid Han': false, 'Atatürk': false}),
    ],
  );

  static QuizQuestionModel chapterSeven = QuizQuestionModel(
    questions: [
      Question(image: '', options: {'Ali': true, 'Ahmet': false, 'Mehmet': false, 'Hasan': false}),
      Question(image: '', options: {'Adana': true, 'İzmir': false, 'Ankara': false, 'İstanbul': false}),
      Question(image: '', options: {'30 Ağustos': true, '23 Nisan': false, '29 Ekim': false, '19 Mayıs': false}),
      Question(image: '', options: {'İngiltere': true, 'Fransa': false, 'Almanya': false, 'Türkiye': false}),
      Question(image: '', options: {'Abdülhamid Han': true, 'Süleyman Şah': false, 'Fatih Sultan Mehmet': false, 'Atatürk': false}),
    ],
  );

  static QuizQuestionModel chapterEight = QuizQuestionModel(
    questions: [
      Question(image: '', options: {'Sametas': true, 'Bradee': false, 'Justeein': false, 'Dwayne': false}),
      Question(image: '', options: {'İstanbulas': true, 'Ankara': false, 'İzmir': false, 'Adana': false}),
      Question(image: '', options: {'19 Mayıssss': true, '23 Nisan': false, '29 Ekim': false, '30 Ağustos': false}),
      Question(image: '', options: {'Türkiyeaaa': true, 'Almanya': false, 'Fransa': false, 'İngiltere': false}),
      Question(image: '', options: {'Atatürkaa': true, 'Fatih Sultan Mehmet': false, 'Abdülhamid Han': false, 'Süleyman Şah': false}),
    ],
  );

  static QuizQuestionModel chapterNine = QuizQuestionModel(
    questions: [
      Question(image: '', options: {'Sametas': true, 'Bradee': false, 'Justeein': false, 'Dwayne': false}),
      Question(image: '', options: {'İstanbulas': true, 'Ankara': false, 'İzmir': false, 'Adana': false}),
      Question(image: '', options: {'19 Mayıssss': true, '23 Nisan': false, '29 Ekim': false, '30 Ağustos': false}),
      Question(image: '', options: {'Türkiyeaaa': true, 'Almanya': false, 'Fransa': false, 'İngiltere': false}),
      Question(image: '', options: {'Atatürkaa': true, 'Fatih Sultan Mehmet': false, 'Abdülhamid Han': false, 'Süleyman Şah': false}),
    ],
  );
}
