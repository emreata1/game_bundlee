import 'dart:math';

import 'package:game_bundlee/milyoner/milyoner_models/milyoner_model.dart';

var questions=questions1;
var randoms=randoms1;

int randoms1=Random().nextInt(10);
int randoms2=Random().nextInt(10);
int randoms3=Random().nextInt(10);
int randoms4=Random().nextInt(10);
int randoms5=Random().nextInt(10);
int randoms6=Random().nextInt(10);
int randoms7=Random().nextInt(10);
int randoms8=Random().nextInt(10);
int randoms9=Random().nextInt(10);
int randoms10=Random().nextInt(10);
 class Reward {
    final String rewardamount;
    String optioncolor;
    String sound;
    Reward({required this.rewardamount, required this.optioncolor,required this.sound});
  }

  List<Reward> rewards=[
    Reward(rewardamount: "5.000.000", optioncolor: 'assets/milyonerassets/şıklar3.png', sound: '10soru.mp3'),
    Reward(rewardamount: "1.000.000", optioncolor: 'assets/milyonerassets/şıklar3.png', sound: '9soru.mp3'),
    Reward(rewardamount: "500.000", optioncolor: 'assets/milyonerassets/şıklar3.png', sound: '8soru.mp3'),
    Reward(rewardamount: "250.000", optioncolor: 'assets/milyonerassets/şıklar3.png', sound: '7soru.mp3'),
    Reward(rewardamount: "120.000", optioncolor: 'assets/milyonerassets/şıklar3.png', sound: '6soru.mp3'),
    Reward(rewardamount: "60.000", optioncolor: 'assets/milyonerassets/şıklar3.png', sound: '5soru.mp3'),
    Reward(rewardamount: "30.000", optioncolor: 'assets/milyonerassets/şıklar3.png', sound: '4soru.mp3'),
    Reward(rewardamount: "15.000", optioncolor: 'assets/milyonerassets/şıklar3.png', sound: '3soru.mp3'),
    Reward(rewardamount: "7.500", optioncolor: 'assets/milyonerassets/şıklar3.png', sound: '1soru.mp3'),
    Reward(rewardamount: "3.000", optioncolor: 'assets/milyonerassets/şıklar3.png', sound: '1soru.mp3'),
];

class Question {
  final String questionText;
  final List<String> options;
  final int correctOptionIndex;

  Question({required this.questionText, required this.options, required this.correctOptionIndex});
}


List<Question> questions1 = [
  Question(
    questionText: "11Hangisi Türkiye'nin başkentidir?",
    options: ["İstanbul", "Kocaeli", "Ankara", "Bursa"],
    correctOptionIndex: 2,
  ),
  Question(
    questionText: "12Türkiye'nin en yüksek dağı hangisidir?",
    options: ["Ağrı Dağı", "Uludağ", "Erciyes", "Kaçkar Dağı"],
    correctOptionIndex: 0,
  ),
  Question(
    questionText: "13Hangi gezegen Güneş Sistemi'ndeki en büyük gezegendir?",
    options: ["Mars", "Jüpiter", "Venüs", "Satürn"],
    correctOptionIndex: 1,
  ),
  Question(
    questionText: "14Hangi renk 'gökkuşağı'nda bulunmaz?",
    options: ["Mavi", "Kırmızı", "Yeşil", "Sarı"],
    correctOptionIndex: 3,
  ),
  Question(
    questionText: "15Hangi hayvan 'kör' olarak adlandırılır?",
    options: ["Köpek", "Kedi", "Baykuş", "Yarasa"],
    correctOptionIndex: 3,
  ),
  Question(
    questionText: "16Hangi meyve su oranı en yüksek olan meyvedir?",
    options: ["Karpuz", "Kavun", "Çilek", "Elma"],
    correctOptionIndex: 0,
  ),
  Question(
    questionText: "17Türkiye'nin en kalabalık şehri hangisidir?",
    options: ["Ankara", "İstanbul", "İzmir", "Bursa"],
    correctOptionIndex: 1,
  ),
  Question(
    questionText: "18Hangisi insan vücudunda bulunan bir kemik değildir?",
    options: ["Kaburga", "Kafatası", "Kalça kemiği", "Kürek kemiği"],
    correctOptionIndex: 0,
  ),
  Question(
    questionText: "19Dünyadaki en büyük okyanus hangisidir?",
    options: ["Atlas Okyanusu", "Hint Okyanusu", "Pasifik Okyanusu", "Arktik Okyanusu"],
    correctOptionIndex: 2,
  ),
  Question(
    questionText: "110Hangisi bir arı türü değildir?",
    options: ["Bal arısı", "Böcek arısı", "Kuyruklu arı", "Karıncalar"],
    correctOptionIndex: 3,
  ),
];

List<Question> questions2 = [
  Question(
    questionText: "21Hangisi Türkiye'nin başkentidir?",
    options: ["İstanbul", "Kocaeli", "Ankara", "Bursa"],
    correctOptionIndex: 2,
  ),
  Question(
    questionText: "22Türkiye'nin en yüksek dağı hangisidir?",
    options: ["Ağrı Dağı", "Uludağ", "Erciyes", "Kaçkar Dağı"],
    correctOptionIndex: 0,
  ),
  Question(
    questionText: "23Hangi gezegen Güneş Sistemi'ndeki en büyük gezegendir?",
    options: ["Mars", "Jüpiter", "Venüs", "Satürn"],
    correctOptionIndex: 1,
  ),
  Question(
    questionText: "24Hangi renk 'gökkuşağı'nda bulunmaz?",
    options: ["Mavi", "Kırmızı", "Yeşil", "Sarı"],
    correctOptionIndex: 3,
  ),
  Question(
    questionText: "25Hangi hayvan 'kör' olarak adlandırılır?",
    options: ["Köpek", "Kedi", "Baykuş", "Yarasa"],
    correctOptionIndex: 3,
  ),
  Question(
    questionText: "26Hangi meyve su oranı en yüksek olan meyvedir?",
    options: ["Karpuz", "Kavun", "Çilek", "Elma"],
    correctOptionIndex: 0,
  ),
  Question(
    questionText: "27Türkiye'nin en kalabalık şehri hangisidir?",
    options: ["Ankara", "İstanbul", "İzmir", "Bursa"],
    correctOptionIndex: 1,
  ),
  Question(
    questionText: "28Hangisi insan vücudunda bulunan bir kemik değildir?",
    options: ["Kaburga", "Kafatası", "Kalça kemiği", "Kürek kemiği"],
    correctOptionIndex: 0,
  ),
  Question(
    questionText: "29Dünyadaki en büyük okyanus hangisidir?",
    options: ["Atlas Okyanusu", "Hint Okyanusu", "Pasifik Okyanusu", "Arktik Okyanusu"],
    correctOptionIndex: 2,
  ),
  Question(
    questionText: "210Hangisi bir arı türü değildir?",
    options: ["Bal arısı", "Böcek arısı", "Kuyruklu arı", "Karıncalar"],
    correctOptionIndex: 3,
  ),
];


List<Question> questions3 = [
  Question(
    questionText: "3Hangisi Türkiye'nin başkentidir?",
    options: ["İstanbul", "Kocaeli", "Ankara", "Bursa"],
    correctOptionIndex: 2,
  ),
  Question(
    questionText: "3Türkiye'nin en yüksek dağı hangisidir?",
    options: ["Ağrı Dağı", "Uludağ", "Erciyes", "Kaçkar Dağı"],
    correctOptionIndex: 0,
  ),
  Question(
    questionText: "3Hangi gezegen Güneş Sistemi'ndeki en büyük gezegendir?",
    options: ["Mars", "Jüpiter", "Venüs", "Satürn"],
    correctOptionIndex: 1,
  ),
  Question(
    questionText: "3Hangi renk 'gökkuşağı'nda bulunmaz?",
    options: ["Mavi", "Kırmızı", "Yeşil", "Sarı"],
    correctOptionIndex: 3,
  ),
  Question(
    questionText: "3Hangi hayvan 'kör' olarak adlandırılır?",
    options: ["Köpek", "Kedi", "Baykuş", "Yarasa"],
    correctOptionIndex: 3,
  ),
  Question(
    questionText: "3Hangi meyve su oranı en yüksek olan meyvedir?",
    options: ["Karpuz", "Kavun", "Çilek", "Elma"],
    correctOptionIndex: 0,
  ),
  Question(
    questionText: "3Türkiye'nin en kalabalık şehri hangisidir?",
    options: ["Ankara", "İstanbul", "İzmir", "Bursa"],
    correctOptionIndex: 1,
  ),
  Question(
    questionText: "3Hangisi insan vücudunda bulunan bir kemik değildir?",
    options: ["Kaburga", "Kafatası", "Kalça kemiği", "Kürek kemiği"],
    correctOptionIndex: 0,
  ),
  Question(
    questionText: "3Dünyadaki en büyük okyanus hangisidir?",
    options: ["Atlas Okyanusu", "Hint Okyanusu", "Pasifik Okyanusu", "Arktik Okyanusu"],
    correctOptionIndex: 2,
  ),
  Question(
    questionText: "3Hangisi bir arı türü değildir?",
    options: ["Bal arısı", "Böcek arısı", "Kuyruklu arı", "Karıncalar"],
    correctOptionIndex: 3,
  ),
];


List<Question> questions4 = [
  Question(
    questionText: "Hangisi Türkiye'nin başkentidir?",
    options: ["İstanbul", "Kocaeli", "Ankara", "Bursa"],
    correctOptionIndex: 2,
  ),
  Question(
    questionText: "Türkiye'nin en yüksek dağı hangisidir?",
    options: ["Ağrı Dağı", "Uludağ", "Erciyes", "Kaçkar Dağı"],
    correctOptionIndex: 0,
  ),
  Question(
    questionText: "Hangi gezegen Güneş Sistemi'ndeki en büyük gezegendir?",
    options: ["Mars", "Jüpiter", "Venüs", "Satürn"],
    correctOptionIndex: 1,
  ),
  Question(
    questionText: "Hangi renk 'gökkuşağı'nda bulunmaz?",
    options: ["Mavi", "Kırmızı", "Yeşil", "Sarı"],
    correctOptionIndex: 3,
  ),
  Question(
    questionText: "Hangi hayvan 'kör' olarak adlandırılır?",
    options: ["Köpek", "Kedi", "Baykuş", "Yarasa"],
    correctOptionIndex: 3,
  ),
  Question(
    questionText: "Hangi meyve su oranı en yüksek olan meyvedir?",
    options: ["Karpuz", "Kavun", "Çilek", "Elma"],
    correctOptionIndex: 0,
  ),
  Question(
    questionText: "Türkiye'nin en kalabalık şehri hangisidir?",
    options: ["Ankara", "İstanbul", "İzmir", "Bursa"],
    correctOptionIndex: 1,
  ),
  Question(
    questionText: "Hangisi insan vücudunda bulunan bir kemik değildir?",
    options: ["Kaburga", "Kafatası", "Kalça kemiği", "Kürek kemiği"],
    correctOptionIndex: 0,
  ),
  Question(
    questionText: "Dünyadaki en büyük okyanus hangisidir?",
    options: ["Atlas Okyanusu", "Hint Okyanusu", "Pasifik Okyanusu", "Arktik Okyanusu"],
    correctOptionIndex: 2,
  ),
  Question(
    questionText: "Hangisi bir arı türü değildir?",
    options: ["Bal arısı", "Böcek arısı", "Kuyruklu arı", "Karıncalar"],
    correctOptionIndex: 3,
  ),
];


List<Question> questions5 = [
  Question(
    questionText: "Hangisi Türkiye'nin başkentidir?",
    options: ["İstanbul", "Kocaeli", "Ankara", "Bursa"],
    correctOptionIndex: 2,
  ),
  Question(
    questionText: "Türkiye'nin en yüksek dağı hangisidir?",
    options: ["Ağrı Dağı", "Uludağ", "Erciyes", "Kaçkar Dağı"],
    correctOptionIndex: 0,
  ),
  Question(
    questionText: "Hangi gezegen Güneş Sistemi'ndeki en büyük gezegendir?",
    options: ["Mars", "Jüpiter", "Venüs", "Satürn"],
    correctOptionIndex: 1,
  ),
  Question(
    questionText: "Hangi renk 'gökkuşağı'nda bulunmaz?",
    options: ["Mavi", "Kırmızı", "Yeşil", "Sarı"],
    correctOptionIndex: 3,
  ),
  Question(
    questionText: "Hangi hayvan 'kör' olarak adlandırılır?",
    options: ["Köpek", "Kedi", "Baykuş", "Yarasa"],
    correctOptionIndex: 3,
  ),
  Question(
    questionText: "Hangi meyve su oranı en yüksek olan meyvedir?",
    options: ["Karpuz", "Kavun", "Çilek", "Elma"],
    correctOptionIndex: 0,
  ),
  Question(
    questionText: "Türkiye'nin en kalabalık şehri hangisidir?",
    options: ["Ankara", "İstanbul", "İzmir", "Bursa"],
    correctOptionIndex: 1,
  ),
  Question(
    questionText: "Hangisi insan vücudunda bulunan bir kemik değildir?",
    options: ["Kaburga", "Kafatası", "Kalça kemiği", "Kürek kemiği"],
    correctOptionIndex: 0,
  ),
  Question(
    questionText: "Dünyadaki en büyük okyanus hangisidir?",
    options: ["Atlas Okyanusu", "Hint Okyanusu", "Pasifik Okyanusu", "Arktik Okyanusu"],
    correctOptionIndex: 2,
  ),
  Question(
    questionText: "Hangisi bir arı türü değildir?",
    options: ["Bal arısı", "Böcek arısı", "Kuyruklu arı", "Karıncalar"],
    correctOptionIndex: 3,
  ),
];

List<Question> questions6 = [
  Question(
    questionText: "Hangisi Türkiye'nin başkentidir?",
    options: ["İstanbul", "Kocaeli", "Ankara", "Bursa"],
    correctOptionIndex: 2,
  ),
  Question(
    questionText: "Türkiye'nin en yüksek dağı hangisidir?",
    options: ["Ağrı Dağı", "Uludağ", "Erciyes", "Kaçkar Dağı"],
    correctOptionIndex: 0,
  ),
  Question(
    questionText: "Hangi gezegen Güneş Sistemi'ndeki en büyük gezegendir?",
    options: ["Mars", "Jüpiter", "Venüs", "Satürn"],
    correctOptionIndex: 1,
  ),
  Question(
    questionText: "Hangi renk 'gökkuşağı'nda bulunmaz?",
    options: ["Mavi", "Kırmızı", "Yeşil", "Sarı"],
    correctOptionIndex: 3,
  ),
  Question(
    questionText: "Hangi hayvan 'kör' olarak adlandırılır?",
    options: ["Köpek", "Kedi", "Baykuş", "Yarasa"],
    correctOptionIndex: 3,
  ),
  Question(
    questionText: "Hangi meyve su oranı en yüksek olan meyvedir?",
    options: ["Karpuz", "Kavun", "Çilek", "Elma"],
    correctOptionIndex: 0,
  ),
  Question(
    questionText: "Türkiye'nin en kalabalık şehri hangisidir?",
    options: ["Ankara", "İstanbul", "İzmir", "Bursa"],
    correctOptionIndex: 1,
  ),
  Question(
    questionText: "Hangisi insan vücudunda bulunan bir kemik değildir?",
    options: ["Kaburga", "Kafatası", "Kalça kemiği", "Kürek kemiği"],
    correctOptionIndex: 0,
  ),
  Question(
    questionText: "Dünyadaki en büyük okyanus hangisidir?",
    options: ["Atlas Okyanusu", "Hint Okyanusu", "Pasifik Okyanusu", "Arktik Okyanusu"],
    correctOptionIndex: 2,
  ),
  Question(
    questionText: "Hangisi bir arı türü değildir?",
    options: ["Bal arısı", "Böcek arısı", "Kuyruklu arı", "Karıncalar"],
    correctOptionIndex: 3,
  ),
];


List<Question> questions7 = [
  Question(
    questionText: "Hangisi Türkiye'nin başkentidir?",
    options: ["İstanbul", "Kocaeli", "Ankara", "Bursa"],
    correctOptionIndex: 2,
  ),
  Question(
    questionText: "Türkiye'nin en yüksek dağı hangisidir?",
    options: ["Ağrı Dağı", "Uludağ", "Erciyes", "Kaçkar Dağı"],
    correctOptionIndex: 0,
  ),
  Question(
    questionText: "Hangi gezegen Güneş Sistemi'ndeki en büyük gezegendir?",
    options: ["Mars", "Jüpiter", "Venüs", "Satürn"],
    correctOptionIndex: 1,
  ),
  Question(
    questionText: "Hangi renk 'gökkuşağı'nda bulunmaz?",
    options: ["Mavi", "Kırmızı", "Yeşil", "Sarı"],
    correctOptionIndex: 3,
  ),
  Question(
    questionText: "Hangi hayvan 'kör' olarak adlandırılır?",
    options: ["Köpek", "Kedi", "Baykuş", "Yarasa"],
    correctOptionIndex: 3,
  ),
  Question(
    questionText: "Hangi meyve su oranı en yüksek olan meyvedir?",
    options: ["Karpuz", "Kavun", "Çilek", "Elma"],
    correctOptionIndex: 0,
  ),
  Question(
    questionText: "Türkiye'nin en kalabalık şehri hangisidir?",
    options: ["Ankara", "İstanbul", "İzmir", "Bursa"],
    correctOptionIndex: 1,
  ),
  Question(
    questionText: "Hangisi insan vücudunda bulunan bir kemik değildir?",
    options: ["Kaburga", "Kafatası", "Kalça kemiği", "Kürek kemiği"],
    correctOptionIndex: 0,
  ),
  Question(
    questionText: "Dünyadaki en büyük okyanus hangisidir?",
    options: ["Atlas Okyanusu", "Hint Okyanusu", "Pasifik Okyanusu", "Arktik Okyanusu"],
    correctOptionIndex: 2,
  ),
  Question(
    questionText: "Hangisi bir arı türü değildir?",
    options: ["Bal arısı", "Böcek arısı", "Kuyruklu arı", "Karıncalar"],
    correctOptionIndex: 3,
  ),
];


List<Question> questions8 = [
  Question(
    questionText: "Hangisi Türkiye'nin başkentidir?",
    options: ["İstanbul", "Kocaeli", "Ankara", "Bursa"],
    correctOptionIndex: 2,
  ),
  Question(
    questionText: "Türkiye'nin en yüksek dağı hangisidir?",
    options: ["Ağrı Dağı", "Uludağ", "Erciyes", "Kaçkar Dağı"],
    correctOptionIndex: 0,
  ),
  Question(
    questionText: "Hangi gezegen Güneş Sistemi'ndeki en büyük gezegendir?",
    options: ["Mars", "Jüpiter", "Venüs", "Satürn"],
    correctOptionIndex: 1,
  ),
  Question(
    questionText: "Hangi renk 'gökkuşağı'nda bulunmaz?",
    options: ["Mavi", "Kırmızı", "Yeşil", "Sarı"],
    correctOptionIndex: 3,
  ),
  Question(
    questionText: "Hangi hayvan 'kör' olarak adlandırılır?",
    options: ["Köpek", "Kedi", "Baykuş", "Yarasa"],
    correctOptionIndex: 3,
  ),
  Question(
    questionText: "Hangi meyve su oranı en yüksek olan meyvedir?",
    options: ["Karpuz", "Kavun", "Çilek", "Elma"],
    correctOptionIndex: 0,
  ),
  Question(
    questionText: "Türkiye'nin en kalabalık şehri hangisidir?",
    options: ["Ankara", "İstanbul", "İzmir", "Bursa"],
    correctOptionIndex: 1,
  ),
  Question(
    questionText: "Hangisi insan vücudunda bulunan bir kemik değildir?",
    options: ["Kaburga", "Kafatası", "Kalça kemiği", "Kürek kemiği"],
    correctOptionIndex: 0,
  ),
  Question(
    questionText: "Dünyadaki en büyük okyanus hangisidir?",
    options: ["Atlas Okyanusu", "Hint Okyanusu", "Pasifik Okyanusu", "Arktik Okyanusu"],
    correctOptionIndex: 2,
  ),
  Question(
    questionText: "Hangisi bir arı türü değildir?",
    options: ["Bal arısı", "Böcek arısı", "Kuyruklu arı", "Karıncalar"],
    correctOptionIndex: 3,
  ),
];


List<Question> questions9 = [
  Question(
    questionText: "Hangisi Türkiye'nin başkentidir?",
    options: ["İstanbul", "Kocaeli", "Ankara", "Bursa"],
    correctOptionIndex: 2,
  ),
  Question(
    questionText: "Türkiye'nin en yüksek dağı hangisidir?",
    options: ["Ağrı Dağı", "Uludağ", "Erciyes", "Kaçkar Dağı"],
    correctOptionIndex: 0,
  ),
  Question(
    questionText: "Hangi gezegen Güneş Sistemi'ndeki en büyük gezegendir?",
    options: ["Mars", "Jüpiter", "Venüs", "Satürn"],
    correctOptionIndex: 1,
  ),
  Question(
    questionText: "Hangi renk 'gökkuşağı'nda bulunmaz?",
    options: ["Mavi", "Kırmızı", "Yeşil", "Sarı"],
    correctOptionIndex: 3,
  ),
  Question(
    questionText: "Hangi hayvan 'kör' olarak adlandırılır?",
    options: ["Köpek", "Kedi", "Baykuş", "Yarasa"],
    correctOptionIndex: 3,
  ),
  Question(
    questionText: "Hangi meyve su oranı en yüksek olan meyvedir?",
    options: ["Karpuz", "Kavun", "Çilek", "Elma"],
    correctOptionIndex: 0,
  ),
  Question(
    questionText: "Türkiye'nin en kalabalık şehri hangisidir?",
    options: ["Ankara", "İstanbul", "İzmir", "Bursa"],
    correctOptionIndex: 1,
  ),
  Question(
    questionText: "Hangisi insan vücudunda bulunan bir kemik değildir?",
    options: ["Kaburga", "Kafatası", "Kalça kemiği", "Kürek kemiği"],
    correctOptionIndex: 0,
  ),
  Question(
    questionText: "Dünyadaki en büyük okyanus hangisidir?",
    options: ["Atlas Okyanusu", "Hint Okyanusu", "Pasifik Okyanusu", "Arktik Okyanusu"],
    correctOptionIndex: 2,
  ),
  Question(
    questionText: "Hangisi bir arı türü değildir?",
    options: ["Bal arısı", "Böcek arısı", "Kuyruklu arı", "Karıncalar"],
    correctOptionIndex: 3,
  ),
];


List<Question> questions10 = [
  Question(
    questionText: "Hangisi Türkiye'nin başkentidir?",
    options: ["İstanbul", "Kocaeli", "Ankara", "Bursa"],
    correctOptionIndex: 2,
  ),
  Question(
    questionText: "Türkiye'nin en yüksek dağı hangisidir?",
    options: ["Ağrı Dağı", "Uludağ", "Erciyes", "Kaçkar Dağı"],
    correctOptionIndex: 0,
  ),
  Question(
    questionText: "Hangi gezegen Güneş Sistemi'ndeki en büyük gezegendir?",
    options: ["Mars", "Jüpiter", "Venüs", "Satürn"],
    correctOptionIndex: 1,
  ),
  Question(
    questionText: "Hangi renk 'gökkuşağı'nda bulunmaz?",
    options: ["Mavi", "Kırmızı", "Yeşil", "Sarı"],
    correctOptionIndex: 3,
  ),
  Question(
    questionText: "Hangi hayvan 'kör' olarak adlandırılır?",
    options: ["Köpek", "Kedi", "Baykuş", "Yarasa"],
    correctOptionIndex: 3,
  ),
  Question(
    questionText: "Hangi meyve su oranı en yüksek olan meyvedir?",
    options: ["Karpuz", "Kavun", "Çilek", "Elma"],
    correctOptionIndex: 0,
  ),
  Question(
    questionText: "Türkiye'nin en kalabalık şehri hangisidir?",
    options: ["Ankara", "İstanbul", "İzmir", "Bursa"],
    correctOptionIndex: 1,
  ),
  Question(
    questionText: "Hangisi insan vücudunda bulunan bir kemik değildir?",
    options: ["Kaburga", "Kafatası", "Kalça kemiği", "Kürek kemiği"],
    correctOptionIndex: 0,
  ),
  Question(
    questionText: "Dünyadaki en büyük okyanus hangisidir?",
    options: ["Atlas Okyanusu", "Hint Okyanusu", "Pasifik Okyanusu", "Arktik Okyanusu"],
    correctOptionIndex: 2,
  ),
  Question(
    questionText: "Hangisi bir arı türü değildir?",
    options: ["Bal arısı", "Böcek arısı", "Kuyruklu arı", "Karıncalar"],
    correctOptionIndex: 3,
  ),
];



 