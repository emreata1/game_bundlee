import 'package:audioplayers/audioplayers.dart';
import 'package:game_bundlee/quiz/quiz_Models/quiz_audio.dart';

bool isVolumeOn = true;
bool enerciMod = false;


void oynatmil() {
    
      player.play(AssetSource('assets/milyonerassets/mainsoundtrack.mp3'));
      
}

void durmil() {
    player.stop();
}



