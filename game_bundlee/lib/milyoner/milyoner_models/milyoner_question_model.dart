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
    questionText: "Katar'da düzenlenen 2022 FIFA Dünya Kupası'nda finalde Fransa'yı penaltılar sonucunda 4-2 mağlup ederek şampiyon olan hangisidir?",
    options: ["Fas", "İtalya", "Arjantin", "Hırvatistan"],
    correctOptionIndex: 2,
  ),
  Question(
    questionText: "Hangisinden geçiyorsanız ABD'nin Kaliforniya eyaletindesinizdir?",
    options: ["Golden Gate Köprüsü", "Valens Su Kemeri", "Hadrian Duvarı", "Brandenburg Kapısı"],
    correctOptionIndex: 0,
  ),
  Question(
    questionText: "Yakup Kadri Karaosmanoğlu'nun hangi adda bir romanı vardır?",
    options: ["İstanbul", "Ankara", "Yozgat", "Bayburt"],
    correctOptionIndex: 1,
  ),
  Question(
    questionText: "Batı'da genellikle 'Avicenna' olarak bilinen ve 'filozofların prensi' olarak nitelendirilen hangisidir?",
    options: ["Eflatun", "Hipokrat", "Farabi", "İbn Sina"],
    correctOptionIndex: 3,
  ),
  Question(
    questionText: "Hangisinin zirvesine tırmanan bir dağcı, Asya kıtasındadır?",
    options: ["Rushmore Dağı", "Etna Dağı", "Kilimanjaro Dağı", "Everest Dağı"],
    correctOptionIndex: 3,
  ),
  Question(
    questionText: "400 mililitrelik sulardan günde 5 tane bitiren biri, haftada kaç litre su tüketmiş olur?",
    options: ["7", "14", "21", "28"],
    correctOptionIndex: 1,
  ),
  Question(
    questionText: "Hangi kelimenin eş anlamlısı 'trajedi'dir?",
    options: ["Ağlatı", "Üzüntü", "Yıkıntı", "Sarsıntı"],
    correctOptionIndex: 0,
  ),
  Question(
    questionText: "Hangisi mecazi anlamda 'aşırı kalabalıklaşmak' anlamına gelir?",
    options: ["Oğul vermek", "Kız vermek", "Dünür gitmek", "Yerden bitmek"],
    correctOptionIndex: 0,
  ),
  Question(
    questionText: "Hangisi, eşeğe verilen bir diğer addır?",
    options: ["Merkep", "Camış", "Maral", "Kömüş"],
    correctOptionIndex: 0,
  ),
  Question(
    questionText: "Türkiye'de hangi adla gösterime girmiş bir film vardır?",
    options: ["Katil Serçeler", "Katil Kartallar", "Katil Şahinler", "Katil Doğanlar"],
    correctOptionIndex: 3,
  ),
];


List<Question> questions7 = [
  Question(
    questionText: "Kimin 'Devlet' adlı kitabında, 'idea' kavramı, mağarada bulunan insanlarla ilgili anlatılan bir hikayeyle açıklanır?",
    options: ["Cicero", "Platon", "Diyojen", "Aristotales"],
    correctOptionIndex: 1,
  ),
  Question(
    questionText: "'Genetik biliminin kurucusu' olarak kabul edilen ve bezelyelerle yaptığı çalışmalar biyoloji derslerinde anlatılan bilim insanı kimdir?",
    options: ["Gregor Mendel", "Marie Curie", "Louis Pasteur", "Lev Bezelyev"],
    correctOptionIndex: 0,
  ),
  Question(
    questionText: "Orkestra şeflerinin sahnede mesleklerini icra ederken giydikleri genellikle hangisi olur?",
    options: ["Tütü", "Frak", "Peştamal", "Ropdöşambır"],
    correctOptionIndex: 1,
  ),
  Question(
    questionText: "Hangi ülkenin okyanusa kıyısı vardır?",
    options: ["Uganda", "Paraguay", "Belarus", "Moritanya"],
    correctOptionIndex: 3,
  ),
  Question(
    questionText: "Robert De Niro'nun, Travis Bickle karakterini canlandırdığı, Jodie Foster'ın henüz 13 yaşındayken rol aldığı film hangisidir?",
    options: ["Kuzuların Sessizliği", "Leon", "Sıkı Dostlar", "Taksi Şoförü"],
    correctOptionIndex: 3,
  ),
  Question(
    questionText: "'Karanlık ve ıssız yerlerde, insanın gördüğünü sandığı korkunç hayalet' hangisinin sözlük tanımıdır?",
    options: ["Gulyabani", "Karabasan", "Vampir", "Cin"],
    correctOptionIndex: 0,
  ),
  Question(
    questionText: "Hangisi Türkiye'deki ilçelerin adlarında geçen bir hayvan adı değildir?",
    options: ["Tavşan", "Geyik", "Aslan", "Kurt"],
    correctOptionIndex: 1,
  ),
  Question(
    questionText: "Hangisi ördekgillerden, tüyleri kiremit renginde bir kuş türünün adıdır?",
    options: ["Angut", "Budala", "Sersem", "Ebleh"],
    correctOptionIndex: 0,
  ),
  Question(
    questionText: "Türkiye'deki illerin plaka kodlarının toplamı nedir?",
    options: ["5543", "4432", "3321", "2210"],
    correctOptionIndex: 2,
  ),
  Question(
    questionText: "Sayfiye ne demektir?",
    options: ["Kışlık, kışlık ev", "İlkbahar, ilkbaharlık ev", "Sonbahar, sonbaharlık ev", "Yazlık, yazlık ev"],
    correctOptionIndex: 3,
  ),
];


List<Question> questions8 = [
  Question(
    questionText: "Hangi sporun profesyonel müsabakalarında 13 hakem yer alır?",
    options: ["Futbol", "Basketbol", "Tenis", "Voleybol"],
    correctOptionIndex: 2,
  ),
  Question(
    questionText: "Basketbolda çembere yan durarak tek elle baş üzerinden geçirilerek atılan şuta ne ad verilir?",
    options: ["Hukşat", "Cemşat", "Plonjon", "Degaj"],
    correctOptionIndex: 0,
  ),
  Question(
    questionText: "Trabzon hurmasının diğer adı hangisidir?",
    options: ["Japon hurması", "Acem hurması", "Hint hurması", "Balkan hurması"],
    correctOptionIndex: 0,
  ),
  Question(
    questionText: "Hangisi TDK sözlüklerinde tanımı olan bir deyim değildir?",
    options: ["Hüngür hüngür ağlamak", "İçi kan ağlamak", "Yüreği kan ağlamak", "Katıla katıla ağlamak"],
    correctOptionIndex: 3,
  ),
  Question(
    questionText: "Uruguay'ın resmi adı hangisidir?",
    options: ["Uruguay Doğu Cumhuriyeti", "Uruguay Batı Cumhuriyeti", "Uruguay Güney Cumhuriyeti", "Uruguay Kuzey Cumhuriyeti"],
    correctOptionIndex: 0,
  ),
  Question(
    questionText: "FIFA Dünya Kupası tarihinde yarı finale ulaşmayı başaran ve başkenti Afrika'da olan tek ülke hangisidir?",
    options: ["Fas", "Nijerya", "Senegal", "Güney Afrika"],
    correctOptionIndex: 0,
  ),
  Question(
    questionText: "NBA tarihinin en iyi pivotları arasında gösterilen, 'skyhook' atışıyla ve maçlarda taktığı gözlükle hatırlanan basketbolcu kimdir?",
    options: ["Magic Johnson", "Kareem Abdul-Jabbar", "Larry Bird", "Michael Jordan"],
    correctOptionIndex: 1,
  ),
  Question(
    questionText: "Hangisi 'verim' anlamına gelen bir kelime değildir?",
    options: ["Hasat", "Randıman", "Semere", "Mahsul"],
    correctOptionIndex: 0,
  ),
  Question(
    questionText: "Türkçede, yalın zamanlı bir fiille ek fiilin iki zamanının birlikte kullanılmasına ne ad verilir?",
    options: ["Okkalı Birleşik Zaman", "Şerbetli Birleşik Zaman", "Katmerli Birleşik Zaman", "Kaymaklı Birleşik Zaman"],
    correctOptionIndex: 2,
  ),
  Question(
    questionText: "Hangisi, sözlükte tanımı bulunan bir ifade değildir?",
    options: ["Keçi inadı", "Katır inadı", "Eşek inadı", "Civciv inadı"],
    correctOptionIndex: 3,
  ),
];


List<Question> questions9 = [
  Question(
    questionText: "Fransa'nın en uzun kara sınırı hangi ülkeyledir?",
    options: ["Arjantin", "Kolombiya", "Brezilya", "Almanya"],
    correctOptionIndex: 2,
  ),
  Question(
    questionText: "'Rock and Roll' ilk çıktığı 1950'li yıllarda Türkçeye hangi adla da çevrilmiş ancak bu adın yerine orijinal adı tercih edilmiştir?",
    options: ["Kaya ve tekerlek", "Sallan ve yuvarlan", "Şok ve gürültü", "Kafa ve saç"],
    correctOptionIndex: 1,
  ),
  Question(
    questionText: "Grönland köpek balığı doğumundan yaklaşık ne kadar sonra üreyecek olgunluğa ulaşır?",
    options: ["1,5 saat", "150 yıl", "1,5 gün", "15 yıl"],
    correctOptionIndex: 1,
  ),
  Question(
    questionText: "Hangi köprüden geçerken, yüzyıllar öncesinden kalma bir geleneğe uygun olarak cesaretlerini kanıtlamak için köprüden nehre atlayan gençlerle karşılaşabilirsiniz?",
    options: ["Golden Gate Köprüsü", "Malabadi Köprüsü", "Galata Köprüsü", "Mostar Köprüsü"],
    correctOptionIndex: 3,
  ),
  Question(
    questionText: "'Üç top' olarak bilinen bilardo oyunu hangi adla da bilinir?",
    options: ["Amerikan", "Pike", "Brikol", "Karambol"],
    correctOptionIndex: 3,
  ),
  Question(
    questionText: "Hangi kelime 'yayın' anlamına gelir?",
    options: ["Neşriyat", "Nazariyat", "Ayniyat", "Müştemilat"],
    correctOptionIndex: 0,
  ),
  Question(
    questionText: "Bermuda, Azor ve Kanarya Adaları hangi okyanustadır?",
    options: ["Atlas Okyanusu", "Hint Okyanusu", "Büyük Okyanusu", "Arktik Okyanusu"],
    correctOptionIndex: 0,
  ),
  Question(
    questionText: "'Aşk Çeşmesi' olarak da bilinen ünlü Trevi Çeşmesi'ne para atıp dilek tutan çift hangi ülkenin başkentindedir?",
    options: ["Fas", "İtalya", "Fransa", "Arjantin"],
    correctOptionIndex: 1,
  ),
  Question(
    questionText: "Guinness Dünya Rekorlarına göre 251 cm boyundaki 'Yaşayan en uzun erkek' ve 215 cm boyundaki 'Yaşayan en uzun kadın' sırasıyla hangi ülkenin vatandaşlarıdır?",
    options: ["Çin ve Çin", "Türkiye ve ABD", "Türkiye ve Türkiye", "Türkiye ve Çin"],
    correctOptionIndex: 2,
  ),
  Question(
    questionText: "28 Mart 2011'de Gürcistan'da, satmak için hurda metaller arayan 75 yaşındaki bir kadın, bulduğu yer altı kablolarını kopartınca hangisine neden olmuştur?",
    options: ["Gürcistan'da borsanın çökmesine", "Azerbaycan'da telefonların bozulmasına", "Rusya'da elektrik kesintilerine", "Ermenistan'da internetin kesilmesine"],
    correctOptionIndex: 3,
  ),
];


List<Question> questions10 = [
  Question(
    questionText: "1973'te 'Hayatım boyunca bir kadın başbakan olacağını düşünmüyorum' diyen kimdir?",
    options: ["II. Elizabeth", "Winston Churchill", "Tansu Çiller", "Margaret Thatcher"],
    correctOptionIndex: 3,
  ),
  Question(
    questionText: "Ahmet Muhip Dıranas'ın aynı adlı şiirinden ilham alınarak beyaz perdeye uyarlanan 1984 yapımı 'Fahriye Abla' adlı film hangi yönetmenin yönettiği ilk filmdir?",
    options: ["Atıf Yılmaz", "Yavuz Turgul", "Memduh Ün", "Kartal Tibet"],
    correctOptionIndex: 1,
  ),
  Question(
    questionText: "16 Nisan 2022'de, Güney Kore'de kapalı bir spor salonunda, hangisi insan eliyle fırlatıldıktan sonra havada yaklaşık 77 metre yol alarak Guinness Dünya Rekorlarına girmiştir?",
    options: ["Frizbi", "Beyzbol topu", "Kağıt uçak", "Bumerang"],
    correctOptionIndex: 2,
  ),
  Question(
    questionText: "Hangisi 1991'de İngiltere milli futbol takımında beş defa forma giymiş bir futbolcunun soyadıdır?",
    options: ["Davaro", "Feyzo", "Maho", "Salako"],
    correctOptionIndex: 3,
  ),
  Question(
    questionText: "Sri Lanka, haritadaki şekli ve coğrafi konumundan ötürü hangi ülkenin 'gözyaşı' olarak adlandırılır?",
    options: ["Avustralya", "Japonya", "Meksika", "Hindistan"],
    correctOptionIndex: 3,
  ),
  Question(
    questionText: "'Teletubbies' adlı televizyon programındaki hangi karakteri canlandıran oyuncu, 2018'de İngiltere'de bir caddede soğuktan donarak ölmüştür?",
    options: ["Tinky Winky", "Dipsy", "Laa-Laa", "Po"],
    correctOptionIndex: 0,
  ),
  Question(
    questionText: "Hangisi, İsmet İnönü'nün 1950'de Cumhurbaşkanlığı görevi bittikten sonra yaptığı görevlerden biri değildir?",
    options: ["Parti Genel Başkanlığı", "Meclis Başkanlığı", "Senatörlük", "Başbakanlık"],
    correctOptionIndex: 1,
  ),
  Question(
    questionText: "1887'de bir grup erkeğin şaka amaçlı kendisini belediye başkanı adayı olarak göstermesinin ardından oyların üçte ikisini alan aday hangi ülkenin seçilen ve görev yapan ilk kadın belediye başkanı olmuştur?",
    options: ["ABD", "Çin", "Japonya", "Fransa"],
    correctOptionIndex: 0,
  ),
  Question(
    questionText: "2010'da İspanya'da Joaguin Garcia adında bir memura 20 yıllık sadık hizmeti için ödül verilecekken hangisi fark edilmiştir?",
    options: ["Altı yıl önce vefat ettiği", "İşi ikiziyle dönüşümlü yaptığı", "Altı yıldır işe gelmediği", "Öyle birinin hiç var olmadığı"],
    correctOptionIndex: 2,
  ),
  Question(
    questionText: "1959'da New York'taki bir şampiyonaya erkek kılığında katılan Rena Kanogoki, hangi alanda altın madalya kazanmış ve kadın olduğu anlaşılınca madalyasını iade etmek zorunda kalmıştır?",
    options: ["Satranç", "Eskrim", "Okçuluk", "Judo"],
    correctOptionIndex: 3,
  ),
];



 