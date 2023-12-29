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
  Question(image: 'assets/quizassets/Barisakarsu.jpg', options: {'Barış Akarsu': true, 'Kenan İmirzalıoğlu': false, 'Hadise': false, 'Gülben Ergen': false}),
  Question(image: 'assets/quizassets/emiröztürk.jpeg', options: {'Emir Öztürk': true, 'Murat Boz': false, 'Demet Akalın': false, 'Berksan': false}),
  Question(image: 'assets/quizassets/fatihterim.jpg', options: {'Hakan Şükür': false, 'Fatih Terim': true, 'Arda Turan': false, 'Emre Belözoğlu': false}),
  Question(image: 'assets/quizassets/fosurfosur.jpg', options: {'Cem Özkok': true, 'Cem Yılmaz': false, 'Mehmet Ali Erbil': false, 'Beyazıt Öztürk': false}),
  Question(image: 'assets/quizassets/icardi.jpg', options: {'Zlatan Ibrahimović': false, 'İcardi': true, 'Lionel Messi': false, 'Cristiano Ronaldo': false}),
  Question(image: 'assets/quizassets/kuzey.jpeg', options: {'Kıvanç Tatlıtuğ': true, 'Engin Akyürek': false, 'Halit Ergenç': false, 'Burak Özçivit': false}),
  Question(image: 'assets/quizassets/ganyotcu..jpg', options: {'Murat Boz': false, 'Ebubekir Öztürk': true, 'Ata Demirer': false, 'Cem Yılmaz': false}),
],

  );

  static QuizQuestionModel chapterTwo = QuizQuestionModel(
   questions: [
  Question(image: 'assets/quizassets/aziz.jpg', options: {'Aziz Nesin': true, 'Cem Yılmaz': false, 'Halit Ergenç': false, 'Kenan İmirzalıoğlu': false}),
  Question(image: 'assets/quizassets/sinanegin.jpeg', options: {'Sinan Engin': true, 'Kenan Doğulu': false, 'Murat Boz': false, 'Tarkan': false}),
  Question(image: 'assets/quizassets/tarkan.jpg', options: {'Tarkan': true, 'Kıvanç Tatlıtuğ': false, 'Engin Akyürek': false, 'Burak Özçivit': false}),
  Question(image: 'assets/quizassets/vasip.jpg', options: {'Vasip Şahin': true, 'Arda Turan': false, 'Emre Belözoğlu': false, 'Hakan Şükür': false}),
  Question(image: 'assets/quizassets/melissa.jpg', options: {'Melissa Vargas': true, 'Cristiano Ronaldo': false, 'Lionel Messi': false, 'Zlatan Ibrahimović': false}),
  Question(image: 'assets/quizassets/zehra.jpg', options: {'Zehra Güneş': false, 'Kenan İmirzalıoğlu': true, 'Murat Boz': false, 'Cem Yılmaz': false}),
  Question(image: 'assets/quizassets/güvenlik.jpg', options: {'Yakışıklı Güvenlik': true, 'Arda Turan': false, 'Cristiano Ronaldo': false, 'Lionel Messi': false}),
  Question(image: 'assets/quizassets/hadibe.jpg', options: {'Yiğit Özşener': true, 'Cem Yılmaz': false, 'Halit Ergenç': false, 'Kenan İmirzalıoğlu': false}),
  Question(image: 'assets/quizassets/cembolukbasi.jpg', options: {'Cem Bölükbaşı': true, 'Murat Boz': false, 'Kıvanç Tatlıtuğ': false, 'Engin Akyürek': false}),
  Question(image: 'assets/quizassets/tomhanks.jpg', options: {'Tom Hanks': true, 'Cristiano Ronaldo': false, 'Lionel Messi': false, 'Zlatan Ibrahimović': false}),
],

  );
static QuizQuestionModel chapterThree = QuizQuestionModel(
  questions: [
    Question(image: 'assets/quizassets/kobe.jpg', options: {'Kobe Bryant': true, 'Michael Jordan': false, 'Shaquille O\'Neal': false, 'LeBron James': false}),
    Question(image: 'assets/quizassets/steveJobs.jpg', options: {'Steve Jobs': true, 'Bill Gates': false, 'Mark Zuckerberg': false, 'Elon Musk': false}),
    Question(image: 'assets/quizassets/nurialço.jpeg', options: {'Nuri Alço': true, 'İzzet Yıldızhan': false, 'Ümit Besen': false, 'Mahsun Kırmızıgül': false}),
    Question(image: 'assets/quizassets/tuncelkurtiz.jpeg', options: {'Tuncel Kurtiz': true, 'Halit Akçatepe': false, 'Münir Özkul': false, 'Tarık Akan': false}),
    Question(image: 'assets/quizassets/zerrintekindor.png', options: {'Zerrin Tekindor': true, 'Nergis Kumbasar': false, 'Hülya Koçyiğit': false, 'Türkan Şoray': false}),
    Question(image: 'assets/quizassets/zekimürenn.jpg', options: {'Orhan Gencebay': false, 'Zeki Müren': true, 'İbrahim Tatlıses': false, 'Müslüm Gürses': false}),
    Question(image: 'assets/quizassets/lebron.jpg', options: {'LeBron James': true, 'Stephen Curry': false, 'Kevin Durant': false, 'Kawhi Leonard': false}),
    Question(image: 'assets/quizassets/madonna.jpg', options: {'Madonna': true, 'Lady Gaga': false, 'Beyoncé': false, 'Rihanna': false}),
    Question(image: 'assets/quizassets/tomcruise.jpg', options: {'Tom Cruise': true, 'Brad Pitt': false, 'Johnny Depp': false, 'Leonardo DiCaprio': false}),
    Question(image: 'assets/quizassets/BeyonceKnowles.jpg', options: {'Beyoncé Knowles': true, 'Adele': false, 'Taylor Swift': false, 'Rihanna': false}),
  ],
);


  static QuizQuestionModel chapterFour = QuizQuestionModel(
  questions: [
    Question(image: 'assets/quizassets/audi.png', options: {'Audi': true, 'BMW': false, 'Mercedes-Benz': false, 'Tesla': false}),
    Question(image: 'assets/quizassets/bjk.png', options: {'Beşiktaş': true, 'Fenerbahçe': false, 'Galatasaray': false, 'Trabzonspor': false}),
    Question(image: 'assets/quizassets/citroen.png', options: {'Citroen': true, 'Peugeot': false, 'Renault': false, 'Opel': false}),
    Question(image: 'assets/quizassets/getir.jpg', options: {'Getir': true, 'Yemek Sepeti': false, 'Banabi': false, 'BiTaksi': false}),
    Question(image: 'assets/quizassets/google.png', options: {'Google': true, 'Microsoft': false, 'Apple': false, 'Amazon': false}),
    Question(image: 'assets/quizassets/mcDonals.png', options: {'Burger King': false, 'McDonald\'s': true, 'KFC': false, 'Subway': false}),
    Question(image: 'assets/quizassets/Mercedes.png', options: {'Mercedes': true, 'Audi': false, 'BMW': false, 'Volkswagen': false}),
    Question(image: 'assets/quizassets/nike.png', options: {'Adidas': false, 'Nike': true, 'Puma': false, 'Under Armour': false}),
    Question(image: 'assets/quizassets/opel.png', options: {'Opel': true, 'Ford': false, 'Renault': false, 'Volkswagen': false}),
    Question(image: 'assets/quizassets/pepsi.png', options: {'Coca-Cola': false, 'Pepsi': true, 'Sprite': false, 'Fanta': false}),
  ],
);


  static QuizQuestionModel chapterFive = QuizQuestionModel(
  questions: [
    Question(image: 'assets/quizassets/puma.jpg', options: {'Puma': true, 'Adidas': false, 'Nike': false, 'Under Armour': false}),
    Question(image: 'assets/quizassets/shell.png', options: {'Shell': true, 'BP': false, 'ExxonMobil': false, 'Chevron': false}),
    Question(image: 'assets/quizassets/starbucks.png', options: {'Costa Coffee': false, 'Dunkin\'': false, 'Starbucks': true, 'Tim Hortons': false}),
    Question(image: 'assets/quizassets/togg.jpg', options: {'Togg': true, 'Tesla': false, 'NIO': false, 'Rivian': false}),
    Question(image: 'assets/quizassets/turkcell.png', options: {'Turkcell': true, 'Vodafone': false, 'Türk Telekom': false, 'Avea': false}),
    Question(image: 'assets/quizassets/twitter.png', options: {'Facebook': false, 'Instagram': false, 'Twitter': true, 'LinkedIn': false}),
    Question(image: 'assets/quizassets/vodafone.png', options: {'Vodafone': true, 'Turkcell': false, 'Türk Telekom': false, 'Avea': false}),
    Question(image: 'assets/quizassets/yemeksepeti.png', options: {'Yemek Sepeti': true, 'Getir': false, 'Banabi': false, 'BiTaksi': false}),
    Question(image: 'assets/quizassets/arcelik.png', options: {'Arçelik': true, 'Beko': false, 'Vestel': false, 'Siemens': false}),
    Question(image: 'assets/quizassets/carfour.png', options: {'Carrefour': true, 'A101': false, 'BİM': false, 'Migros': false}),
  ],
);


 static QuizQuestionModel chapterSix = QuizQuestionModel(
  questions: [
    Question(image: 'assets/quizassets/target.png', options: {'Target': true, 'Walmart': false, 'Costco': false, 'Kmart': false}),
    Question(image: 'assets/quizassets/lacoste.jpg', options: {'Lacoste': true, 'Ralph Lauren': false, 'Tommy Hilfiger': false, 'Polo': false}),
    Question(image: 'assets/quizassets/chanel.png', options: {'Chanel': true, 'Dior': false, 'Gucci': false, 'Prada': false}),
    Question(image: 'assets/quizassets/avrupakonut.png', options: {'Avrupa Konutları': true, 'Emlak Konut': false, 'TOKİ': false, 'Sinpaş': false}),
    Question(image: 'assets/quizassets/garanti.jpg', options: {'Garanti': true, 'İş Bankası': false, 'Akbank': false, 'Yapı Kredi': false}),
    Question(image: 'assets/quizassets/hsbc.png', options: {'HSBC': true, 'Standard Chartered': false, 'Barclays': false, 'Citibank': false}),
    Question(image: 'assets/quizassets/ing.jpg', options: {'ING BANK': true, 'ABN AMRO': false, 'Deutsche Bank': false, 'UniCredit': false}),
    Question(image: 'assets/quizassets/kfc.jpg', options: {'KFC': true, 'McDonald\'s': false, 'Burger King': false, 'Subway': false}),
    Question(image: 'assets/quizassets/şekerbank.png', options: {'Şeker Bank': true, 'VakıfBank': false, 'Ziraat Bankası': false, 'Halkbank': false}),
    Question(image: 'assets/quizassets/gitHub.png', options: {'GitHub': true, 'GitLab': false, 'Bitbucket': false, 'SourceForge': false}),
  ],
);


 static QuizQuestionModel chapterSeven = QuizQuestionModel(
  questions: [
    Question(image: 'assets/quizassets/agri.jpeg', options: {'Ağrı': true, 'Bursa': false, 'İzmir': false, 'Ankara': false}),
    Question(image: 'assets/quizassets/anıtkabir.jpg', options: {'Ankara': true, 'İstanbul': false, 'İzmir': false, 'Bursa': false}),
    Question(image: 'assets/quizassets/canakkale.jpg', options: {'Ankara': false,'Çanakkale': true,  'İstanbul': false, 'İzmir': false}),
    Question(image: 'assets/quizassets/edirne.jpg', options: {'Edirne': true, 'İstanbul': false, 'İzmir': false, 'Ankara': false}),
    Question(image: 'assets/quizassets/izmirefes.jpeg', options: {'İzmir': true, 'Ankara': false, 'Bursa': false, 'Edirne': false}),
    Question(image: 'assets/quizassets/ameri.png', options: {'Paris': false, 'New York': false,'Bükreş': true, 'Brüksel': false}),
    Question(image: 'assets/quizassets/ist.jpg', options: {'İstanbul': true, 'Ankara': false, 'İzmir': false, 'Bursa': false}),
    Question(image: 'assets/quizassets/izmir.jpg', options: {'İzmir': true, 'Ankara': false, 'Bursa': false, 'Edirne': false}),
    Question(image: 'assets/quizassets/mardin.jpeg', options: {'Diyarbakır': false, 'Şanlıurfa': false, 'Gaziantep': false, 'Mardin': true}),
    Question(image: 'assets/quizassets/paris.jpg', options: {'Paris': true, 'Roma': false, 'Londra': false, 'Berlin': false}),
  ],
);


  static QuizQuestionModel chapterEight = QuizQuestionModel(
  questions: [
    Question(image: 'assets/quizassets/amerika.jpg', options: {'Amerika': true, 'Paris': false, 'Londra': false, 'Tokyo': false}),
    Question(image: 'assets/quizassets/barcelona.jpg', options: {'Barcelona': true, 'Madrid': false, 'Valencia': false, 'Sevilla': false}),
    Question(image: 'assets/quizassets/bjkstadyum.jpg', options: {'İstanbul': true, 'Ankara': false, 'İzmir': false, 'Bursa': false}),
    Question(image: 'assets/quizassets/burjkhalifa.jpeg', options: {'Dubai': true, 'Londra': false, 'Amerika': false, 'Türkiye': false}),
    Question(image: 'assets/quizassets/campnou.jpg', options: {'Barcelona': true, 'Madrid': false, 'Valencia': false, 'Sevilla': false}),
    Question(image: 'assets/quizassets/eskisehir.jpg', options: {'Eskişehir': true, 'Ankara': false, 'İstanbul': false, 'İzmir': false}),
    Question(image: 'assets/quizassets/urfa.jpg', options: {'Urfa': true, 'Gaziantep': false, 'Diyarbakır': false, 'Mardin': false}),
    Question(image: 'assets/quizassets/rize.jpg', options: {'Trabzon': false, 'Samsun': false, 'Rize': true, 'Ordu': false}),
    Question(image: 'assets/quizassets/mekke.jpg', options: {'Mekke': true, 'Medine': false, 'Riyadh': false, 'Cidde': false}),
    Question(image: 'assets/quizassets/erzurum.jpg', options: {'Erzurum': true, 'Van': false, 'Ağrı': false, 'Kars': false}),
  ],
);


  static QuizQuestionModel chapterNine = QuizQuestionModel(
  questions: [
    Question(image: 'assets/quizassets/bayburt.jpg', options: {'Bayburt': true, 'Erzurum': false, 'Trabzon': false, 'Rize': false}),
    Question(image: 'assets/quizassets/bigben.jpg', options: {'Londra': true, 'Paris': false, 'Berlin': false, 'Roma': false}),
    Question(image: 'assets/quizassets/prag.jpeg', options: {'Budapeşte': false, 'Viyana': false, 'Berlin': false, 'Prag': true}),
    Question(image: 'assets/quizassets/venedik.jpg', options: {'Venedik': true, 'Milano': false, 'Roma': false, 'Floransa': false}),
    Question(image: 'assets/quizassets/van.jpeg', options: {'Van': true, 'Ağrı': false, 'Şırnak': false, 'Hakkari': false}),
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