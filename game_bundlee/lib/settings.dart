// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:game_bundlee/audio.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});
  
  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        
  
  
  centerTitle: true,
  backgroundColor: const Color.fromARGB(255, 214, 16, 112),
  title: const Text('Ayarlar'),
),

      backgroundColor: const Color.fromARGB(255, 214, 16, 112),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 110,),
          Padding(
            padding:
                const EdgeInsets.only(left: 60, right: 60),
            child: ListTile(
              
              contentPadding: const EdgeInsets.only(
                  top: 10, bottom: 10,left: 5,right: 5),
              tileColor: Colors.white,
              
              trailing: LiteRollingSwitch(
                
                width: 255,
                textOnColor: Colors.white,
      colorOff: Color.fromARGB(255, 214, 16, 112),
      value: isVolumeOn,
      textOn: 'Ses Açık',
      textOff: '     Sessiz',
      iconOn: Icons.volume_up,
      iconOff: Icons.volume_off,
      textSize: 20,
      
      onChanged: (bool state) {

      }, 
      onTap: () {
        
        if(!isVolumeOn){oynat();}
        else if(isVolumeOn){dur();}
        isVolumeOn=!isVolumeOn;
    }, 

    ),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                side: BorderSide(width: 2, color: Colors.white54),
              ),
            ),
          ),
          SizedBox(height: 30,),
          Padding(
            
            padding:
                const EdgeInsets.only(left: 60, right: 60),
            child: ListTile(
              
              contentPadding: const EdgeInsets.only(
                  top: 12, bottom: 12, right: 7, left: 45),
              tileColor: Colors.white,
              leading: const Icon(
                Icons.dangerous,
                size: 50,
                color: Colors.red,
              ),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                side: BorderSide(width: 2, color: Colors.white54),
              ),
            ),
          ),
          SizedBox(height: 30,),
          Padding(
            
            padding:
                const EdgeInsets.only(left: 60, right: 60),
            child: ListTile(
              
              contentPadding: const EdgeInsets.only(
                  top: 7, bottom: 7,left:20),
              tileColor: Colors.white,
              title:Row( mainAxisAlignment: MainAxisAlignment.center,
               children: [Text("Enerci MOD",style: TextStyle(fontSize: 25),),
              SizedBox(width: 10,),
              const Icon(
                Icons.flash_on_rounded,
                size: 50,
                color: Colors.red,
              ),],),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                side: BorderSide(width: 2, color: Colors.white54),
              ),
            ),
          ),
          
          
          
        ],
      ),
    );
  }
}
