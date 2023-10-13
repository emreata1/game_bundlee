// ignore_for_file: prefer_const_constructors, empty_statements, prefer_const_constructors_in_immutables, annotate_overrides
import 'quiz_question_model.dart';
import 'package:flutter/material.dart';

import 'quiz_result_page.dart';

class ChapterFive extends StatefulWidget {
  ChapterFive({Key? key}) : super(key: key);

  @override
  State<ChapterFive> createState() => _ChapterFiveState();
}

class _ChapterFiveState extends State<ChapterFive> {
  int currentIndex = 0;
  int wronganswer = 0;
  int correctanswer = 0;
  int currentChapter=5;
  final List<Question> _questions = QuizQuestionModel.chapterFive.questions;

  void _nextQuestion() {
    setState(() {
      if (currentIndex < _questions.length - 1) {
        currentIndex++;
      } else {
        
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => QuizResultPage(currentChapter: currentChapter,correctanswer: correctanswer,wronganswer: wronganswer,
          ),
        ))
        ;
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
          SizedBox(
            height: 250,
          ),
          Expanded(
            child: ListView.separated(
              padding: EdgeInsets.all(30),
              itemCount: 4,
              separatorBuilder: (context, index) => SizedBox(
                height: 7,
              ),
              itemBuilder: (context, index) {
                String optionText =
                    _questions[currentIndex].options.keys.elementAt(index);
                bool isCorrect = _questions[currentIndex].options[optionText]!;
                return ListTile(
                  onTap: () {
                    if (isCorrect) {
                      correctanswer++;
                    } else {
                      wronganswer++;
                    }
                    _nextQuestion();
                  },
                  tileColor: Colors.white70,
                  title: Text(optionText),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    side: BorderSide(width: 3),
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
