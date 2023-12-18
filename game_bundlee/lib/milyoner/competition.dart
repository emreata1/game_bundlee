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
        image: AssetImage("assets/kenan.png"),
        fit: BoxFit.fitWidth,
      )),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 350,),
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
                              'assets/şıklar.png',
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
                  child: Image.asset("assets/yarıyarıyaa.png"),
                ),
              ),
              GestureDetector(
                onTap: () {
                  if (!isAnswered && !audienceJokerUsed) {
                    setState(() {
                      useAudienceJoker();
                    });
                  }
                },
                child: SizedBox(
                  width: 110,
                  child: Image.asset("assets/seyirciyee.png"),
                ),
              ),
              GestureDetector(
                onTap: () {
                  if (!isAnswered && !skipQuestionUsed) {}
                },
                child: SizedBox(
                  width: 110,
                  child: Image.asset("assets/telefonn.png"),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
