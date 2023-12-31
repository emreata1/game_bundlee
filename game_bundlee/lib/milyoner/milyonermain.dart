import 'package:flutter/material.dart';
import 'package:game_bundlee/main.dart';
import 'package:game_bundlee/milyoner/milyoner_models/milyoner_model.dart';

import 'package:game_bundlee/milyoner/nasil_oyna.dart';
import 'package:game_bundlee/milyoner/competition.dart';
import 'package:game_bundlee/audio.dart';

class MilyonerMain extends StatefulWidget {
  const MilyonerMain({Key? key}) : super(key: key);

  @override
  State<MilyonerMain> createState() => _MilyonerMainState();
}

class _MilyonerMainState extends State<MilyonerMain> {

  /*@override
  void initState() {
    super.initState();
    if(isVolumeOn){
    oynatmil(); 
  }}*/

  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/milyonerassets/background.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          const SizedBox(height: 90,),
          ListTile(
            contentPadding: const EdgeInsets.only(left: 40, right: 40),
            title: Image.asset("assets/milyonerassets/milyoneric.png"),
          ),
          const SizedBox(
            height: 80,
          ),
          ListTile(
            title: Image.asset("assets/milyonerassets/başla.png"),
            onTap: () {
              oynatsoru();
              playagain();
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const MillionaireGame()),
              );
              
            },
          ),
          ListTile(
            title: Image.asset("assets/milyonerassets/nasıl.png"),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => const NasilOyna()));
              
            },
          ),
          ListTile(
            title: Image.asset("assets/milyonerassets/info.png"),
            onTap: () {
              dur();
             Navigator.of(context).push(MaterialPageRoute(builder: (context) => const MyHomePage(),));
            },
          ),
        ],
      ),
    ));
  }
}
