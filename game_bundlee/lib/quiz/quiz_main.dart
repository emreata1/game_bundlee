import 'package:flutter/material.dart';
import 'package:game_bundlee/audio.dart';
import 'package:game_bundlee/main.dart';
import 'package:game_bundlee/quiz/quiz_settings.dart';
import 'quiz_page.dart';


class QuizMain extends StatelessWidget {
  const QuizMain({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: QuizHomePage(),
    );
  }
}

class QuizHomePage extends StatefulWidget {

  

  const QuizHomePage({Key? key,}) : super(key: key);

  @override
  State<QuizHomePage> createState() => _QuizHomePageState();
}

class _QuizHomePageState extends State<QuizHomePage> {

  @override
  void initState() {
    super.initState();
    if(isVolumeOn){
    oynatquiz(); 
  }}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 214, 16, 112),
      body: Column(
  children: [
const SizedBox(height:90 ,),

GestureDetector(
  child: Image.asset("assets/quiztime.png"),
),
const SizedBox(height: 40,),

GestureDetector(
  onTap: () {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const QuestionPage(),));
  },
  child: Container(
    margin: const EdgeInsets.symmetric(horizontal: 110),
    child: Image.asset("assets/oyna.png"), 
  ),),
const SizedBox(height: 25,),
GestureDetector(
  onTap: () {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const SettingsPage()));
  },
  child: Container(
    margin: const EdgeInsets.symmetric(horizontal: 105),
    child: Image.asset("assets/ayarlar.png"), 
  ),
),
const SizedBox(height: 30,),
    GestureDetector(
  onTap: () {
    dur();
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const MyHomePage(),));
  },
  child: Container(
    margin: const EdgeInsets.symmetric(horizontal: 110),
    child: Image.asset("assets/cikis.png"), 
  ),
)
],)
    );
  }
}