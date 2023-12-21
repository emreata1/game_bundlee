import 'dart:async';

import 'package:flutter/material.dart';
import 'package:game_bundlee/milyoner/milyoner_models/milyoner_model.dart';
import 'package:game_bundlee/milyoner/milyoner_models/milyoner_question_model.dart';

class MillionaireGame extends StatelessWidget {
  const MillionaireGame({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
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
int timeleft=5;

class _QuestionScreenState extends State<QuestionScreen> {
  void startTimer() {
  Timer.periodic(Duration(seconds: 1), (timer) {
    if (timeleft > 0) {
      setState(() {
        timeleft--;
      });
    } else {
      timer.cancel(); // Zaman dolduğunda istediğiniz işlemleri yapabilirsiniz.
    }
  });
}

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
          const SizedBox(
            height: 350,
          ),
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
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 10, left: 35, right: 35),
                            child: Image.asset(
                              'assets/milyonerassets/şıklar.png',
                            ),
                          ),
                          Text(questions[currentQuestionIndex].options[index],
                              style: const TextStyle(color: Colors.white)),
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
                  child: !fiftyFiftyUsed
                      ? Image.asset("assets/milyonerassets/fiftyfifty.png")
                      : Image.asset(
                          "assets/milyonerassets/fiftyfiftycross.png"),
                ),
              ),
              GestureDetector(
                onTap: () {
                  if (!isAnswered && !spectatorJokerUsed) {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Stack( 
                            alignment: Alignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(30.0),
                                child: Image.asset(
                                    "assets/milyonerassets/spectatorbackground.png"),
                              ),
                              SizedBox(height: 400,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        const SizedBox(width: 15,),
                                        Column(
                                          children: [
                                            Text("%$sizea",style: const TextStyle(color: Colors.white)),
                                            AnimatedContainer(
                                              duration: const Duration(seconds: 1),
                                              curve: Curves.easeInOut,
                                              width: 30,
                                              height: sizea * 2.3,
                                              color: Colors.blue,
                                            ),
                                            const SizedBox(
                                              height: 50,
                                            ),
                                                          
                                          ],
                                        ),
                                                          
                                        Column(
                                          children: [
                                            Text("%$sizeb",style: const TextStyle(color: Colors.white)),
                                            AnimatedContainer(
                                              duration: const Duration(seconds: 1),
                                              curve: Curves.easeInOut,
                                              width: 30.0,
                                              height: sizeb * 2.3,
                                              color: Colors.blue,
                                            ),
                                            const SizedBox(
                                              height: 50,
                                            ),
                                          ],
                                        ),
                                                          
                                        Column(
                                          children: [
                                            Text("%$sizec",style: const TextStyle(color: Colors.white)),
                                            AnimatedContainer(
                                              duration: const Duration(seconds: 1),
                                              curve: Curves.easeInOut,
                                              width: 30.0,
                                              height: sizec * 2.3,
                                              color: Colors.blue,
                                            ),
                                            const SizedBox(
                                              height: 50,
                                            ),
                                          ],
                                        ),
                                                          
                                        Column(
                                          children: [
                                            Text("%$sized",style: const TextStyle(color: Colors.white)),
                                            AnimatedContainer(
                                              duration: const Duration(seconds: 1),
                                              curve: Curves.easeInOut,
                                              width: 30.0,
                                              height: sized * 2.3,
                                              color: Colors.blue,
                                            ),
                                            const SizedBox(
                                              height: 50,
                                            ),
                                          ],
                                        ),
                                        const SizedBox(width: 15,),
                                      ],
                                    ),
                                    const SizedBox(height: 90,)
                                  ],
                                ),
                              ),
                            ],
                          ),
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
                  child: !spectatorJokerUsed
                      ? Image.asset("assets/milyonerassets/spectator.png")
                      : Image.asset("assets/milyonerassets/spectatorcross.png"),
                ),
              ),

              GestureDetector(
                onTap: () {
                  if (!isAnswered && !phoneJokerUsed) {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return SlideTransition(position: Tween<Offset>(
                      begin: Offset(1.0, 0.0),
                      end: Offset.zero,
                    ).animate(CurvedAnimation(
                      parent: ModalRoute.of(context)!.animation!,
                      curve: Curves.easeInOut,
                    )),
                    child: Column(crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        SizedBox(height: 100,width: 100,),

                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                            setState(() {
                              startTimer();
                            });
                            showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return SlideTransition(position: Tween<Offset>(
                      begin: Offset(1.0, 0.0),
                      end: Offset.zero,
                    ).animate(CurvedAnimation(
                      parent: ModalRoute.of(context)!.animation!,
                      curve: Curves.easeInOut,
                    )),
                    child: Column(crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: 100,),
                        SizedBox(width: 300,height: 350,
                          child: Stack(children: [
                            
                            GestureDetector(child: Image.asset("assets/milyonerassets/phonejokerextended.png",),),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(132, 267, 130, 0),
                              child: Text(timeleft.toString(),style: TextStyle(color: Colors.white,fontSize: 50),),
                            ),
                          
                          ]
                                                 ),
                        )
                      ],
                     )
                    );
                  },
                );
              },
              child: Image.asset("assets/milyonerassets/phonejokerbackground.png",height: 170,)
            ),
                          SizedBox(height: 20,),
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                            showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return SlideTransition(position: Tween<Offset>(
                      begin: Offset(1.0, 0.0),
                      end: Offset.zero,
                    ).animate(CurvedAnimation(
                      parent: ModalRoute.of(context)!.animation!,
                      curve: Curves.easeInOut,
                    )),
                    child: Column(crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: 100,width: 100,),
                        GestureDetector(child: Image.asset("assets/milyonerassets/phonejokerextended.png",width: 300),)

                      
                      ],
                     )
                    );
                  },
                );
              },
              child: Image.asset("assets/milyonerassets/phonejokerbackground.png",height: 170,)
            ),
                           SizedBox(height: 20,),
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                            showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return SlideTransition(position: Tween<Offset>(
                      begin: Offset(1.0, 0.0),
                      end: Offset.zero,
                    ).animate(CurvedAnimation(
                      parent: ModalRoute.of(context)!.animation!,
                      curve: Curves.easeInOut,
                    )),
                    child: Column(crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: 100,width: 100,),
                        GestureDetector(child: Image.asset("assets/milyonerassets/phonejokerextended.png",width: 300),)

                      
                      ],
                     )
                    );
                  },
                );
              },
              child: Image.asset("assets/milyonerassets/phonejokerbackground.png",height: 170,)
            ),
           ],
          )
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
                  child: !phoneJokerUsed
                      ? Image.asset("assets/milyonerassets/phone.png")
                      : Image.asset("assets/milyonerassets/phonecross.png"),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
