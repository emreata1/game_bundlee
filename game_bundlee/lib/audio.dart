import 'package:audioplayers/audioplayers.dart';
import 'package:shared_preferences/shared_preferences.dart';

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


soundStatusRead() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  isVolumeOn = prefs.getBool('isVolumeOn') ?? true;
}

soundStatusSave(bool isVolumeOn) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  await prefs.setBool('isVolumeOn', isVolumeOn);
}

