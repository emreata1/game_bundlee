// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, annotate_overrides

import 'package:flutter/material.dart';
import 'package:game_bundlee/quiz_chapters/quiz_question_model.dart';


class QuestionPage extends StatefulWidget {
  QuestionPage({Key? key}) : super(key: key);

  @override
  State<QuestionPage> createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 214, 16, 112),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 214, 16, 112),
        title: Text('Bölümler'),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 80,
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: GridView.count(
              physics: NeverScrollableScrollPhysics(),
              crossAxisCount: 3,
              crossAxisSpacing: 10,
              mainAxisSpacing: 50,
              children: List.generate(Chapters.chapter.length, (index) {
                Chapters chapter = Chapters.chapter[index];
                return ListTile(
                  onTap: () {
                    Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => chapter.chapternum),);
                    
                  },
                  tileColor: Colors.white70,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    side: BorderSide(width: 3),
                  ),
                  title: Text(chapter.chapterName),
                );
              }),
            ),
          )),
          SizedBox(
            height: 120,
          ),
        ],
      ),
    );
  }
}
