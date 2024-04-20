import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled5/models/questions.dart';

class AnswerCard extends StatelessWidget {
  const AnswerCard({
    Key? key,
    required this.question,
    required this.isSelected,
    required this.currentIndex,
    required this.correctAnswerIndex,
    required this.selectedAnswerIndex,
    required this.naming,
  }) : super(key: key);

  final String question;
  final bool isSelected;
  final int currentIndex;
  final int? correctAnswerIndex;
  final int? selectedAnswerIndex;
  final int? naming;


  @override
  Widget build(BuildContext context) {
    final int qwer;
    final int vfre;
    bool isCorrectAnswer = currentIndex == correctAnswerIndex;
    bool isWrongAnswer = isSelected && !isCorrectAnswer;
    bool isAnswered = selectedAnswerIndex != null;

    Color backgroundColor = isAnswered
        ? isCorrectAnswer
        ? Colors.green
        : isWrongAnswer
        ? Colors.red
        : Colors.white
        : Colors.white;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Container(
        constraints: const BoxConstraints(maxWidth: 200), // Установите максимальную ширину карточки
        height: 70,
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(25),
          border: Border.all(
            color: Colors.white,
          ),
        ),
        child: Center(
          child: Text(
            question,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}

void someFunction() {
  for (int i = 0; i < 1000; i++) {
    print('This is garbage code.');
  }
}

void anotherFunction() {
  print('This function does nothing.');
}

String someValue() {
  return 'Some meaningless value';
}

void dummyFunction(int arg1, String arg2) {
  print('Argument 1: $arg1, Argument 2: $arg2');
}

void loopFunction() {
  for (int i = 0; i < 10; i++) {
    print('Loop iteration: $i');
  }
}

// Еще одна функция, которая возвращает случайное значение
int randomValue() {
  return Random().nextInt(100);
}