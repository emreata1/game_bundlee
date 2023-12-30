import 'package:flutter/material.dart';
import 'package:game_bundlee/quiz/quiz_Models/chapters_model.dart';
import 'package:game_bundlee/audio.dart';
import 'package:game_bundlee/quiz/quiz_main.dart';

class QuestionPage extends StatefulWidget {
  const QuestionPage({Key? key, }) : super(key: key);
  @override
  State<QuestionPage> createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {
  @override

  

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 3, 196, 255),
      appBar: AppBar(
  leading: IconButton(
    icon: const Icon(Icons.home), 
    onPressed: () {Navigator.of(context).push(MaterialPageRoute(builder: (context) => const QuizHomePage(),));},
  ),
  actions: [
    

IconButton(
  icon: isVolumeOn ? const Icon(Icons.volume_up) : const Icon(Icons.volume_off),
  onPressed: () {
    setState(() {
      if (isVolumeOn) {
        dur();   
         isVolumeOn=!isVolumeOn;
      } else {
        oynatquiz();
        isVolumeOn=!isVolumeOn;
      }
      soundStatusSave(isVolumeOn);
    });
  },
 ),
],
  centerTitle: true,
  backgroundColor: const Color.fromARGB(255, 3, 196, 255),
  title: const Text('Bölümler'),
),
      body: Column(
        children: [
          const SizedBox(
            height: 80,
          ),
          Expanded(
            child: GridView.count(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              crossAxisCount: 3,
              crossAxisSpacing: 10,
              mainAxisSpacing: 60,
              children: Chapters.chapter.map((chapter) {
                return Stack(
                  children: [
                    Center(child: SizedBox(height: 120,width: 110,child: Image.asset(chapter.image,))),
                    ListTile(
                     contentPadding: const EdgeInsets.symmetric(vertical: 5,horizontal: 13),
                      onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => chapter.chapternum,
                        ),
                      ),
                      tileColor: chapter.colortile,
                                  shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        side: BorderSide(width: 3, color: Colors.white54),
                      ),
                      title:const SizedBox(height: 145,width: 145),
                    
                    

                      subtitle: Padding( 
                          padding: const EdgeInsetsDirectional.symmetric(vertical: 10),
                          child: Row(mainAxisAlignment: MainAxisAlignment.center, 
                            children: [
                              Icon(chapter.logo[0],color: Colors.yellow,size: 25),
                              Icon(chapter.logo[1],color: Colors.yellow,size: 25),
                              Icon(chapter.logo[2],color: Colors.yellow,size: 25),
                            ],
                      )),
                    ),
                  ],
                );
              }).toList(),
            ),
          ),
          const SizedBox(height: 120,),
        ],
      ),
    );
    
  }
}
