class Question {
  final String image;
  final Map<String, bool> options;

  Question({
    required this.image,
    required this.options,
  });

}

class QuizQuestionModel {
  final List<Question> questions;

  QuizQuestionModel({
    required this.questions,
  });

  static QuizQuestionModel chapterOne = QuizQuestionModel(
    questions: [

  Question(image: 'assets/quizassets/ajdapekkan.jpg', options: {'Orhan Gencebay': false, 'Ajda Pekkan': true, 'Tarkan': false, 'Bülent Ersoy': false}),
  Question(image: 'assets/quizassets/annadeniz.jpeg', options: {'Murat Boz': false, 'Anna Deniz Şaylan': true, 'Hande Yener': false, 'Kenan Doğulu': false}),
  Question(image: 'assets/quizassets/aykutelmas.jpeg', options: {'Aykut Elmas': true, 'Cem Yılmaz': false, 'Aras Bulut İynemli': false, 'Demet Evgar': false}),
  Question(image: 'assets/quizassets/sezen.jpg', options: {'Sezen Aksu': true, 'Tarkan': false, 'Sertab Erener': false, 'Mustafa Sandal': false}),
  Question(image: 'assets/quizassets/Barisakarsu.jpg', options: { 'Kenan İmirzalıoğlu': false, 'Hadise': false,'Barış Akarsu': true, 'Gülben Ergen': false}),
  Question(image: 'assets/quizassets/emiröztürk.jpeg', options: {'Emir Öztürk': true, 'Murat Boz': false, 'Demet Akalın': false, 'Berksan': false}),
  Question(image: 'assets/quizassets/fatihterim.jpg', options: {'Hakan Şükür': false, 'Fatih Terim': true, 'Arda Turan': false, 'Emre Belözoğlu': false}),
  Question(image: 'assets/quizassets/fosurfosur.jpg', options: { 'Cem Yılmaz': false, 'Mehmet Ali Erbil': false, 'Beyazıt Öztürk': false,'Cem Özkok': true,}),
  Question(image: 'assets/quizassets/icardi.jpg', options: {'Zlatan Ibrahimović': false, 'İcardi': true, 'Lionel Messi': false, 'Cristiano Ronaldo': false}),
  Question(image: 'assets/quizassets/kuzey.jpeg', options: { 'Engin Akyürek': false, 'Halit Ergenç': false, 'Burak Özçivit': false,'Kıvanç Tatlıtuğ': true,}),
  Question(image: 'assets/quizassets/ganyotcu..jpg', options: {'Murat Boz': false, 'Ebubekir Öztürk': true, 'Ata Demirer': false, 'Cem Yılmaz': false}),
],

  );

  static QuizQuestionModel chapterTwo = QuizQuestionModel(
   questions: [
  Question(image: 'assets/quizassets/aziz.jpg', options: { 'Cem Yılmaz': false, 'Halit Ergenç': false, 'Aziz Nesin': true,'Kenan İmirzalıoğlu': false}),
  Question(image: 'assets/quizassets/sinanengin.jpeg', options: {'Kenan Doğulu': false,'Sinan Engin': true,  'Murat Boz': false, 'Tarkan': false}),
  Question(image: 'assets/quizassets/tarkan.jpg', options: { 'Kıvanç Tatlıtuğ': false, 'Engin Akyürek': false,'Tarkan': true, 'Burak Özçivit': false}),
  Question(image: 'assets/quizassets/vasip.jpg', options: {'Vasip Şahin': true, 'Arda Turan': false, 'Emre Belözoğlu': false, 'Hakan Şükür': false}),
  Question(image: 'assets/quizassets/melissa.jpg', options: {'Melissa Vargas': true, 'Cristiano Ronaldo': false, 'Lionel Messi': false, 'Zlatan Ibrahimović': false}),
  Question(image: 'assets/quizassets/zehra.jpg', options: {'Zehra Güneş': false, 'Kenan İmirzalıoğlu': true, 'Murat Boz': false, 'Cem Yılmaz': false}),
  Question(image: 'assets/quizassets/güvenlik.jpg', options: {'Yakışıklı Güvenlik': true, 'Arda Turan': false, 'Cristiano Ronaldo': false, 'Lionel Messi': false}),
  Question(image: 'assets/quizassets/hadibe.jpg', options: { 'Cem Yılmaz': false,'Yiğit Özşener': true, 'Halit Ergenç': false, 'Kenan İmirzalıoğlu': false}),
  Question(image: 'assets/quizassets/cembolukbasi.jpg', options: {'Murat Boz': false, 'Kıvanç Tatlıtuğ': false,'Cem Bölükbaşı': true,  'Engin Akyürek': false}),
  Question(image: 'assets/quizassets/tomhanks.jpg', options: { 'Cristiano Ronaldo': false, 'Lionel Messi': false, 'Zlatan Ibrahimović': false,'Tom Hanks': true,}),
],

  );
static QuizQuestionModel chapterThree = QuizQuestionModel(
  questions: [
    Question(image: 'assets/quizassets/kobe.jpg', options: { 'Michael Jordan': false, 'Shaquille O\'Neal': false,'Kobe Bryant': true, 'LeBron James': false}),
    Question(image: 'assets/quizassets/steveJobs.jpg', options: {'Steve Jobs': true, 'Bill Gates': false, 'Mark Zuckerberg': false, 'Elon Musk': false}),
    Question(image: 'assets/quizassets/nurialço.jpeg', options: {'İzzet Yıldızhan': false,'Nuri Alço': true,  'Ümit Besen': false, 'Mahsun Kırmızıgül': false}),
    Question(image: 'assets/quizassets/tuncelkurtiz.jpeg', options: { 'Halit Akçatepe': false, 'Münir Özkul': false, 'Tarık Akan': false,'Tuncel Kurtiz': true,}),
    Question(image: 'assets/quizassets/zerrintekindor.png', options: {'Zerrin Tekindor': true, 'Nergis Kumbasar': false, 'Hülya Koçyiğit': false, 'Türkan Şoray': false}),
    Question(image: 'assets/quizassets/zekimürenn.jpg', options: {'Orhan Gencebay': false, 'Zeki Müren': true, 'İbrahim Tatlıses': false, 'Müslüm Gürses': false}),
    Question(image: 'assets/quizassets/lebron.jpg', options: {'Stephen Curry': false,'LeBron James': true,  'Kevin Durant': false, 'Kawhi Leonard': false}),
    Question(image: 'assets/quizassets/madonna.jpg', options: {'Madonna': true, 'Lady Gaga': false, 'Beyoncé': false, 'Rihanna': false}),
    Question(image: 'assets/quizassets/tomcruise.jpg', options: { 'Brad Pitt': false, 'Johnny Depp': false,'Tom Cruise': true, 'Leonardo DiCaprio': false}),
    Question(image: 'assets/quizassets/BeyonceKnowles.jpg', options: {'Beyoncé Knowles': true, 'Adele': false, 'Taylor Swift': false, 'Rihanna': false}),
  ],
);


  static QuizQuestionModel chapterFour = QuizQuestionModel(
  questions: [
    Question(image: 'assets/quizassets/audii.jpg', options: {'Audi': true, 'BMW': false, 'Mercedes-Benz': false, 'Tesla': false}),
    Question(image: 'assets/quizassets/bjk.png', options: { 'Fenerbahçe': false, 'Galatasaray': false,'Beşiktaş': true, 'Trabzonspor': false}),
    Question(image: 'assets/quizassets/citroen.png', options: {'Peugeot': false, 'Renault': false, 'Opel': false,'Citroen': true, }),
    Question(image: 'assets/quizassets/getir.jpg', options: {'Getir': true, 'Yemek Sepeti': false, 'Banabi': false, 'BiTaksi': false}),
    Question(image: 'assets/quizassets/googlee.jpg', options: {'Microsoft': false, 'Apple': false,'Google': true, 'Amazon': false}),
    Question(image: 'assets/quizassets/mcdonaldss.jpeg', options: {'Burger King': false, 'McDonald\'s': true, 'KFC': false, 'Subway': false}),
    Question(image: 'assets/quizassets/mercedess.jpg', options: {'Mercedes': true, 'Audi': false, 'BMW': false, 'Volkswagen': false}),
    Question(image: 'assets/quizassets/nikee.jpg', options: {'Adidas': false, 'Nike': true, 'Puma': false, 'Under Armour': false}),
    Question(image: 'assets/quizassets/opell.jpg', options: { 'Ford': false, 'Renault': false, 'Opel': true,'Volkswagen': false}),
    Question(image: 'assets/quizassets/pepsii.jpg', options: {'Coca-Cola': false, 'Pepsi': true, 'Sprite': false, 'Fanta': false}),
  ],
);


  static QuizQuestionModel chapterFive = QuizQuestionModel(
  questions: [
    Question(image: 'assets/quizassets/puma.jpg', options: {'Puma': true, 'Adidas': false, 'Nike': false, 'Under Armour': false}),
    Question(image: 'assets/quizassets/shell.png', options: { 'BP': false, 'ExxonMobil': false,'Shell': true, 'Chevron': false}),
    Question(image: 'assets/quizassets/starbucks.png', options: {'Costa Coffee': false, 'Dunkin\'': false, 'Starbucks': true, 'Tim Hortons': false}),
    Question(image: 'assets/quizassets/togg.jpg', options: { 'Tesla': false, 'NIO': false, 'Rivian': false,'Togg': true,}),
    Question(image: 'assets/quizassets/turkcell.png', options: {'Turkcell': true, 'Vodafone': false, 'Türk Telekom': false, 'Avea': false}),
    Question(image: 'assets/quizassets/twitter.png', options: {'Facebook': false, 'Instagram': false, 'Twitter': true, 'LinkedIn': false}),
    Question(image: 'assets/quizassets/vodafone.png', options: {'Turkcell': false,'Vodafone': true,  'Türk Telekom': false, 'Avea': false}),
    Question(image: 'assets/quizassets/yemeksepeti.png', options: {'Yemek Sepeti': true, 'Getir': false, 'Banabi': false, 'BiTaksi': false}),
    Question(image: 'assets/quizassets/arcelik.png', options: { 'Beko': false, 'Vestel': false, 'Siemens': false,'Arçelik': true,}),
    Question(image: 'assets/quizassets/carfour.jpg', options: {'Carrefour': true, 'A101': false, 'BİM': false, 'Migros': false}),
  ],
);


 static QuizQuestionModel chapterSix = QuizQuestionModel(
  questions: [
    Question(image: 'assets/quizassets/target.png', options: {'Target': true, 'Walmart': false, 'Costco': false, 'Kmart': false}),
    Question(image: 'assets/quizassets/lacoste.jpg', options: { 'Ralph Lauren': false, 'Tommy Hilfiger': false,'Lacoste': true, 'Polo': false}),
    Question(image: 'assets/quizassets/chanel.png', options: { 'Dior': false, 'Gucci': false, 'Prada': false,'Chanel': true,}),
    Question(image: 'assets/quizassets/avrupakonut.jpg', options: {'Avrupa Konutları': true, 'Emlak Konut': false, 'TOKİ': false, 'Sinpaş': false}),
    Question(image: 'assets/quizassets/garanti.jpg', options: { 'İş Bankası': false,'Garanti': true, 'Akbank': false, 'Yapı Kredi': false}),
    Question(image: 'assets/quizassets/hsbc.png', options: {'HSBC': true, 'Standard Chartered': false, 'Barclays': false, 'Citibank': false}),
    Question(image: 'assets/quizassets/ing.jpg', options: { 'ABN AMRO': false, 'Deutsche Bank': false,'ING BANK': true, 'UniCredit': false}),
    Question(image: 'assets/quizassets/kfc.jpg', options: { 'McDonald\'s': false,'KFC': true, 'Burger King': false, 'Subway': false}),
    Question(image: 'assets/quizassets/şekerbank.png', options: { 'VakıfBank': false, 'Ziraat Bankası': false, 'Halkbank': false,'Şeker Bank': true,}),
    Question(image: 'assets/quizassets/gitHub.png', options: { 'GitLab': false, 'Bitbucket': false, 'GitHub': true,'SourceForge': false}),
  ],
);


 static QuizQuestionModel chapterSeven = QuizQuestionModel(
  questions: [
    Question(image: 'assets/quizassets/agri.jpeg', options: {'Ağrı': true, 'Bursa': false, 'İzmir': false, 'Ankara': false}),
    Question(image: 'assets/quizassets/anıtkabir.jpg', options: {'İstanbul': false, 'İzmir': false, 'Bursa': false,'Ankara': true, }),
    Question(image: 'assets/quizassets/canakkale.jpg', options: {'Ankara': false,'Çanakkale': true,  'İstanbul': false, 'İzmir': false}),
    Question(image: 'assets/quizassets/edirne.jpg', options: {'Edirne': true, 'İstanbul': false, 'İzmir': false, 'Ankara': false}),
    Question(image: 'assets/quizassets/izmirefes.jpeg', options: {'Ankara': false, 'Bursa': false,'İzmir': true,  'Edirne': false}),
    Question(image: 'assets/quizassets/ameri.png', options: {'Paris': false, 'New York': true,'Bükreş': false, 'Brüksel': false}),
    Question(image: 'assets/quizassets/ist.jpg', options: { 'Ankara': false, 'İzmir': false, 'Bursa': false,'İstanbul': true}),
    Question(image: 'assets/quizassets/izmir.jpg', options: {'İzmir': true, 'Ankara': false, 'Bursa': false, 'Edirne': false}),
    Question(image: 'assets/quizassets/mardin.jpeg', options: {'Diyarbakır': false, 'Şanlıurfa': false, 'Gaziantep': false, 'Mardin': true}),
    Question(image: 'assets/quizassets/paris.jpg', options: {'Roma': false, 'Londra': false,'Paris': true,  'Berlin': false}),
  ],
);


  static QuizQuestionModel chapterEight = QuizQuestionModel(
  questions: [
    Question(image: 'assets/quizassets/amerika.jpg', options: {'Amerika': true, 'Paris': false, 'Londra': false, 'Tokyo': false}),
    Question(image: 'assets/quizassets/barcelona.jpg', options: {'Madrid': false,'Barcelona': true,  'Valencia': false, 'Sevilla': false}),
    Question(image: 'assets/quizassets/bjkstadyum.jpg', options: {'İstanbul': true, 'Ankara': false, 'İzmir': false, 'Bursa': false}),
    Question(image: 'assets/quizassets/burjkhalifa.jpg', options: {'Londra': false, 'Amerika': false, 'Türkiye': false,'Dubai': true, }),
    Question(image: 'assets/quizassets/campnou.jpg', options: {'Barcelona': true, 'Madrid': false, 'Valencia': false, 'Sevilla': false}),
    Question(image: 'assets/quizassets/eskisehir.jpg', options: { 'Ankara': false, 'İstanbul': false,'Eskişehir': true, 'İzmir': false}),
    Question(image: 'assets/quizassets/urfa.jpg', options: {'Urfa': true, 'Gaziantep': false, 'Diyarbakır': false, 'Mardin': false}),
    Question(image: 'assets/quizassets/rize.jpg', options: {'Trabzon': false, 'Samsun': false, 'Rize': true, 'Ordu': false}),
    Question(image: 'assets/quizassets/mekke.jpg', options: {'Mekke': true, 'Medine': false, 'Riyadh': false, 'Cidde': false}),
    Question(image: 'assets/quizassets/erzurum.jpg', options: { 'Van': false,'Erzurum': true, 'Ağrı': false, 'Kars': false}),
  ],
);


  static QuizQuestionModel chapterNine = QuizQuestionModel(
  questions: [
    Question(image: 'assets/quizassets/bayburt.jpg', options: {'Bayburt': true, 'Erzurum': false, 'Trabzon': false, 'Rize': false}),
    Question(image: 'assets/quizassets/bigben.jpg', options: {'Paris': false, 'Berlin': false, 'Roma': false,'Londra': true}),
    Question(image: 'assets/quizassets/prag.jpeg', options: {'Budapeşte': false, 'Viyana': false, 'Berlin': false, 'Prag': true}),
    Question(image: 'assets/quizassets/venedik.jpg', options: {'Venedik': true, 'Milano': false, 'Roma': false, 'Floransa': false}),
    Question(image: 'assets/quizassets/van.jpeg', options: {'Ağrı': false,'Van': true,  'Şırnak': false, 'Hakkari': false}),
    Question(image: 'assets/quizassets/trabzon.jpg', options: {'Trabzon': true, 'Samsun': false, 'Rize': false, 'Ordu': false}),
    Question(image: 'assets/quizassets/muglaaa.jpg', options: {'İzmir': false, 'Aydın': false, 'Muğla': true, 'Antalya': false}),
    Question(image: 'assets/quizassets/yunanistan.jpg', options: {'Bulgaristan': false, 'Türkiye': false, 'Yunanistan': true, 'Irak': false}),
    Question(image: 'assets/quizassets/peru.jpg', options: {'Lima': false, 'Cusco': false, 'Peru': true, 'Arequipa': false}),
    Question(image: 'assets/quizassets/brezilya.jpeg', options: {'Çin': false, 'Berlin': false, 'Brezilya': true, 'Afganistan': false}),
  ],
);

}

fonk(){

}