import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:game_bundlee/milyoner/milyoner_models/milyoner_audio.dart';

import 'package:game_bundlee/quiz/quiz_Models/quiz_audio.dart';
import 'package:game_bundlee/milyoner/milyonermain.dart';
import 'package:game_bundlee/quiz/quiz_main.dart';
import 'package:game_bundlee/quiz/quiz_Models/chapters_model.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    await Chapters.chapter1[0].logoOku(1);
    await Chapters.chapter2[0].logoOku(2);
    await Chapters.chapter3[0].logoOku(3);
    await Chapters.chapter4[0].logoOku(4);
    await Chapters.chapter5[0].logoOku(5);
    await Chapters.chapter6[0].logoOku(6);
    await Chapters.chapter7[0].logoOku(7);
    await Chapters.chapter8[0].logoOku(8);
    await Chapters.chapter9[0].logoOku(9);
    await soundStatusRead();
   
          
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

class MyHomePage extends StatefulWidget {

  const MyHomePage({Key? key,}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 214, 16, 112),
      body: Column(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [

    GestureDetector(
  onTap: () {
    durquiz();
    
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const MilyonerMain()));

  },
  child: Container(
    margin: const EdgeInsets.symmetric(horizontal: 95),
    
   child: Image.asset("assets/milyonerassets/milyoneric.png"),
  ),
),

GestureDetector(
  onTap: () {
    durquiz();
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const QuizMain()));
  },
  child: Container(
    margin: const EdgeInsets.symmetric(horizontal: 35),
    
    child: Image.asset("assets/quiztime.png"), 
  ),
),

],)
    );
  }
}