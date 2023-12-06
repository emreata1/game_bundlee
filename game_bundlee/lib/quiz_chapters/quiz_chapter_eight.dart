// ignore_for_file: prefer_const_constructors, empty_statements, prefer_const_constructors_in_immutables, annotate_overrides
import 'dart:async';

import 'package:game_bundlee/Models/chapters_model.dart';
import 'package:game_bundlee/quiz_chapters/quiz_result_page.dart';

import '../Models/quiz_question_model.dart';
import 'package:flutter/material.dart';

class ChapterEight extends StatefulWidget {
  ChapterEight({Key? key}) : super(key: key);

  @override
  State<ChapterEight> createState() => _ChapterEightState();
}

class _ChapterEightState extends State<ChapterEight> {
  int currentIndex = 0;
  int wronganswer = 0;
  int correctanswer = 0;
  int currentChapter=8;
  double starnumber=0;
  Chapters chapters = Chapters.chapter8[0];
  final List<Question> _questions = QuizQuestionModel.chapterEight.questions;
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
          Chapters.chapter2[0].logoGuncelle(8);
        
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

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 214, 16, 112),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 214, 16, 112),
        title: Text('Bu Ünlü Kim ?'),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Container(
              height: 30,
              margin: EdgeInsets.only(left: 70, right: 70),
              decoration: BoxDecoration(
                border: Border.all(
                    style: BorderStyle.solid, width: 2, color: Colors.white),
                borderRadius: BorderRadius.circular(20),
                color: Colors.white70,
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
                    Text("Bölüm 8"),
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

                        _nextQuestion();
                      
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
