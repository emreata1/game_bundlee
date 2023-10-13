// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
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
  final List<IconData> logo;
  final List<IconThemeData>logotheme;

  Chapters({
    required this.chapterName,
    required this.image,
    required this.chapternum,
    required this.logo,
    required this.logotheme,
  });
  static List<Chapters> chapter = [
    Chapters(chapterName: "Bölüm1", image: "", chapternum: ChapterOne(), logo: [Icons.star, Icons.star_border, Icons.star_border], logotheme: [IconThemeData(color: Colors.green)],),
    Chapters(chapterName: "Bölüm2", image: "", chapternum: ChapterTwo(), logo: [Icons.star, Icons.star, Icons.star_border], logotheme: [IconThemeData(color: Colors.orange)],),
    Chapters(chapterName: "Bölüm3", image: "", chapternum: ChapterThree(), logo: [Icons.star, Icons.star, Icons.star], logotheme: [IconThemeData(color: Colors.red)],),
    Chapters(chapterName: "Bölüm4", image: "", chapternum: ChapterFour(), logo: [Icons.star, Icons.star_border, Icons.star_border], logotheme: [IconThemeData(color: Colors.green)],),
    Chapters(chapterName: "Bölüm5", image: "", chapternum: ChapterFive(), logo: [Icons.star, Icons.star, Icons.star_border], logotheme: [IconThemeData(color: Colors.orange)],),
    Chapters(chapterName: "Bölüm6", image: "", chapternum: ChapterSix(), logo: [Icons.star, Icons.star, Icons.star], logotheme: [IconThemeData(color: Colors.red)],),
    Chapters(chapterName: "Bölüm7", image: "", chapternum: ChapterSeven(), logo: [Icons.star, Icons.star_border, Icons.star_border], logotheme: [IconThemeData(color: Colors.green)],),
    Chapters(chapterName: "Bölüm8", image: "", chapternum: ChapterEight(), logo: [Icons.star, Icons.star, Icons.star_border], logotheme: [IconThemeData(color: Colors.orange)],),
    Chapters(chapterName: "Bölüm9", image: "", chapternum: ChapterNine(), logo: [Icons.star, Icons.star, Icons.star], logotheme: [IconThemeData(color: Colors.red)],),
  ];
}

class Question {
  final String id;
  final String image;
  final Map<String, bool> options;

  Question({
    required this.id,
    required this.image,
    required this.options,
  });

  @override
  String toString() {
    return 'Question(id: $id ,image: $image options: $options)';
  }
}

class QuizQuestionModel {
  final List<Question> questions;

  QuizQuestionModel({
    required this.questions,
  });

  static QuizQuestionModel chapterOne = QuizQuestionModel(
  questions: [
    Question(id: '1',image: '',options: {'İstanbul': true,'Ankara': false,'İzmir': false,'Adana': false,},),
    Question(id: '2',image: '',options: {'Türkiye': true,'Almanya': false,'Fransa': false,'İngiltere': false,},),
    Question(id: '3',image: '',options: {'Fatih Sultan Mehmet': true,'Abdülhamid Han': false,'Süleyman Şah': false,'Atatürk': false,},),
    Question(id: '4',image: '',options: {'29 Ekim': true,'23 Nisan': false,'19 Mayıs': false,'30 Ağustos': false,},),
    Question(id: '5',image: '',options: {'Mehmet': true,'Ahmet': false,'Ali': false,'Hasan': false,},),
  ],
);

static QuizQuestionModel chapterTwo = QuizQuestionModel(
  questions: [
    Question(id: '1',image: '',options: {'Ankara': true,'İstanbul': false,'İzmir': false,'Adana': false,},),
    Question(id: '2',image: '',options: {'İngiltere': true,'Fransa': false,'Almanya': false,'Türkiye': false,},),
    Question(id: '3',image: '',options: {'Süleyman Şah': true,'Fatih Sultan Mehmet': false,'Abdülhamid Han': false,'Atatürk': false,},),
    Question(id: '4',image: '',options: {'19 Mayıs': true,'23 Nisan': false,'29 Ekim': false,'30 Ağustos': false,},),
    Question(id: '5',image: '',options: {'Hasan': true,'Ahmet': false,'Mehmet': false,'Ali': false,},),
  ],
);

static QuizQuestionModel chapterThree = QuizQuestionModel(
  questions: [
    Question(id: '1',image: '',options: {'Türkiye': true,'Almanya': false,'Fransa': false,'İngiltere': false,},),
    Question(id: '2',image: '',options: {'İstanbul': true,'Ankara': false,'İzmir': false,'Adana': false,},),
    Question(id: '3',image: '',options: {'Abdülhamid Han': true,'Süleyman Şah': false,'Fatih Sultan Mehmet': false,'Atatürk': false,},),
    Question(id: '4',image: '',options: {'23 Nisan': true,'29 Ekim': false,'19 Mayıs': false,'30 Ağustos': false,},),
    Question(id: '5',image: '',options: {'Ahmet': true,'Mehmet': false,'Ali': false,'Hasan': false,},),
  ],
);

  static QuizQuestionModel chapterFour = QuizQuestionModel(
    questions: [
      Question(id: '1',image: '',options: {'Sametas': true,'Bradee': false,'Justeein': false,'Dwayne': false,},),
      Question(id: '2',image: '',options: {'İstanbulas': true,'Ankara': false,'İzmir': false,'Adana': false,},),
      Question(id: '3',image: '',options: {'19 Mayıssss': true,'23 Nisan': false,'29 Ekim': false,'30 Ağustos': false,},),
      Question(id: '4',image: '',options: {'Türkiyeaaa': true,'Almanya': false,'Fransa': false,'İngiltere': false,},),
      Question(id: '5',image: '',options: {'Atatürkaa': true,'Fatih Sultan Mehmet': false,'Abdülhamid Han': false,'Süleyman Şah': false,},),
    ],
  );

  static QuizQuestionModel chapterFive = QuizQuestionModel(
  questions: [
    Question(id: '1',image: '',options: {'Ahmet': true,'Mehmet': false,'Ali': false,'Hasan': false,},),
    Question(id: '2',image: '',options: {'İzmir': true,'Ankara': false,'Adana': false,'İstanbul': false,},),
    Question(id: '3',image: '',options: {'29 Ekim': true,'23 Nisan': false,'19 Mayıs': false,'30 Ağustos': false,},),
    Question(id: '4',image: '',options: {'Türkiye': true,'Almanya': false,'Fransa': false,'İngiltere': false,},),
    Question(id: '5',image: '',options: {'Fatih Sultan Mehmet': true,'Abdülhamid Han': false,'Süleyman Şah': false,'Atatürk': false,},),
  ],
);

static QuizQuestionModel chapterSix = QuizQuestionModel(
  questions: [
    Question(id: '1',image: '',options: {'Mehmet': true,'Ahmet': false,'Ali': false,'Hasan': false,},),
    Question(id: '2',image: '',options: {'Ankara': true,'İzmir': false,'Adana': false,'İstanbul': false,},),
    Question(id: '3',image: '',options: {'19 Mayıs': true,'23 Nisan': false,'29 Ekim': false,'30 Ağustos': false,},),
    Question(id: '4',image: '',options: {'Almanya': true,'Türkiye': false,'Fransa': false,'İngiltere': false,},),
    Question(id: '5',image: '',options: {'Süleyman Şah': true,'Fatih Sultan Mehmet': false,'Abdülhamid Han': false,'Atatürk': false,},),
  ],
);

static QuizQuestionModel chapterSeven = QuizQuestionModel(
  questions: [
    Question(id: '1',image: '',options: {'Ali': true,'Ahmet': false,'Mehmet': false,'Hasan': false,},),
    Question(id: '2',image: '',options: {'Adana': true,'İzmir': false,'Ankara': false,'İstanbul': false,},),
    Question(id: '3',image: '',options: {'30 Ağustos': true,'23 Nisan': false,'29 Ekim': false,'19 Mayıs': false,},),
    Question(id: '4',image: '',options: {'İngiltere': true,'Fransa': false,'Almanya': false,'Türkiye': false,},),
    Question(id: '5',image: '',options: {'Abdülhamid Han': true,'Süleyman Şah': false,'Fatih Sultan Mehmet': false,'Atatürk': false,},),
  ],
);

  static QuizQuestionModel chapterEight = QuizQuestionModel(
    questions: [
      Question(id: '1',image: '',options: {'Sametas': true,'Bradee': false,'Justeein': false,'Dwayne': false,},),
      Question(id: '2',image: '',options: {'İstanbulas': true,'Ankara': false,'İzmir': false,'Adana': false,},),
      Question(id: '3',image: '',options: {'19 Mayıssss': true,'23 Nisan': false,'29 Ekim': false,'30 Ağustos': false,},),
      Question(id: '4',image: '',options: {'Türkiyeaaa': true,'Almanya': false,'Fransa': false,'İngiltere': false,},),
      Question(id: '5',image: '',options: {'Atatürkaa': true,'Fatih Sultan Mehmet': false,'Abdülhamid Han': false,'Süleyman Şah': false,},),
    ],
  );

  static QuizQuestionModel chapterNine = QuizQuestionModel(
    questions: [
      Question(id: '1',image: '',options: {'Sametas': true,'Bradee': false,'Justeein': false,'Dwayne': false,},),
      Question(id: '2',image: '',options: {'İstanbulas': true,'Ankara': false,'İzmir': false,'Adana': false,},),
      Question(id: '3',image: '',options: {'19 Mayıssss': true,'23 Nisan': false,'29 Ekim': false,'30 Ağustos': false,},),
      Question(id: '4',image: '',options: {'Türkiyeaaa': true,'Almanya': false,'Fransa': false,'İngiltere': false,},),
      Question(id: '5',image: '',options: {'Atatürkaa': true,'Fatih Sultan Mehmet': false,'Abdülhamid Han': false,'Süleyman Şah': false,},),
    ],
  );
}
