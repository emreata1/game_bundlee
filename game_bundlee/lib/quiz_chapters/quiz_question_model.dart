import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'quiz_chapter_one.dart';
import 'quiz_chapter_two.dart';
import 'quiz_chapter_three.dart';
import 'quiz_chapter_four.dart';
import 'quiz_chapter_five.dart';
import 'quiz_chapter_six.dart';
import 'quiz_chapter_seven.dart';
import 'quiz_chapter_eight.dart';
import 'quiz_chapter_nine.dart';

class Chapters {
  String chapterName;
  String image;
  Widget chapternum;
  List<IconData> logo;

  Chapters({
    required this.chapterName,
    required this.image,
    required this.chapternum,
    required this.logo,
  });

  logoOku(int chapterIndex) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  List<String>? logoData = prefs.getStringList('logo$chapterIndex');

  if (logoData != null && logoData.isNotEmpty) {
    logo = logoData
        .map((iconString) => IconData(int.parse(iconString), fontFamily: 'MaterialIcons'))
        .toList();
  } else {
    logo = [Icons.star_border, Icons.star_border, Icons.star_border];
  }
  print("$logo");
}




  logoGuncelle(int chapterIndex) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String> iconCodes = logo.map((icon) => icon.codePoint.toString()).toList();
    await prefs.setStringList('logo$chapterIndex', iconCodes);
    print("$logo");
  }

  static List<Chapters> chapter = [
    ...chapter1,
    ...chapter2,
    ...chapter3,
    ...chapter4,
    ...chapter5,
    ...chapter6,
    ...chapter7,
    ...chapter8,
    ...chapter9,
  ];

  static List<Chapters> chapter1 = [
    Chapters(chapterName: "Bölüm1",image: "",chapternum: ChapterOne(),logo: [Icons.star_border, Icons.star_border, Icons.star_border],),
  ];
  static List<Chapters> chapter2 = [
    Chapters(chapterName: "Bölüm2",image: "",chapternum: ChapterTwo(),logo: [Icons.star_border, Icons.star_border, Icons.star_border],),
  ];
  static List<Chapters> chapter3 = [
    Chapters(chapterName: "Bölüm3",image: "",chapternum: ChapterThree(),logo: [Icons.star_border, Icons.star_border, Icons.star_border],),
  ];
  static List<Chapters> chapter4 = [
    Chapters(chapterName: "Bölüm4",image: "",chapternum: ChapterFour(),logo: [Icons.star_border, Icons.star_border, Icons.star_border],),
  ];
  static List<Chapters> chapter5 = [
    Chapters(chapterName: "Bölüm5",image: "",chapternum: ChapterFive(),logo: [Icons.star_border, Icons.star_border, Icons.star_border],),
  ];
  static List<Chapters> chapter6 = [
    Chapters(chapterName: "Bölüm5",image: "",chapternum: ChapterSix(),logo: [Icons.star_border, Icons.star_border, Icons.star_border],),
  ];
  static List<Chapters> chapter7 = [
    Chapters(chapterName: "Bölüm5",image: "",chapternum: ChapterSeven(),logo: [Icons.star_border, Icons.star_border, Icons.star_border],),
  ];
  static List<Chapters> chapter8 = [
    Chapters(chapterName: "Bölüm5",image: "",chapternum: ChapterEight(),logo: [Icons.star_border, Icons.star_border, Icons.star_border],),
  ];
  static List<Chapters> chapter9 = [
    Chapters(chapterName: "Bölüm5",image: "",chapternum: ChapterNine(),logo: [Icons.star_border, Icons.star_border, Icons.star_border],),
  ];
}







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
    ],
  );

  static QuizQuestionModel chapterTwo = QuizQuestionModel(
    questions: [
      Question(image: '', options: {'Ankara': true, 'İstanbul': false, 'İzmir': false, 'Adana': false}),
      Question(image: '', options: {'İngiltere': true, 'Fransa': false, 'Almanya': false, 'Türkiye': false}),
      Question(image: '', options: {'Süleyman Şah': true, 'Fatih Sultan Mehmet': false, 'Abdülhamid Han': false, 'Atatürk': false}),
      Question(image: '', options: {'19 Mayıs': true, '23 Nisan': false, '29 Ekim': false, '30 Ağustos': false}),
      Question(image: '', options: {'Hasan': true, 'Ahmet': false, 'Mehmet': false, 'Ali': false}),
    ],
  );

  static QuizQuestionModel chapterThree = QuizQuestionModel(
    questions: [
      Question(image: '', options: {'Türkiye': true, 'Almanya': false, 'Fransa': false, 'İngiltere': false}),
      Question(image: '', options: {'İstanbul': true, 'Ankara': false, 'İzmir': false, 'Adana': false}),
      Question(image: '', options: {'Abdülhamid Han': true, 'Süleyman Şah': false, 'Fatih Sultan Mehmet': false, 'Atatürk': false}),
      Question(image: '', options: {'23 Nisan': true, '29 Ekim': false, '19 Mayıs': false, '30 Ağustos': false}),
      Question(image: '', options: {'Ahmet': true, 'Mehmet': false, 'Ali': false, 'Hasan': false}),
    ],
  );

  static QuizQuestionModel chapterFour = QuizQuestionModel(
    questions: [
      Question(image: '', options: {'Sametas': true, 'Bradee': false, 'Justeein': false, 'Dwayne': false}),
      Question(image: '', options: {'İstanbulas': true, 'Ankara': false, 'İzmir': false, 'Adana': false}),
      Question(image: '', options: {'19 Mayıssss': true, '23 Nisan': false, '29 Ekim': false, '30 Ağustos': false}),
      Question(image: '', options: {'Türkiyeaaa': true, 'Almanya': false, 'Fransa': false, 'İngiltere': false}),
      Question(image: '', options: {'Atatürkaa': true, 'Fatih Sultan Mehmet': false, 'Abdülhamid Han': false, 'Süleyman Şah': false}),
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
