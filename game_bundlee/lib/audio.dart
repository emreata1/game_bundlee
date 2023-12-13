import 'package:audioplayers/audioplayers.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:async';

bool isVolumeOn = true;
bool enerciMod = false;
final player =AudioPlayer();

Timer? delayTimer; // Geçikme için Timer nesnesi

void oynat() {
    if (enerciMod) {
      player.play(AssetSource('enerci.mp3'));
    } else {
      player.play(AssetSource('startacult.mp3'));
    }  
}

void dur() {
    player.stop();
}

soundStatusRead() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  isVolumeOn = prefs.getBool('isVolumeOn') ?? true;
  print("okundu");
}

soundStatusSave(bool isVolumeOn) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  await prefs.setBool('isVolumeOn', isVolumeOn);
  print("Kaydedildi");
}

