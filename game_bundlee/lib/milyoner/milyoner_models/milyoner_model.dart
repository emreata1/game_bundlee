// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_print, unused_local_variable

import 'dart:async';
import 'dart:math';
import 'package:game_bundlee/milyoner/competition.dart';
import 'package:game_bundlee/milyoner/milyoner_models/milyoner_question_model.dart';

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
  Random random = Random();
void moveToNextQuestion() {
      isAnswered = false;
      if (currentQuestionIndex + 1 < questions.length) {
        currentQuestionIndex++;
      } 
  }

  void useFiftyFiftyJoker() {
      if (!fiftyFiftyUsed) {
        fiftyFiftyUsed = true;
       int correctIndex = questions[currentQuestionIndex].correctOptionIndex;
        List<int> removedIndices = [];

        while (removedIndices.length < 2) {
          int removedIndex = Random().nextInt(4);
          if (removedIndex != correctIndex && !removedIndices.contains(removedIndex)) {
            removedIndices.add(removedIndex);
            questions[currentQuestionIndex].options[removedIndex] = ' ';
          }
        }
      }
  }

  void useSpectatorJoker() {
  //spectatorJokerUsed = true;
  sizea=0;
  sizeb=0;
  sizec=0;
  sized=0;
  sum=0;
  int maxSum=100;
  int correctIndex = questions[currentQuestionIndex].correctOptionIndex;

if(sum<maxSum){
  if(questions[currentQuestionIndex].options[0]==questions[currentQuestionIndex].options[correctIndex]){
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
  if(questions[currentQuestionIndex].options[1]==questions[currentQuestionIndex].options[correctIndex]){
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
  if(questions[currentQuestionIndex].options[2]==questions[currentQuestionIndex].options[correctIndex]){
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
  if(questions[currentQuestionIndex].options[3]==questions[currentQuestionIndex].options[correctIndex]){
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

/*for(int j=0 ;sum>100;j++){
  if(j==0){sizea--;}
  if(j==1){sizeb--;}
  if(j==3){sizec--;}
  if(j==4){
    sized--;
    j=0;
  }
  sum=sizea+sizeb+sizec+sized;
}*/


}
  

  void usePhoneJoker() {
      phoneJokerUsed = true;

    
  }

  void canResize(){
    Timer(Duration(seconds: 1), () {
                  canresize=true; });
  }

