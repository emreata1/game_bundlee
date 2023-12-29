import 'dart:math';
import 'package:game_bundlee/audio.dart';
import 'package:game_bundlee/milyoner/competition.dart';
import 'package:game_bundlee/milyoner/milyoner_models/milyoner_question_model.dart';
  Random random = Random();
  int correctIndex = questions[randoms].correctOptionIndex;
  List<String> removedOptions = [];
  int currentQuestionIndex = 0;
  bool isAnswered = false;
  bool fiftyFiftyUsed = false;
  bool phoneJokerUsed = false;
  bool spectatorJokerUsed = false;
  int sizea=0;
  int sizeb=0;
  int sizec=0;
  int sized=0;
  int sum=0;
  int baraj=0;


void playagain(){
for (int j = 0; j < rewards.length; j++) {
  rewards[j].optioncolor = 'assets/milyonerassets/şıklar3.png';
}

  questions=questions1;
  randoms=randoms1;
  randoms1=Random().nextInt(10);
  randoms2=Random().nextInt(10);
  randoms3=Random().nextInt(10);
  randoms4=Random().nextInt(10);
  randoms5=Random().nextInt(10);
  randoms6=Random().nextInt(10);
  randoms7=Random().nextInt(10);
  randoms8=Random().nextInt(10);
  randoms10=Random().nextInt(10);
  selected=-1;
  currentQuestionIndex=0;
   random = Random();
   correctIndex = questions[randoms].correctOptionIndex;
   currentQuestionIndex = 0;
   isAnswered = false;
   fiftyFiftyUsed = false;
   phoneJokerUsed = false;
   spectatorJokerUsed = false;
   sizea=0;
   sizeb=0;
   sizec=0;
   sized=0;
   sum=0;
   baraj=0;
   restoreRemovedOptions();
   restoreRemovedOptions();

  
  }


void barajguncelle(){
  if(currentQuestionIndex==3){baraj=15000;}
  else if(currentQuestionIndex==6){baraj=120000;}
  else if (currentQuestionIndex==9){baraj=5000000;}
}
  
Future<void> moveToNextQuestion() async {
  isAnswered = false;
  if (currentQuestionIndex + 1 < questions.length) {
    kaynak = rewards[9-currentQuestionIndex].sound;
    
  
    currentQuestionIndex++;
    if(currentQuestionIndex==1){questions=questions2;randoms=randoms2;}
    else if(currentQuestionIndex==2){questions=questions3;randoms=randoms3;}
    else if(currentQuestionIndex==3){questions=questions4;randoms=randoms4;}
    else if(currentQuestionIndex==4){questions=questions5;randoms=randoms5;}
    else if(currentQuestionIndex==5){questions=questions6;randoms=randoms6;}
    else if(currentQuestionIndex==6){questions=questions7;randoms=randoms7;}
    else if(currentQuestionIndex==7){questions=questions8;randoms=randoms8;}
    else if(currentQuestionIndex==8){questions=questions9;randoms=randoms9;}
    else if(currentQuestionIndex==9){questions=questions10;randoms=randoms10;}
    await Future.delayed(const Duration(milliseconds: 50), () {
    oynatsoru();
  });

    correctIndex = questions[randoms].correctOptionIndex;
  } 
}



void useFiftyFiftyJoker() {
  if (!fiftyFiftyUsed) {
    fiftyFiftyUsed = true;
    List<int> removedIndices = [];

    while (removedIndices.length < 2) {
      int removedIndex = Random().nextInt(4);
      if (removedIndex != correctIndex && !removedIndices.contains(removedIndex)) {
        removedIndices.add(removedIndex);
        removedOptions.add(questions[randoms].options[removedIndex]);
        questions[randoms].options[removedIndex] = ' ';
      }
    }
  }
}


void restoreRemovedOptions() {
  if (removedOptions.isNotEmpty) {
    int emptyIndex = questions[randoms].options.indexOf(' ');
    if (emptyIndex != -1 && emptyIndex < questions[randoms].options.length) {
      questions[randoms].options[emptyIndex] = removedOptions.last;
      removedOptions.removeLast();
    } 
  }
}



  void useSpectatorJoker() {
  spectatorJokerUsed = true;
  sizea=0;
  sizeb=0;
  sizec=0;
  sized=0;
  sum=0;
  int maxSum=100;
  int correctIndex = questions[randoms].correctOptionIndex;

if(sum<maxSum){
  if(questions[randoms].options[0]==questions[randoms].options[correctIndex]){
   sizea=(random.nextInt(35) + 60);
   if (sum + sizea > maxSum) {
            sizea = maxSum - sum;
        }
   sum+=sizea;
  }else{
    sizea=(random.nextInt(13)+4);
    if(sum+sizea>maxSum){sizea=maxSum -sum;}
    sum+=sizea;
  }
}

if(sum<maxSum){
  if(questions[randoms].options[1]==questions[randoms].options[correctIndex]){
   sizeb=(random.nextInt(35) + 60);
   if (sum + sizeb > maxSum) {
            sizeb = maxSum - sum;
        }
   sum+=sizeb;
  }else{
    sizeb=(random.nextInt(13)+4);
    if(sum+sizeb>maxSum){sizeb=maxSum -sum;}
    sum+=sizeb;
  }
}

if(sum<maxSum){
  if(questions[randoms].options[2]==questions[randoms].options[correctIndex]){
   sizec=(random.nextInt(40) + 50);
   if (sum + sizec > maxSum) {
            sizec = maxSum - sum;
        }
   sum+=sizec;
  }else{
    sizec=(random.nextInt(13)+4);
    if(sum+sizec>maxSum){sizec=maxSum -sum;}
    sum+=sizec;
  }
}

if(sum<maxSum){
  if(questions[randoms].options[3]==questions[randoms].options[correctIndex]){
   sized=(random.nextInt(35) + 60);
   if (sum + sized > maxSum) {
            sized = maxSum - sum;
        }
   sum+=sized;
  }else{
    sized=(random.nextInt(13)+4);
    if(sum+sized>maxSum){sized=maxSum -sum;}
    sum+=sized;
  }
} 
sum=sizea+sizeb+sizec+sized;
for(int i=0 ;sum<100;i++){
  if(i==0){sizea++;}
  if(i==1){sizeb++;}
  if(i==3){sizec++;}
  if(i==4){
    sized++;
    i=0;
  }
sum=sizea+sizeb+sizec+sized;
}




}
  

  void usePhoneJoker() {
      phoneJokerUsed = true;

    
  }



