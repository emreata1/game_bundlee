import 'package:flutter/material.dart';
import 'package:game_bundlee/quiz_chapters/quiz_chapter_eight.dart';
import 'package:game_bundlee/quiz_chapters/quiz_chapter_five.dart';
import 'package:game_bundlee/quiz_chapters/quiz_chapter_four.dart';
import 'package:game_bundlee/quiz_chapters/quiz_chapter_nine.dart';
import 'package:game_bundlee/quiz_chapters/quiz_chapter_one.dart';
import 'package:game_bundlee/quiz_chapters/quiz_chapter_seven.dart';
import 'package:game_bundlee/quiz_chapters/quiz_chapter_six.dart';
import 'package:game_bundlee/quiz_chapters/quiz_chapter_three.dart';
import 'package:game_bundlee/quiz_chapters/quiz_chapter_two.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
}

  logoGuncelle(int chapterIndex) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String> iconCodes = logo.map((icon) => icon.codePoint.toString()).toList();
    await prefs.setStringList('logo$chapterIndex', iconCodes);
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