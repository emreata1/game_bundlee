import 'package:flutter/material.dart';

class NasilOyna extends StatefulWidget {
  const NasilOyna({super.key});

  @override
  State<NasilOyna> createState() => _NasilOynaState();
}

class _NasilOynaState extends State<NasilOyna> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/milyonerassets/background.png"),
          fit: BoxFit.cover, 
        
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40.0, right: 350),
            child: IconButton(
              icon: Icon(
                Icons.home_rounded,
                color: Colors.deepPurple.shade300,
                size: 30,
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ),
          const SizedBox(height: 40),
          ListTile(
            title: Image.asset("assets/milyonerassets/nasıl.png"),
          ),
          const SizedBox(height: 60),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    children: [
                      SizedBox(width: 40),
                      Text(
                        "Toplam 10 soruya doğru cevap vererek 5 Milyon TL \nkazanabilirsin. Cevaplamakta Zorlandığın zaman 3\nJoker hakkından birini kullanabilirsin bunlar :",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                        softWrap: true,
                      ),
                    ],
                  ),
                   const SizedBox(height: 20),
                  Row(
                    children: [
                      Image.asset("assets/milyonerassets/spectatorsettings.png",
                          width: 100, height: 100),
                      const SizedBox(width: 10),
                      const Text("İzleyiciye Sorma : Bu Joker ile cevabı\nizleyiciye sorabilirsin",
                          style: TextStyle(color: Colors.white)),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Image.asset("assets/milyonerassets/phonesettings.png",
                          width: 100, height: 100),
                      const SizedBox(width: 10),
                      const Text("Telefon Jokeri : Soruyu bir arkadaşına\nsorabilirsin",
                          style: TextStyle(color: Colors.white)),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Image.asset("assets/milyonerassets/fiftyfiftysettings.png",
                          width: 100, height: 100),
                      const SizedBox(width: 10),
                      const Text("Yarı Yarıya : Bu Joker hakkı yanlış olan\niki seçeneği siler",
                          style: TextStyle(color: Colors.white)),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
