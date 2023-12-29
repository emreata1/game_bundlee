import 'package:flutter/material.dart';
import 'package:game_bundlee/audio.dart';
import 'package:game_bundlee/milyoner/failure.dart';
import 'package:game_bundlee/milyoner/milyoner_models/milyoner_model.dart';
import 'package:game_bundlee/milyoner/milyoner_models/milyoner_question_model.dart';
import 'package:timer_count_down/timer_count_down.dart';

int selected = -1;

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
  Future<void> checkAnswer(int selectedIndex) async {
    selected = selectedIndex;
    if (!isAnswered && selectedIndex == correctIndex) {
      oynatdogru();
      barajguncelle();
    if(currentQuestionIndex==9){
      
      Navigator.push(context, MaterialPageRoute(builder: (context) => Failure(),));}
    else {
      setState(() {
        isAnswered = true;
        rewards[rewards.length - currentQuestionIndex - 2].optioncolor =
            'assets/milyonerassets/şıklar1.png';
        rewards[rewards.length - currentQuestionIndex - 1].optioncolor =
            'assets/milyonerassets/şıklar2.png';
      });

      await Future.delayed(const Duration(milliseconds: 3000));
      _showWidget();
      setState(() {});
      moveToNextQuestion();}
    } else if (!isAnswered && selectedIndex != correctIndex) {
      oynatyanlis();
      setState(() {
      });
      await Future.delayed(const Duration(milliseconds: 1000));
      // ignore: use_build_context_synchronously
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => const Failure()));
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
              child: Container(
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                            "assets/milyonerassets/background.png"))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 150,
                    ),
                    SizedBox(
                      width: 325,
                      height: 550,
                      child: ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: 10,
                        itemBuilder: (BuildContext context, int index) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Stack(
                                alignment: Alignment.center,
                                children: [
                                  SizedBox(
                                      height: 50,
                                      child: Image.asset(
                                          'assets/milyonerassets/şıklar.png')),
                                  SizedBox(
                                      height: 50,
                                      child: Image.asset(
                                        rewards[index].optioncolor,
                                      )),
                                  SizedBox(
                                      child: Text(
                                    rewards[index].rewardamount,
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                        color: Colors.white, fontSize: 25),
                                  ))
                                ],
                              ),
                              const SizedBox(
                                height: 5,
                              )
                            ],
                          );
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                            onTap: () => Navigator.pop(context),
                            child: Image.asset(
                              "assets/milyonerassets/goback.png",
                              width: 120,
                            )),
                        const SizedBox(
                          width: 20,
                        ),
                        
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Failure()));
                          },
                            child: Stack(children: [
                          Image.asset("assets/milyonerassets/bos.png",
                              width: 120),
                          const Padding(
                            padding: EdgeInsets.only(left: 42, top: 12),
                            child: Text(
                              "Çekil",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 17),
                              textAlign: TextAlign.center,
                            ),
                          )
                        ])),
                      ],
                    ),
                  ],
                ),
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
        //mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 40,
          ),
          Stack(
            alignment: Alignment.center,
            children: [
              SizedBox(
                width: 300,
                height: 40,
                child: Image.asset(
                  'assets/milyonerassets/şıklar.png',
                ),
              ),
              Text(
                "${1 + currentQuestionIndex}.Soru  -  ${rewards[9 - currentQuestionIndex].rewardamount} TL",
                style: const TextStyle(color: Colors.white),
              ),
            ],
          ),
          const SizedBox(
            height: 300,
          ),
          Text(
            questions[randoms].questionText,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 20.0, color: Colors.white),
          ),
          const SizedBox(height: 20.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: List.generate(
              questions[randoms].options.length,
              (index) {
                if (questions[randoms].options[index] != '') {
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
                          if (correctIndex == index && isAnswered)
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 10, left: 35, right: 35),
                              child: Image.asset(
                                'assets/milyonerassets/şıklar2.png',
                              ),
                            ),
                          
                          if (index != correctIndex && selected == index && isAnswered)
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 10, left: 35, right: 35),
                              child: Image.asset(
                                'assets/milyonerassets/şıklar1.png',
                              ),
                            ),
                          Text(questions[randoms].options[index],
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
                                              oynatjoker1();
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
                                                  questions[randoms]
                                                      .options[correctIndex],
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
                                                            "assets/milyonerassets/gerginextended.png"),
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
                                                                      onFinished: () {
                                                              Navigator.pop(
                                                                  context);
                                                            }
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
                                      "assets/milyonerassets/gergin.png",
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
                                                                      onFinished: () {
                                                              Navigator.pop(
                                                                  context);
                                                            }
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
