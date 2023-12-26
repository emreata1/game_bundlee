import 'package:flutter/material.dart';
import 'package:game_bundlee/quiz/quiz_Models/chapters_model.dart';
import 'package:game_bundlee/quiz/quiz_chapters/quiz_chapter_eight.dart';
import 'package:game_bundlee/quiz/quiz_chapters/quiz_chapter_five.dart';
import 'package:game_bundlee/quiz/quiz_chapters/quiz_chapter_four.dart';
import 'package:game_bundlee/quiz/quiz_chapters/quiz_chapter_nine.dart';
import 'package:game_bundlee/quiz/quiz_chapters/quiz_chapter_seven.dart';
import 'package:game_bundlee/quiz/quiz_chapters/quiz_chapter_six.dart';
import 'package:game_bundlee/quiz/quiz_chapters/quiz_chapter_three.dart';
import 'package:game_bundlee/quiz/quiz_chapters/quiz_chapter_two.dart';
import 'package:game_bundlee/quiz/quiz_page.dart';

class QuizResultPage extends StatefulWidget {
  final int correctanswer;
  final int wronganswer;
  final int currentChapter;
  final double starnumber;
  final Chapters chapters;
  const QuizResultPage({
    super.key,
    required this.starnumber,
    required this.currentChapter,
    required this.correctanswer,
    required this.wronganswer,
    required this.chapters,
  });

  @override
  State<QuizResultPage> createState() => _QuizResultPageState();
}

class _QuizResultPageState extends State<QuizResultPage> {
  late Widget nextChapter;
  late Widget starWidget;

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 214, 16, 112),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Icon(widget.chapters.logo[0],size: 50,color: Colors.yellow),
              Icon(widget.chapters.logo[1],size: 50,color: Colors.yellow),
              Icon(widget.chapters.logo[2],size: 50,color: Colors.yellow),
            ]),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 110, left: 60, right: 60),
            child: ListTile(
              title: Text(
                "${widget.correctanswer} Doğru",
                style:
                    const TextStyle(fontSize: 27, fontWeight: FontWeight.w600),
              ),
              contentPadding: const EdgeInsets.only(
                  top: 12, bottom: 12, right: 7, left: 45),
              tileColor: Colors.white,
              leading: const Icon(
                Icons.check_circle,
                size: 50,
                color: Colors.green,
              ),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                side: BorderSide(width: 2, color: Colors.white54),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 15, left: 60, right: 60, bottom: 50),
            child: ListTile(
              title: Text(
                "${widget.wronganswer} Yanlış",
                style:
                    const TextStyle(fontSize: 27, fontWeight: FontWeight.w600),
              ),
              contentPadding: const EdgeInsets.only(
                  top: 12, bottom: 12, right: 7, left: 45),
              tileColor: Colors.white,
              leading: const Icon(
                Icons.dangerous,
                size: 50,
                color: Colors.red,
              ),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                side: BorderSide(width: 2, color: Colors.white54),
              ),
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                width: 100,
                child: ListTile(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const QuestionPage(),
                    ));
                  },
                  tileColor: Colors.white,
                  shape: const RoundedRectangleBorder(
                      side: BorderSide(width: 2, color: Colors.white54),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  title: const Icon(
                    Icons.menu,
                    size: 65,
                  ),
                ),
              ),
              const SizedBox(
                width: 13,
              ),
              SizedBox(
                width: 100,
                child: ListTile(
                  onTap: () {
                    switch (widget.currentChapter) {
                      case 1:
                        nextChapter = const ChapterTwo();
                        break;
                      case 2:
                        nextChapter = const ChapterThree();
                        break;
                      case 3:
                        nextChapter = const ChapterFour();
                        break;
                      case 4:
                        nextChapter = const ChapterFive();
                        break;
                      case 5:
                        nextChapter = const ChapterSix();
                        break;
                      case 6:
                        nextChapter = const ChapterSeven();
                        break;
                      case 7:
                        nextChapter = const ChapterEight();
                        break;
                      case 8:
                        nextChapter = const ChapterNine();
                        break;
                      case 9:
                        nextChapter = const QuestionPage();
                        break;
                    }
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => nextChapter));
                  },
                  tileColor: Colors.white,
                  shape: const RoundedRectangleBorder(
                      side: BorderSide(width: 2, color: Colors.white54),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  title: const Icon(Icons.skip_next, size: 65, color: Colors.green),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
