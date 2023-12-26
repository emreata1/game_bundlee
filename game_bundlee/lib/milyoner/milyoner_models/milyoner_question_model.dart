import 'dart:math';


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
    Reward(rewardamount: "7.500", optioncolor: 'assets/milyonerassets/şıklar3.png', sound: '2soru.mp3'),
    Reward(rewardamount: "3.000", optioncolor: 'assets/milyonerassets/şıklar3.png', sound: '2soru.mp3'),
];

class Question {
  final String questionText;
  final List<String> options;
  final int correctOptionIndex;

  Question({required this.questionText, required this.options, required this.correctOptionIndex});
}


List<Question> questions1 = [
  Question(
    questionText: "'Kurutmalı olanların fiyatları da kapasitesine göre değişiyor' diyen biri muhtemelen hangi üründen bahsediyordur?",
    options: ["Waffle makinesi", "Kahve makinesi", "Süt köpürtme makinesi", "Çamaşır makinesi"],
    correctOptionIndex: 3,
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
    questionText: "Kafe ve restoranlarda menülere çevrim içi olarak erişebilmek için hangisinin akıllı telefon kameralarına okutulması gereklidir?",
    options: ["Üçgenkod", "Karekod", "Küpkod", "Yamukkod"],
    correctOptionIndex: 1,
  ),
  Question(
    questionText: "Hangi meyve su oranı en yüksek olan meyvedir?",
    options: ["Karpuz", "Kavun", "Çilek", "Elma"],
    correctOptionIndex: 0,
  ),
  Question(
    questionText: "'Dünyanın öbür ucu' hangi anlama gelen bir deyimdir?",
    options: ["Çok yakın yer", "Çok uzak yer", "Çok kalabalık yer", "Çok ıssız yer"],
    correctOptionIndex: 1,
  ),
  Question(
    questionText: "Hangisinde kalan biri muhtemelen beş yıldızlı bir otelde kalıyordur?",
    options: ["Öğrence evinde", "Ay'da", "Kral dairesinde", "Pansiyonda"],
    correctOptionIndex: 2,
  ),
  Question(
    questionText: "Çok zayıf ve kuru anlamına gelen hangisidir?",
    options: ["Şişko", "Gürbüz", "Tombul", "Sıska"],
    correctOptionIndex: 3,
  ),
  Question(
    questionText: "Hangisi genellikle kasiyerlerin müşterilere yönelttiği bir soru olur?",
    options: ["Yükseleniniz neydi?", "Medeni haliniz nedir?", "Çakralarınız açık mı?", "Temassız var mı?"],
    correctOptionIndex: 3,
  ),
];

List<Question> questions2 = [
  Question(
    questionText: "'Haldır haldır' ne anlama gelir?",
    options: ["Hızla ve ses çıkararak", "Yavaş ve düzenli biçimde", "Ağır ve dikkatli şekilde", "Durgun ve hareketsiz halde"],
    correctOptionIndex: 0,
  ),
  Question(
    questionText: "Türkiye'nin hangi coğrafi bölgesi 'Batı', 'Orta' ve 'Doğu' olarak üç bölüme ayrılır?",
    options: ["Marmara", "Ege", "Akdeniz", "Karadeniz"],
    correctOptionIndex: 3,
  ),
  Question(
    questionText: "'Civcivi olan' hangi kelimenin TDK Güncel Sözlük'teki tanımıdır?",
    options: ["Civcivli", "Ördek", "Kuş", "Tavuk"],
    correctOptionIndex: 0,
  ),
  Question(
    questionText: "Hangisi 'geldiği yere veya ters yöne doğru anlamına gelir?'",
    options: ["Arkasın arka", "Önsün ön", "İlerisin ileri", "Gerisin geri"],
    correctOptionIndex: 3,
  ),
  Question(
    questionText: "Masalların sonunda söylenen ve 'biz çıkalım keravetine' şeklinde biten cümlenin başı nasıldır?",
    options: ["Bir varmış, bir yokmuş", "Dere tepe düz gitmiş", "Onlar ermiş muradına", "Az gitmiş,uz gitmiş"],
    correctOptionIndex: 2,
  ),
  Question(
    questionText: "'Ton' ve 'Kilogram' hangi başlık altında incelenen kavramlardır?",
    options: ["Ağırlık", "Sıcaklık", "Uzunluk", "Elektrik"],
    correctOptionIndex: 0,
  ),
  Question(
    questionText: "Genellikle hangisi omuzla yanak arasına sıkıştırılarak çalınır?",
    options: ["Kontrbas", "Keman", "Piyano", "Akordeon"],
    correctOptionIndex: 1,
  ),
  Question(
    questionText: "Büyük dükkan anlamına gelen kelimenin doğru yazılışı nasıldır?",
    options: ["Mazza", "Maaza", "Mağza", "Mağaza"],
    correctOptionIndex: 3,
  ),
  Question(
    questionText: "Halk arasında kaplumbağaya verilen diğer ad hangisidir?",
    options: ["Gazal", "Karakaçan", "Kömüş", "Tosbağa"],
    correctOptionIndex: 3,
  ),
  Question(
    questionText: "Ekstre ne demektir?",
    options: ["Ek olarak", "Sıradan", "Alışveriş Poşeti", "Hesap Özeti"],
    correctOptionIndex: 3,
  ),
];


List<Question> questions3 = [
  Question(
    questionText: "Borda, karina ve sintine hangi taşıtın bölümlerine verilen adlardır?",
    options: ["Gemi", "Tren", "Uçak", "Otobüs"],
    correctOptionIndex: 0,
  ),
  Question(
    questionText: "Hangisi uçamaz?",
    options: ["Albatros", "İspinoz", "Karabatak", "Kivi"],
    correctOptionIndex: 3,
  ),
  Question(
    questionText: "Birçok kez 'Grammy ödülü' kazanmış birinin mesleği muhtemelen hangisidir?",
    options: ["Aşçılık", "Müzisyenlik", "Ressamlık", "Futbolculuk"],
    correctOptionIndex: 1,
  ),
  Question(
    questionText: "TDK'nin 'Kısaltmalar'la ilgili yazım kurallarına göre hangisinin yazımı doğrudur?",
    options: ["TDK'nın", "TDK'nin", "TDK'ın", "TDK'in"],
    correctOptionIndex: 1,
  ),
  Question(
    questionText: "Hangisi toprağı sürmede kullanılan ilkel bir tarım aracına verilen genel bir addır?",
    options: ["Siyah orak", "Sarı tırmık", "Pembe yaba", "Kara saban"],
    correctOptionIndex: 3,
  ),
  Question(
    questionText: "Nobel Barış Ödülü'nü kazanan ilk Türk kimdir?",
    options: ["Orhan Pamuk", "Aziz Sancar", "Gazi Yaşargil", "Hulusi Behçet"],
    correctOptionIndex: 1,
  ),
  Question(
    questionText: "Dekor yapma işi anlamına gelen kelimenin doğru yazılışı hangisidir?",
    options: ["Dekerasyon", "Dekorasyon", "Dekarasyon", "Dekorosyon"],
    correctOptionIndex: 1,
  ),
  Question(
    questionText: "Hangisi insan vücudunda bulunan bir kemik değildir?",
    options: ["Kaburga", "Kafatası", "Kalça kemiği", "Kürek kemiği"],
    correctOptionIndex: 0,
  ),
  Question(
    questionText: "İki dünya savaşında da kaybeden ittifakta yer alan hangisidir?",
    options: ["Japonya", "Fransa", "Almanya", "İtalya"],
    correctOptionIndex: 2,
  ),
  Question(
    questionText: "'DUS'a girecek olan biri hangi fakülteden mezun olmuştur?",
    options: ["Hukuk", "Spor Bilimleri", "Denizcilik", "Diş Hekimliği"],
    correctOptionIndex: 3,
  ),
];


List<Question> questions4 = [
  Question(
    questionText: "Genetik olarak normal ve sağlıklı bir insanda hangisinden toplamda 24 tane vardır?",
    options: ["Kaburga kemiği", "Parmak kemiği", "Kromozom", "Omurga kemiği"],
    correctOptionIndex: 0,
  ),
  Question(
    questionText: "Hangisi Avrupalılar tarafından 'Eski Dünya' olarak adlandırılan kıtalardan biridir?",
    options: ["Amerika", "Afrika", "Avustralya", "Antarktika"],
    correctOptionIndex: 1,
  ),
  Question(
    questionText: "'Tesadüf' anlamına gelen kelimenin doğru yazılışı hangisidir?",
    options: ["Raslantı", "Rastlantı", "Raslıntı", "Reslantı"],
    correctOptionIndex: 1,
  ),
  Question(
    questionText: "'Ağaç Sakızı' hangisidir?",
    options: ["Ametist", "Balçık", "Mercan", "Reçine"],
    correctOptionIndex: 3,
  ),
  Question(
    questionText: "Hangisine tırmanan bir dağcı Avrupa kıtasındadır?",
    options: ["Atlas dağları", "And dağları", "Alpler", "Himalayalar"],
    correctOptionIndex: 2,
  ),
  Question(
    questionText: "Hangisi maydanozgillerdendir?",
    options: ["Roka", "Havuç", "Semizotu", "Marul"],
    correctOptionIndex: 1,
  ),
  Question(
    questionText: "'Büyükbaş' kelimesinin sözlük tanımına göre hangisi büyükbaş hayvandır?",
    options: ["At", "Eşek", "Sığır", "Koyun"],
    correctOptionIndex: 2,
  ),
  Question(
    questionText: "'Biz 40 ve 45 yaşlarındayız, bizim ve ikiz çocuklarımızın yaşları toplamı ise 115' diyen bir çift kaç yaşlarında ebeveyn olmuştur?",
    options: ["20 ve 25", "25 ve 30", "30 ve 35", "35 ve 40"],
    correctOptionIndex: 1,
  ),
  Question(
    questionText: "Dünyadaki en büyük okyanus hangisidir?",
    options: ["Atlas Okyanusu", "Hint Okyanusu", "Pasifik Okyanusu", "Arktik Okyanusu"],
    correctOptionIndex: 2,
  ),
  Question(
    questionText: "TDK'ye göre hangisi, 'yalnız bakmakla yetinilen aşk' anlamına gelir?",
    options: ["Kara sevda", "Göz sevdası", "Platonik aşk", "Uzak aşk"],
    correctOptionIndex: 1,
  ),
];


List<Question> questions5 = [
  Question(
    questionText: "Türkiye'deyseniz ve gündüzler her geçen gün bir önceki güne göre kısalıyorsa hangi ayda olabilirsiniz?",
    options: ["Ocak", "Nisan", "Mayıs", "Ağustos"],
    correctOptionIndex: 3,
  ),
  Question(
    questionText: "Hangi romanın yazarı John Steinbeck değildir?",
    options: ["Fareler ve İnsanlar", "Hayvan Çiftliği", "Gazap Üzümleri", "İnci"],
    correctOptionIndex: 1,
  ),
  Question(
    questionText: "Yer kabuğu üzerindeki bir yerin deniz seviyesine göre ölçülen yükseliği, oranın nesidir?",
    options: ["Rakımı", "İzotopu", "Debisi", "Ortayı"],
    correctOptionIndex: 0,
  ),
  Question(
    questionText: "'Pişmaniye' kelimesinin kökeni olan Farsça 'paşm' kelimesi ne anlama gelir?",
    options: ["Üzüntü", "Yün", "Kızarmış", "Şişman"],
    correctOptionIndex: 1,
  ),
  Question(
    questionText: "Evliliklerinin 10. yıl dönümünde yaşları toplamı 75 olan bir çiftin evlenmeden 5 yıl önceki yaşları toplamı kaçtır?",
    options: ["35", "45", "50", "60"],
    correctOptionIndex: 1,
  ),
  Question(
    questionText: "Hangisi, Iron Man adlı çizgi roman kahramanını beyaz perdede canlandırmıştır?",
    options: ["Jake Gyllenhall", "Robert Downey Jr.", "Benedict Cumberbatch", "Chris Hemsworth"],
    correctOptionIndex: 1,
  ),
  Question(
    questionText: "Bugüne kadar düzenlenen FIFA Dünya Kupası turnuvalarında en çok gol atan kimdir?",
    options: ["Pele", "Miroslav Klose", "Maradona", "Cristiano Ronaldo"],
    correctOptionIndex: 1,
  ),
  Question(
    questionText: "'Kızıl Gezegen' genellikle hangisi için yapılan bir benzetme olur?",
    options: ["Satürn", "Venus", "Mars", "Kripton"],
    correctOptionIndex: 2,
  ),
  Question(
    questionText: "'Açlık Oyunları' adlı film serisinde Jennifer Lawrence'ın canlandırdığı başkarakter hangisidir?",
    options: ["Ellen Ripley", "Clarice Starling", "Hunger Games", "Katniss Everdeen"],
    correctOptionIndex: 3,
  ),
  Question(
    questionText: "Keanu Reeves'in Al Pacino'yla sohbet ettiği bir sahne varsa izlediğiniz film muhtemelen hangisidir?",
    options: ["Taksi Şoförü", "Kadın Kokusu", "Şeytanın Avukatı", "Matrix"],
    correctOptionIndex: 2,
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
    questionText: "Hangi ilin Kıbrıscık adında bir ilçesi vardır?",
    options: ["Mersin", "Bolu", "Hatay", "Bilecik"],
    correctOptionIndex: 1,
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



 