import 'package:audioplayers/audioplayers.dart';
bool isVolumeOn = true;
final player =AudioPlayer();
void oynat(){

  player.play(AssetSource('enerci.mp3'));
}

void dur()  {

  player.stop();

}

