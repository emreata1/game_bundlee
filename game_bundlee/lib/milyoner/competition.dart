// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:game_bundlee/milyoner/milyoner_models/milyoner_model.dart';
import 'package:game_bundlee/milyoner/milyoner_models/milyoner_question_model.dart';
import 'package:timer_count_down/timer_count_down.dart';

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

class _QuestionScreenState extends State<QuestionScreen> {
  void checkAnswer(int selectedIndex) {
    if (!isAnswered && selectedIndex == correctIndex) {
      setState(() {
        isAnswered = true;
        rewards[rewards.length-currentQuestionIndex-2].optioncolor=='assets/milyonerassets/şıklar2.png';
        rewards[rewards.length-currentQuestionIndex-1].optioncolor=='assets/milyonerassets/şıklar1.png';
        _showWidget();
        moveToNextQuestion();
      });
    }
  }

  void _showWidget() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(builder: (context, setState) {
          return SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(1.0, 0.0),
                end: Offset.zero,
              ).animate(
                CurvedAnimation(
                  parent: ModalRoute.of(context)!.animation!,
                  curve: Curves.easeInOut,
                ),
              ),
              child: Column(crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(
                    height: 100,
                  ),
                  Container(

                    width: 320,
                    height: 550,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: 10,
                        itemBuilder: (BuildContext context, int index) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Stack(alignment: Alignment.center,
                                children: [
                                  SizedBox(
                                      height: 50,
                                      child: Image.asset(
                                          'assets/milyonerassets/şıklar.png')),
                                  SizedBox(
                                      height: 50,
                                      child: Image.asset("${rewards[9-index].optioncolor}",
                                          )),   
                                      SizedBox(child: Text(rewards[index].rewardamount ,textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: 25),))
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              )
                            ],
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ));
        });
      },
    );
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
                              SizedBox(
                                height: 400,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        const SizedBox(
                                          width: 15,
                                        ),
                                        Column(
                                          children: [
                                            Text("%$sizea",
                                                style: const TextStyle(
                                                    color: Colors.white)),
                                            AnimatedContainer(
                                              duration:
                                                  const Duration(seconds: 1),
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
                                            Text("%$sizeb",
                                                style: const TextStyle(
                                                    color: Colors.white)),
                                            AnimatedContainer(
                                              duration:
                                                  const Duration(seconds: 1),
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
                                            Text("%$sizec",
                                                style: const TextStyle(
                                                    color: Colors.white)),
                                            AnimatedContainer(
                                              duration:
                                                  const Duration(seconds: 1),
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
                                            Text("%$sized",
                                                style: const TextStyle(
                                                    color: Colors.white)),
                                            AnimatedContainer(
                                              duration:
                                                  const Duration(seconds: 1),
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
                                        const SizedBox(
                                          width: 15,
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 90,
                                    )
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
                        return SlideTransition(
                            position: Tween<Offset>(
                              begin: const Offset(1.0, 0.0),
                              end: Offset.zero,
                            ).animate(CurvedAnimation(
                              parent: ModalRoute.of(context)!.animation!,
                              curve: Curves.easeInOut,
                            )),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                const SizedBox(
                                  height: 100,
                                  width: 100,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.pop(context);
                                    showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return StatefulBuilder(
                                            builder: (context, setState) {
                                          return SlideTransition(
                                            position: Tween<Offset>(
                                              begin: const Offset(1.0, 0.0),
                                              end: Offset.zero,
                                            ).animate(
                                              CurvedAnimation(
                                                parent: ModalRoute.of(context)!
                                                    .animation!,
                                                curve: Curves.easeInOut,
                                              ),
                                            ),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                const SizedBox(height: 100),
                                                SizedBox(
                                                  width: 300,
                                                  height: 350,
                                                  child: Stack(
                                                    children: [
                                                      GestureDetector(
                                                        child: Image.asset(
                                                            "assets/milyonerassets/phonejokerextended.png"),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .fromLTRB(135,
                                                                275, 130, 0),
                                                        child: Countdown(
                                                            seconds: 5,
                                                            build: (BuildContext
                                                                        context,
                                                                    double
                                                                        time) =>
                                                                Text(
                                                                    time
                                                                        .toInt()
                                                                        .toString(),
                                                                    style: const TextStyle(
                                                                        color: Colors
                                                                            .white,
                                                                        fontSize:
                                                                            40)),
                                                            onFinished: () {
                                                              Navigator.pop(
                                                                  context);
                                                            }),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Text(
                                                  questions[
                                                          currentQuestionIndex]
                                                      .options[questions[
                                                          currentQuestionIndex]
                                                      .correctOptionIndex],
                                                  style: const TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 40),
                                                ),
                                              ],
                                            ),
                                          );
                                        });
                                      },
                                    );
                                  },
                                  child: Image.asset(
                                      "assets/milyonerassets/phonejokerbackground.png",
                                      height: 170),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.pop(context);
                                    showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return StatefulBuilder(
                                            builder: (context, setState) {
                                          return SlideTransition(
                                            position: Tween<Offset>(
                                              begin: const Offset(1.0, 0.0),
                                              end: Offset.zero,
                                            ).animate(
                                              CurvedAnimation(
                                                parent: ModalRoute.of(context)!
                                                    .animation!,
                                                curve: Curves.easeInOut,
                                              ),
                                            ),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                const SizedBox(height: 100),
                                                SizedBox(
                                                  width: 300,
                                                  height: 350,
                                                  child: Stack(
                                                    children: [
                                                      GestureDetector(
                                                        child: Image.asset(
                                                            "assets/milyonerassets/phonejokerextended.png"),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .fromLTRB(135,
                                                                275, 130, 0),
                                                        child: Countdown(
                                                          seconds: 5,
                                                          build: (BuildContext
                                                                      context,
                                                                  double
                                                                      time) =>
                                                              Text(
                                                                  time
                                                                      .toInt()
                                                                      .toString(),
                                                                  style: const TextStyle(
                                                                      color: Colors
                                                                          .white,
                                                                      fontSize:
                                                                          40)),
                                                          interval:
                                                              const Duration(
                                                                  milliseconds:
                                                                      100),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Text(
                                                  questions[
                                                          currentQuestionIndex]
                                                      .options[questions[
                                                          currentQuestionIndex]
                                                      .correctOptionIndex],
                                                  style: const TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 40),
                                                ),
                                              ],
                                            ),
                                          );
                                        });
                                      },
                                    );
                                  },
                                  child: Image.asset(
                                      "assets/milyonerassets/phonejokerbackground.png",
                                      height: 170),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.pop(context);
                                    showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return StatefulBuilder(
                                            builder: (context, setState) {
                                          return SlideTransition(
                                            position: Tween<Offset>(
                                              begin: const Offset(1.0, 0.0),
                                              end: Offset.zero,
                                            ).animate(
                                              CurvedAnimation(
                                                parent: ModalRoute.of(context)!
                                                    .animation!,
                                                curve: Curves.easeInOut,
                                              ),
                                            ),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                const SizedBox(height: 100),
                                                SizedBox(
                                                  width: 300,
                                                  height: 350,
                                                  child: Stack(
                                                    children: [
                                                      GestureDetector(
                                                        child: Image.asset(
                                                            "assets/milyonerassets/phonejokerextended.png"),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .fromLTRB(135,
                                                                275, 130, 0),
                                                        child: Countdown(
                                                          seconds: 10,
                                                          build: (BuildContext
                                                                      context,
                                                                  double
                                                                      time) =>
                                                              Text(
                                                                  time
                                                                      .toInt()
                                                                      .toString(),
                                                                  style: const TextStyle(
                                                                      color: Colors
                                                                          .white,
                                                                      fontSize:
                                                                          40)),
                                                          interval:
                                                              const Duration(
                                                                  milliseconds:
                                                                      100),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Text(
                                                  questions[
                                                          currentQuestionIndex]
                                                      .options[questions[
                                                          currentQuestionIndex]
                                                      .correctOptionIndex],
                                                  style: const TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 40),
                                                ),
                                              ],
                                            ),
                                          );
                                        });
                                      },
                                    );
                                  },
                                  child: Image.asset(
                                      "assets/milyonerassets/phonejokerbackground.png",
                                      height: 170),
                                ),
                              ],
                            ));
                      },
                    );
                    setState(() {
                      usePhoneJoker();
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
