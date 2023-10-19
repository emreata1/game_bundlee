// ignore_for_file: prefer_const_constructors, empty_statements, prefer_const_constructors_in_immutables, annotate_overrides
import 'package:flutter/material.dart';
import 'dart:async';
import 'quiz_question_model.dart';
import 'quiz_result_page.dart';

class ChapterOne extends StatefulWidget {
  ChapterOne({Key? key}) : super(key: key);

  @override
  State<ChapterOne> createState() => _ChapterOneState();
}

class _ChapterOneState extends State<ChapterOne> {
  int currentIndex = 0;
  int wronganswer = 0;
  int correctanswer = 0;
  int currentChapter = 1;
  double starnumber = 0;
  Stars star1 = Stars.chapterOne[0];
  Stars star2 = Stars.chapterOne[1];
  Stars star3 = Stars.chapterOne[2];
  final List<Question> _questions = QuizQuestionModel.chapterOne.questions;
  bool isAnswered = false;

  Future<void> _nextQuestion() async {
    setState(() {
      isAnswered = true;
    });
    await Future.delayed(Duration(milliseconds: 300));
    setState(() {
      isAnswered = false;
      if (currentIndex < _questions.length - 1) {
        currentIndex++;
      } else {
        starnumber = correctanswer / (correctanswer + wronganswer);


          if (starnumber > 0 && starnumber < 0.5) {
              star1 = Stars(logo: Icons.star, logotheme: [IconThemeData(color: Colors.yellow, size: 50)]);
              Stars.chapterOne[0] = star1;
          } else if (starnumber >= 0.5 && starnumber < 1) {
           star1 = Stars(logo: Icons.star, logotheme: [IconThemeData(color: Colors.yellow, size: 50)]);
           star2 = Stars(logo: Icons.star, logotheme: [IconThemeData(color: Colors.yellow, size: 50)]);
           Stars.chapterOne[0] = star1;
           Stars.chapterOne[1] = star2;
          } else if (starnumber == 1) {
           star1 = Stars(logo: Icons.star, logotheme: [IconThemeData(color: Colors.yellow, size: 50)]);
           star2 = Stars(logo: Icons.star, logotheme: [IconThemeData(color: Colors.yellow, size: 50)]);
          star3 = Stars(logo: Icons.star, logotheme: [IconThemeData(color: Colors.yellow, size: 50)]);
           Stars.chapterOne[0] = star1;
            Stars.chapterOne[1] = star2;
            Stars.chapterOne[2] = star3;
        }

      
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => QuizResultPage( starnumber: starnumber, currentChapter: currentChapter, correctanswer: correctanswer,wronganswer: wronganswer,
          ),
        ));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.green,
        title: Text('Bu Ünlü Kim ?'),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          SizedBox(
            height: 250,
          ),
          Expanded(
            child: ListView.separated(

              padding: EdgeInsets.all(30),
              itemCount: 4,
              separatorBuilder: (context, index) => SizedBox(
                height: 15,
              ),
              itemBuilder: (context, index) {
                String optionText =
                    _questions[currentIndex].options.keys.elementAt(index);
                bool isCorrect = _questions[currentIndex].options[optionText]!;
                return ListTile(
                    onTap: () {
                    if (!isAnswered) {
                      setState(() {
                        isAnswered = true;
                      });
                      if (isCorrect) {
                        correctanswer++;
                      } else {
                        wronganswer++;
                      }
                      Timer(Duration(milliseconds: 500), () {
                        _nextQuestion();
                      });
                    }
                  },
                    tileColor: isAnswered
                        ? (isCorrect ? Colors.green : Colors.red)
                        : Colors.white70,
                    title: Text(
                      optionText,
                      style: TextStyle(
                        color: isAnswered ? Colors.white : Colors.black,
                      ),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                      side: BorderSide(width: 3, color: Colors.white54),
                    ),
                );
                
              },
            ),
          ),
        ],
      ),
    );
  }
}
