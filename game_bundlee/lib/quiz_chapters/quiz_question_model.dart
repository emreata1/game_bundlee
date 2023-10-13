import 'package:flutter/material.dart';
import 'quiz_chapter_one.dart';
import 'quiz_chapter_two.dart';

class Chapters {
  String chapterName;
  String image;
  Widget chapternum;

  Chapters({
    required this.chapterName,
    required this.image,
    required this.chapternum,
  });
  static List<Chapters> chapter = [
    Chapters(chapterName: "Bölüm1", image: "", chapternum: ChapterOne()),
    Chapters(chapterName: "Bölüm2", image: "", chapternum: ChapterTwo()),
    Chapters(chapterName: "Bölüm3", image: "", chapternum: ChapterOne()),
    Chapters(chapterName: "Bölüm4", image: "", chapternum: ChapterOne()),
    Chapters(chapterName: "Bölüm5", image: "", chapternum: ChapterOne()),
    Chapters(chapterName: "Bölüm6", image: "", chapternum: ChapterOne()),
    Chapters(chapterName: "Bölüm7", image: "", chapternum: ChapterOne()),
    Chapters(chapterName: "Bölüm8", image: "", chapternum: ChapterOne()),
    Chapters(chapterName: "Bölüm9", image: "", chapternum: ChapterOne()),
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
      Question(id: '1',image: '',options: {'Sam': true,'Brad': false,'Justin': false,'Dwayne': false,},),
      Question(id: '2',image: '',options: {'İstanbul': true,'Ankara': false,'İzmir': false,'Adana': false,},),
      Question(id: '3',image: '',options: {'19 Mayıs': true,'23 Nisan': false,'29 Ekim': false,'30 Ağustos': false,},),
      Question(id: '4',image: '',options: {'Türkiye': true,'Almanya': false,'Fransa': false,'İngiltere': false,},),
      Question(id: '5',image: '',options: {'Atatürk': true,'Fatih Sultan Mehmet': false,'Abdülhamid Han': false,'Süleyman Şah': false,},),
    ],
  );

  static QuizQuestionModel chapterTwo = QuizQuestionModel(
    questions: [
      Question(id: '1',image: '',options: {'Samet': true,'Bradee': false,'Justeein': false,'Dwayne': false,},),
      Question(id: '2',image: '',options: {'İstanbul': true,'Ankara': false,'İzmir': false,'Adana': false,},),
      Question(id: '3',image: '',options: {'19 Mayıs': true,'23 Nisan': false,'29 Ekim': false,'30 Ağustos': false,},),
      Question(id: '4',image: '',options: {'Türkiye': true,'Almanya': false,'Fransa': false,'İngiltere': false,},),
      Question(id: '5',image: '',options: {'Atatürk': true,'Fatih Sultan Mehmet': false,'Abdülhamid Han': false,'Süleyman Şah': false,},),
    ],
  );
}
