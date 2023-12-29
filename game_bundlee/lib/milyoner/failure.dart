// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:game_bundlee/audio.dart';
import 'package:game_bundlee/milyoner/milyoner_models/milyoner_model.dart';
import 'package:game_bundlee/milyoner/milyonermain.dart';

class Failure extends StatefulWidget {
  const Failure({super.key});

  @override
  State<Failure> createState() => _FailureState();
}

class _FailureState extends State<Failure> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(width: 500,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/milyonerassets/background.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 100,),
          SizedBox(height: 250,child: Image.asset('assets/milyonerassets/milyoneric.png')),
          SizedBox(height: 50,),
          Stack(alignment: Alignment.center,
            children: [
              
              SizedBox(
                  width: 350,height: 100,
                  child: Image.asset('assets/milyonerassets/şıklar.png')),
              Text("TEBRİKLER!",style: const TextStyle(color: Colors.white, fontSize: 25),
               )
            ],
          ),
          SizedBox(height: 20,),
          Stack(alignment: Alignment.center,
            children: [
              SizedBox(
                  width: 300,
                  child: Image.asset('assets/milyonerassets/şıklar.png')),
              Text("Kazanılan Miktar ",style: const TextStyle(color: Colors.white, fontSize: 25),
               )
            ],
          ),
          SizedBox(height: 10,),
          Stack(alignment: Alignment.center,
            children: [
              SizedBox(
                  width: 300,
                  child: Image.asset('assets/milyonerassets/şıklar.png')),
              Text("$baraj TL",style: const TextStyle(color: Colors.white, fontSize: 25),
               )
            ],
          ),
          SizedBox(height: 15,),
          IconButton(
    icon: const Icon(Icons.home,color: Colors.white,size: 40), 
    onPressed: () {
      playagain();
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => const MilyonerMain(),));},
  ),
        ],
      ),
    ));
  }
}
