import 'package:flutter/material.dart';
import 'package:game_bundlee/milyoner/nasil_oyna.dart';
import 'package:game_bundlee/milyoner/competition.dart';

class MilyonerMain extends StatefulWidget {
  const MilyonerMain({Key? key}) : super(key: key);

  @override
  State<MilyonerMain> createState() => _MilyonerMainState();
}

class _MilyonerMainState extends State<MilyonerMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/background.png"),
          fit: BoxFit.cover, // Resmi boyutlandırma yöntemi
        ),
      ),
      child: Column(
        children: [
          const SizedBox(height: 90,),
          ListTile(
            contentPadding: const EdgeInsets.only(left: 40, right: 40),
            title: Image.asset("assets/milyoneric.png"),
          ),
          const SizedBox(
            height: 80,
          ),
          ListTile(
            title: Image.asset("assets/başla.png"),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const MillionaireGame()),
              );
            },
          ),
          ListTile(
            title: Image.asset("assets/nasıl.png"),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => const NasilOyna()));
              
            },
          ),
          ListTile(
            title: Image.asset("assets/info.png"),
            onTap: () {
             Navigator.of(context).pop();
            },
          ),
        ],
      ),
    ));
  }
}
