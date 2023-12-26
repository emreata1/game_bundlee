import 'package:quickalert/quickalert.dart';
import 'package:flutter/material.dart';
import 'package:game_bundlee/audio.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';
import 'dart:async';

Timer? delayTimer;
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
          const SizedBox(height: 110,),
          Padding(
            padding:
                const EdgeInsets.only(left: 60, right: 60),
            child: ListTile(
              contentPadding: const EdgeInsets.only(
                  top: 10, bottom: 10,left: 10,right: 10),
              tileColor: Colors.white,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                side: BorderSide(width: 2, color: Colors.white54),
              ),
              title: LiteRollingSwitch(
                width: 267,
                textOnColor: Colors.white,
                colorOff: const Color.fromARGB(255, 214, 16, 112),
                value: isVolumeOn,
                textOn: 'Ses Açık',
                textOff: '     Sessiz',
                iconOn: Icons.volume_up,
                iconOff: Icons.volume_off,
                textSize: 20,
                onChanged: (bool state) {},
                onTap: () {
        
                    if(!isVolumeOn){oynatquiz();}
                    else if(isVolumeOn){dur();}
                    isVolumeOn=!isVolumeOn;
                    soundStatusSave(isVolumeOn);
                    }, 
              ),
              ),),
          const SizedBox(height: 30,),
          const Padding(
            padding:
                EdgeInsets.only(left: 60, right: 60),
            child: ListTile(
              contentPadding: EdgeInsets.only(
                  top: 12, bottom: 12, right: 7, left: 45),
              tileColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                side: BorderSide(width: 2, color: Colors.white54),
              ),
            ),
          ),
          const SizedBox(height: 30,),
          Padding(
            padding:
                const EdgeInsets.only(left: 60, right: 60),
            child: ListTile(
              onTap: (){
                if(enerciMod==false){
                  QuickAlert.show(
              disableBackBtn: false,
               context: context,
               title: 'Emin Misin?',
               text: 'Bu yol karanlık ve dönülmez bir yoldur', type: QuickAlertType.confirm,
               confirmBtnText: 'Onayla',
               cancelBtnText: 'İptal',
               onConfirmBtnTap: () => QuickAlert.show(
               context: context,
               title: 'Buna Hazır Mısın?',
               text: 'Hala Geri Dönebilirsin', type: QuickAlertType.confirm,
               confirmBtnText: 'Enerci Ver',
               cancelBtnText: 'İptal',
               onConfirmBtnTap: () {
                setState(() { 
                dur();
                enerciMod=true;
                delayTimer = Timer(const Duration(seconds: 1), () {
                  oynatquiz(); });
             });

               }, 
             )
             );}
             else if(enerciMod==true){QuickAlert.show(
               context: context,
               title: 'Dayanamadın Değil Mi??',
               text: 'Tabiki Geri Dönebilirsin', type: QuickAlertType.confirm,
               confirmBtnText: 'Kurtar Beni',
               cancelBtnText: 'İptal',
               onConfirmBtnTap: () {
                setState(() { 
                dur();
                enerciMod=false;
                delayTimer = Timer(const Duration(seconds: 1), () {
                 oynatquiz(); });
              });
               }, 
             );}
           },
           
              contentPadding: const EdgeInsets.only(
                  top: 7, bottom: 7,left:20),
              tileColor: Colors.white,
              title:Row( mainAxisAlignment: MainAxisAlignment.center,
               children: [const Text("Enerci MOD",style: TextStyle(fontSize: 25),),
              const SizedBox(width: 10,),
              Icon(
                  enerciMod ? Icons.flash_on_rounded : Icons.flash_off_rounded,
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
