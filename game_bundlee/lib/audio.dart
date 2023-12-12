import 'package:audioplayers/audioplayers.dart';
import 'package:shared_preferences/shared_preferences.dart';
bool isVolumeOn = true;
final player =AudioPlayer();
void oynat(){

  player.play(AssetSource('enerci.mp3'));
}

void dur()  {

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

