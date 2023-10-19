// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, annotate_overrides, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:game_bundlee/main.dart';
import 'package:game_bundlee/quiz_chapters/quiz_question_model.dart';

class QuestionPage extends StatefulWidget {
  QuestionPage({Key? key}) : super(key: key);

  @override
  State<QuestionPage> createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 3, 196, 255),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            icon: Icon(Icons.home),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => MyHomePage()),
              );
            },
          )
        ],
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 3, 196, 255),
        title: Text('Bölümler'),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 80,
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: GridView.count(
                crossAxisCount: 3,
                crossAxisSpacing: 10,
                mainAxisSpacing: 50,
                children: Chapters.chapter.map((chapter) {
                  return ListTile(
                    onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => chapter.chapternum,
                      ),
                    ),
                    tileColor: Colors.white70,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      side: BorderSide(width: 3, color: Colors.white54),
                    ),
                    title: Column(
                      children: [
                        SizedBox(height: 70),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                        ),
                      ],
                    ),
                    
                    subtitle: Padding(
                        padding: EdgeInsetsDirectional.symmetric(vertical: 3),
                        child: Row(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(chapter.logo[0],color: Colors.yellow,size: 25),
                            Icon(chapter.logo[1],color: Colors.yellow,size: 25),
                            Icon(chapter.logo[2],color: Colors.yellow,size: 25),
                          ],
                        )),
                  );
                }).toList(),
              ),
            ),
          ),
          SizedBox(
            height: 120,
          ),
        ],
      ),
    );
  }
}
