// ignore_for_file: prefer_const_constructors, empty_statements, prefer_const_constructors_in_immutables, annotate_overrides
import 'package:flutter/material.dart';
import 'package:game_bundlee/quiz/quiz_Models/chapters_model.dart';
import 'dart:async';
import '../quiz_Models/quiz_question_model.dart';
import '../quiz_result_page.dart';

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
  Chapters chapters = Chapters.chapter1[0];

  final List<Question> _questions = QuizQuestionModel.chapterOne.questions;
  bool isAnswered = false;

  Future<void> _nextQuestion() async {
    setState(() {
      isAnswered = true;
    });
    await Future.delayed(Duration(milliseconds: 500));
    setState(() {
      isAnswered = false;
      if (currentIndex < _questions.length - 1) {
        currentIndex++;
      } else {
        starnumber = correctanswer / (correctanswer + wronganswer);
        if (starnumber == 0 ) {
          chapters.logo[0] = Icons.star_border;
          chapters.logo[1] = Icons.star_border;
          chapters.logo[2] = Icons.star_border;
        }
        else if (starnumber > 0 && starnumber < 0.5) {
          chapters.logo[0] = Icons.star;
          chapters.logo[1] = Icons.star_border;
          chapters.logo[2] = Icons.star_border;
        } else if (starnumber >= 0.5 && starnumber < 1) {
          chapters.logo[0] = Icons.star;
          chapters.logo[1] = Icons.star;
          chapters.logo[2] = Icons.star_border;
        } else if (starnumber == 1) {
          chapters.logo[0] = Icons.star;
          chapters.logo[1] = Icons.star;
          chapters.logo[2] = Icons.star;
        }
          Chapters.chapter1[0].logoGuncelle(1);


        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => QuizResultPage(
            chapters: chapters,
            starnumber: starnumber,
            currentChapter: currentChapter,
            correctanswer: correctanswer,
            wronganswer: wronganswer,
          ),
        ));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(240,240,240,1),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(190,255,190,1),
        title: Text('Bu Ünlü Kim ?',style: TextStyle(color: Colors.black)),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Container(
              height: 35,
              margin: EdgeInsets.only(left: 70, right: 70),
              decoration: BoxDecoration(
                border: Border.all(
                    style: BorderStyle.solid, width: 3, color: Color.fromRGBO(220,220,220,1)),
                borderRadius: BorderRadius.circular(20),
                color: Color.fromRGBO(190,255,190,1),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.check_circle_outline_rounded,
                            color: Colors.green),
                            SizedBox(width: 8.0),
                        Text("$correctanswer", style: TextStyle(fontSize: 20)),
                      ],
                    ),
                    Text("Bölüm 1"),
                    Row(
                      children: [
                        Text("$wronganswer", style: TextStyle(fontSize: 20)),
                        SizedBox(width: 8.0),
                        Icon(Icons.dangerous_outlined, color: Colors.red),
                      ],
                    ),
                  ],
                ),
              )),
          SizedBox(
            height: 250,
          ),
          Expanded(
            child: ListView.separated(
              padding: EdgeInsets.only(left: 30, right: 30, top: 45),
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
                      _nextQuestion();
                    }
                  },
                  tileColor: isAnswered
                      ? (isCorrect ? Colors.green : Colors.red)
                      : Color.fromRGBO(190,255,190,1),
                  title: Text(
                    optionText,
                    style: TextStyle(
                      color: isAnswered ? Colors.white : Colors.black,
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: BorderSide(width: 3, color: Color.fromRGBO(220,220,220,1)),
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
