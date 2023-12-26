import 'dart:async';

import 'package:game_bundlee/quiz/quiz_Models/chapters_model.dart';

import '../quiz_Models/quiz_question_model.dart';
import 'package:flutter/material.dart';

import '../quiz_result_page.dart';

class ChapterFive extends StatefulWidget {
  const ChapterFive({Key? key}) : super(key: key);

  @override
  State<ChapterFive> createState() => _ChapterFiveState();
}

class _ChapterFiveState extends State<ChapterFive> {
  int currentIndex = 0;
  int wronganswer = 0;
  int correctanswer = 0;
  int currentChapter=5;
  double starnumber=0;
  Chapters chapters = Chapters.chapter5[0];
  final List<Question> _questions = QuizQuestionModel.chapterFive.questions;
  bool isAnswered = false;
  Future<void> _nextQuestion() async {
    setState(() {
      isAnswered = true;
    });
    await Future.delayed(const Duration(milliseconds: 300));
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
        Chapters.chapter5[0].logoGuncelle(5);

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
      backgroundColor: const Color.fromRGBO(255,255,255,1),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(255, 229, 143, 1),
        title: const Text('Bu Ünlü Kim ?'),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          Container(
              height: 35,
              margin: const EdgeInsets.only(left: 70, right: 70),
              decoration: BoxDecoration(
                border: Border.all(
                    style: BorderStyle.solid, width: 2, color: const Color.fromRGBO(220,220,220,1)),
                borderRadius: BorderRadius.circular(20),
                color: const Color.fromRGBO(255, 229, 143, 1),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.check_circle_outline_rounded,
                            color: Colors.green),
                            const SizedBox(width: 8.0),
                        Text("$correctanswer", style: const TextStyle(fontSize: 20)),
                      ],
                    ),
                    const Text("Bölüm 2"),
                    Row(
                      children: [
                        Text("$wronganswer", style: const TextStyle(fontSize: 20)),
                        const SizedBox(width: 8.0),
                        const Icon(Icons.dangerous_outlined, color: Colors.red),
                      ],
                    ),
                  ],
                ),
              )),
          SizedBox(height: 30,),
          Container(
            child: Image.asset(QuizQuestionModel.chapterFive.questions[currentIndex].image),
            height: 300,
            width: 350,
          ),
          Expanded(
            child: ListView.separated(
              padding: const EdgeInsets.all(30),
              itemCount: 4,
              separatorBuilder: (context, index) => const SizedBox(
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
                        : const Color.fromRGBO(255, 229, 143, 1),
                    title: Text(
                      optionText,
                      style: TextStyle(
                        color: isAnswered ? Colors.white : Colors.black,
                      ),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                      side: const BorderSide(width: 3, color: Color.fromRGBO(220,220,220,1)),
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