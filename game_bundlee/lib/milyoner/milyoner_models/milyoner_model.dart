import 'dart:math';
import 'package:game_bundlee/milyoner/milyoner_models/milyoner_question_model.dart';

int currentQuestionIndex = 0;
  bool isAnswered = false;
  bool fiftyFiftyUsed = false;
  bool audienceJokerUsed = false;
  bool skipQuestionUsed = false;

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

  void useAudienceJoker() {
      audienceJokerUsed = true;

    
  }