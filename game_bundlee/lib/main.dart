import 'dart:io';
import 'package:flutter/material.dart';
import 'package:game_bundlee/quiz_chapters/quiz_question_model.dart';

import 'quiz_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
    await Chapters.chapter1[0].logoOku(1);
    await Chapters.chapter2[0].logoOku(2);
    await Chapters.chapter3[0].logoOku(3);
    await Chapters.chapter4[0].logoOku(4);
    await Chapters.chapter5[0].logoOku(5);
    await Chapters.chapter6[0].logoOku(6);
    await Chapters.chapter7[0].logoOku(7);
    await Chapters.chapter8[0].logoOku(8);
    await Chapters.chapter9[0].logoOku(9);
  
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {


  const MyHomePage({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 214, 16, 112),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const SizedBox(height: 180,),
          Container(
            padding: const EdgeInsets.only(left: 110, right: 110,top: 50),
            child: ListTile(
              tileColor: Colors.white70,
              contentPadding: const EdgeInsets.symmetric(horizontal: 35),
              shape: RoundedRectangleBorder(
                  side: const BorderSide(width: 2,color: Colors.white),
                  borderRadius: BorderRadius.circular(20)),
              title: const Text("Kelime Oyunu"),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 110, right: 110),
            child: ListTile(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => QuestionPage()),
                );
              }, 
              tileColor: Colors.white70,
              contentPadding: const EdgeInsets.symmetric(horizontal: 53),
              shape: RoundedRectangleBorder(
                  side: const BorderSide(width: 2,color: Colors.white),
                  borderRadius: BorderRadius.circular(20)),
              title: const Text("QuizApp"),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 110, right: 110),
            child: ListTile(
             tileColor: Colors.white70,
              contentPadding: const EdgeInsets.symmetric(horizontal: 59),
              shape: RoundedRectangleBorder(
                  side: const BorderSide(width: 2,color: Colors.white),
                  borderRadius: BorderRadius.circular(20)),
              title: const Text("Ayarlar"),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 110, right: 110),
            child: ListTile(
             tileColor: Colors.white70,
              onTap: () => exit(0),
              contentPadding: const EdgeInsets.symmetric(horizontal: 66),
              shape: RoundedRectangleBorder(
                  side: const BorderSide(width: 2,color: Colors.white),
                  borderRadius: BorderRadius.circular(20)),
              title: const Text("Çıkış"),
            ),
          ),
        ],
      ),
    );
  }
}