// ignore_for_file: prefer_const_constructors

import 'dart:io';
import 'quiz_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 214, 16, 112),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(height: 180,),

          Container(
            padding: EdgeInsets.only(left: 110, right: 110,top: 50),
            child: ListTile(
              tileColor: Colors.white70,
              contentPadding: EdgeInsets.symmetric(horizontal: 35),
              shape: RoundedRectangleBorder(
                  side: BorderSide(width: 2),
                  borderRadius: BorderRadius.circular(20)),
              title: Text("Kelime Oyunu"),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 110, right: 110),
            child: ListTile(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => QuestionPage()),);
              }, 
              tileColor: Colors.white70,
              contentPadding: EdgeInsets.symmetric(horizontal: 53),
              shape: RoundedRectangleBorder(
                  side: BorderSide(width: 2),
                  borderRadius: BorderRadius.circular(20)),
              title: Text("QuizApp"),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 110, right: 110),
            child: ListTile(
             tileColor: Colors.white70,
              onTap: () => exit(0),
              contentPadding: EdgeInsets.symmetric(horizontal: 66),
              shape: RoundedRectangleBorder(
                  side: BorderSide(width: 2),
                  borderRadius: BorderRadius.circular(20)),
              title: Text("Çıkış"),
            ),
          ),
        ],
      ),
    );
  }
}
