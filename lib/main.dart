import 'dart:math';

import 'package:flutter/material.dart';
import 'package:untitled5/screens/loading_screen.dart';
import 'package:untitled5/screens/menu_screen.dart';
import 'package:untitled5/screens/option_screen.dart';
import 'package:untitled5/screens/quiz_screen.dart'; // Импортируйте ваш LoadingScreen

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sea Odyssey',

      debugShowCheckedModeBanner: false,
      home: const LoadingScreen(), // Здесь установите LoadingScreen как начальный экран
      // Добавьте маршруты для других экранов вашего приложения
      routes: {
        '/quiz': (context) => const QuizScreen(), // Пример маршрута для QuizScreen
        '/menu': (context) => const MyCustomScreen(), // Пример маршрута для QuizScreen
        '/opt': (context) =>  OptionScreen(), // Пример маршрута для QuizScreen
      },
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