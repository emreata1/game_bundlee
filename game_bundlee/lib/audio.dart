import 'package:audioplayers/audioplayers.dart';
import 'package:game_bundlee/milyoner/milyoner_models/milyoner_question_model.dart';
import 'package:shared_preferences/shared_preferences.dart';
String kaynak = rewards[9].sound;
bool isVolumeOn = true;
bool enerciMod = false;
final player =AudioPlayer();
void oynatquiz() {
    if (enerciMod) {
      player.play(AssetSource('enerci.mp3'));
    } else {
      player.play(AssetSource('startacult.mp3'));
    }  
}

void dur() {
    player.stop();
}

void oynatmil() {
    
      player.play(AssetSource('mainsoundtrack.mp3'));
      
}

Future<void> oynatdogru() async {
  await Future.delayed(const Duration(milliseconds: 300), () {
   dur();
  });
     await Future.delayed(const Duration(milliseconds: 100));
     player.play(AssetSource('win.mp3'));
}

Future<void> oynatyanlis() async {
  await Future.delayed(const Duration(milliseconds: 300), () {
    dur();
  });
     await Future.delayed(const Duration(milliseconds: 100), () {
    player.play(AssetSource('lose.mp3'));

  });
     
}


void oynatsoru() {
    player.play(AssetSource(kaynak));
  
}



soundStatusRead() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  isVolumeOn = prefs.getBool('isVolumeOn') ?? true;
}

soundStatusSave(bool isVolumeOn) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  await prefs.setBool('isVolumeOn', isVolumeOn);
}

