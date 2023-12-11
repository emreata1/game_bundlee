import 'package:audioplayers/audioplayers.dart';

final player =AudioPlayer();
void oynat(){
  print("oynat çalıştı");
  player.play(AssetSource('enerci.mp3'));
}

void dur()  {
  print("dur çalıştı");
  player.stop();

}

