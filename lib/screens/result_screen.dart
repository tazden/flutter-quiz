import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/next_button.dart';

class ResultScreen extends StatelessWidget {
  final int score;

  const ResultScreen({Key? key, required this.score}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String scoreText = '$score/10'; // Добавляем "/10" к значению score
    final int qwer;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/blackbackgr.png'), // Путь к вашему изображению
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Your result',
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
              SizedBox(height: 20),
              Text(
                scoreText, // Отображаем score с добавленным "/10"
                style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 20), // Добавляем отступ между текстом и кнопкой
              RectangularButton( // Добавляем кнопку "To Menu"
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/menu');
                },
                label: 'To Menu',
              ),
            ],
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

