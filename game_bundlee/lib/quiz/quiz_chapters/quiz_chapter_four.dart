// ignore_for_file: prefer_const_constructors, empty_statements, prefer_const_constructors_in_immutables, annotate_overrides
import 'dart:async';

import 'package:game_bundlee/quiz/quiz_Models/chapters_model.dart';

import '../quiz_Models/quiz_question_model.dart';
import 'package:flutter/material.dart';

import '../quiz_result_page.dart';

class ChapterFour extends StatefulWidget {
  ChapterFour({Key? key}) : super(key: key);

  @override
  State<ChapterFour> createState() => _ChapterFourState();
}

class _ChapterFourState extends State<ChapterFour> {
  int currentIndex = 0;
  int wronganswer = 0;
  int correctanswer = 0;
  int currentChapter=4;
  double starnumber=0;
  Chapters chapters = Chapters.chapter4[0];
  final List<Question> _questions = QuizQuestionModel.chapterFour.questions;
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
             chapters.logo[0] = Icons.star;
          } else if (starnumber >= 0.5 && starnumber < 1) {
             chapters.logo[0] = Icons.star;
             chapters.logo[1] = Icons.star;            
          } else if (starnumber == 1) {
            chapters.logo[0] = Icons.star;
            chapters.logo[1] = Icons.star; 
            chapters.logo[2] = Icons.star; 
        }
        Chapters.chapter4[0].logoGuncelle(4);
        
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => QuizResultPage(
            starnumber: starnumber,
            currentChapter: currentChapter,
            correctanswer: correctanswer,
            wronganswer: wronganswer, chapters: chapters,
          ),
        ));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255,255,255,1),
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