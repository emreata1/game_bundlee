

import 'package:flutter/material.dart';
import 'package:game_bundlee/Models/chapters_model.dart';
import 'package:game_bundlee/audio.dart';
import 'package:game_bundlee/main.dart';

class QuestionPage extends StatefulWidget {
  const QuestionPage({Key? key, }) : super(key: key);

  @override
  State<QuestionPage> createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {
  bool isVolumeOn = true;
  @override
  void initState() {
    super.initState();
    oynat(); // Sayfa açıldığında oynat fonksiyonunu çağır
  }
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 3, 196, 255),
      appBar: AppBar(
  leading: IconButton(
    icon: const Icon(Icons.home), 
    onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => const MyHomePage()),
          );
        },

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
        oynat();
        isVolumeOn=!isVolumeOn;
      }

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
                return ListTile(
                 contentPadding: const EdgeInsets.symmetric(horizontal: 20),
            
                  onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => chapter.chapternum,
                    ),
                  ),
                  tileColor: Colors.white70,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    side: BorderSide(width: 3, color: Colors.white54),
                  ),
                  title: const Column(
                    children: [
                      SizedBox(height: 40),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        
                      ),
                    ],
                  ),
                  subtitle: Padding( 
                    
                      padding: const EdgeInsetsDirectional.symmetric(vertical: 4),
                      child: Row(mainAxisAlignment: MainAxisAlignment.center, 
                        children: [
                          Icon(chapter.logo[0],color: Colors.yellow,size: 20),
                          Icon(chapter.logo[1],color: Colors.yellow,size: 20),
                          Icon(chapter.logo[2],color: Colors.yellow,size: 20),
                        ],
                      )),
                );
              }).toList(),
            ),
          ),
          const SizedBox(
            height: 120,
          ),
        ],
      ),
    );
    
  }
}
