import 'package:flutter/material.dart';
import 'package:game_bundlee/milyoner/milyoner_models/milyoner_model.dart';
import 'package:game_bundlee/milyoner/milyoner_models/milyoner_question_model.dart';

class MillionaireGame extends StatelessWidget {
  const MillionaireGame({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(backgroundColor: Colors.black,
      body: QuestionScreen(),
    );
  }
}

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _QuestionScreenState createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  void checkAnswer(int selectedIndex) {
    if (!isAnswered) {
      setState(() {
          isAnswered = true;
          moveToNextQuestion();

      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
        image: AssetImage("assets/milyonerassets/kenan.png"),
        fit: BoxFit.fitWidth,
      )),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 350,),
          Text(
            questions[currentQuestionIndex].questionText,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 24.0, color: Colors.white),
          ),
          const SizedBox(height: 20.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: List.generate(
              questions[currentQuestionIndex].options.length,
              (index) {
                if (questions[currentQuestionIndex].options[index] != '') {
                  return GestureDetector(
                    
                      onTap: () {
                        if (!isAnswered) {
                          checkAnswer(index);
                        }
                      },
                      child: Stack(alignment: Alignment.center,
                        children: [

                          Padding(
                            padding: const EdgeInsets.only(top: 10,left: 35,right: 35),
                            child: Image.asset(
                              'assets/milyonerassets/şıklar.png',
                            ),
                          ),
                          
                          Text(questions[currentQuestionIndex].options[index],style: const TextStyle(color: Colors.white)),
                        ],
                      ));
                } else {
                  return const SizedBox.shrink();
                }
              },
            ),
          ),
          const SizedBox(height: 20.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  if (!isAnswered && !fiftyFiftyUsed) {
                    setState(() {
                      useFiftyFiftyJoker();
                    });
                  }
                },
                child: SizedBox(
                  width: 110,
                  child: !fiftyFiftyUsed ? Image.asset("assets/milyonerassets/fiftyfifty.png"):Image.asset("assets/milyonerassets/fiftyfiftycross.png") ,
                ),
              ),

              GestureDetector(
                onTap: () {
                  if (!isAnswered && !spectatorJokerUsed) {
                    showDialog(
                  context: context,
                  builder: (BuildContext context) {
                  return AlertDialog(
                  title: Column(
                  children: [
                    Text("${sizea+sizeb+sizec+sized}"),
                    Text("$sum"),
                  const SizedBox(height: 30,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                  Column(
                  children: [
                  AnimatedContainer(

                    duration: const Duration(seconds: 1),
                    curve: Curves.easeInOut,
                    width: 30,
                    height: sizea*2,
                    color: Colors.blue,
                  ),
                  const SizedBox(height: 10,),
                  const Text('A'),
                  Text("%$sizea")
                ],
              ),

              const SizedBox(width: 15),
              Column(
                children: [
                  AnimatedContainer(
                    duration: const Duration(seconds: 1),
                    curve: Curves.easeInOut,
                    width: 30.0,
                    height: sizeb*2,
                    color: Colors.blue,
                  ),
                  const SizedBox(height: 10,),
                  const Text('B'),
                  Text("%$sizeb")
                ],
              ),
              const SizedBox(width: 15),
              Column(
                children: [
                  AnimatedContainer(
                    duration: const Duration(seconds: 1),
                    curve: Curves.easeInOut,
                    width: 30.0,
                    height: sizec*2,
                    color: Colors.blue,
                  ),
                  const SizedBox(height: 10,),
                  const Text('C'),
                  Text("%$sizec")
                ],
              ),
              const SizedBox(width: 15),
              Column(
                children: [
                  Container(

                    width: 30.0,
                    height: sized*2,
                    color: Colors.blue,
                  ),
                  const SizedBox(height: 10,),
                  const Text('D'),
                  Text("%$sized")
                ],
              ),
              
            ],
          ),
        ],
      ),

                  actions: [
                    TextButton(
                      onPressed: () {
                      Navigator.of(context).pop();
                      },
                      child: const Text('Tamam'),
                      ),
                    ],
                   );
                  },
                );

                    setState(() {
                      useSpectatorJoker();
                    });
                  }
                },
                child: SizedBox(
                  width: 110,
                  child: !spectatorJokerUsed ? Image.asset("assets/milyonerassets/spectator.png"):Image.asset("assets/milyonerassets/spectatorcross.png"),
                ),
              ),
              GestureDetector(
                onTap: () {
                  if (!isAnswered && !phoneJokerUsed) {
                    setState(() {
                      usePhoneJoker();
                    });
                  }
                },
                child: SizedBox(
                  width: 110,
                  child: !phoneJokerUsed ? Image.asset("assets/milyonerassets/phone.png"):Image.asset("assets/milyonerassets/phonecross.png"),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
