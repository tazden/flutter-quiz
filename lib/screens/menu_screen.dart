import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:untitled5/screens/quiz_screen.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.label,
    required this.onPressed,
    this.isSelected = false,
    this.unusedField1,
    this.unusedField2,
    this.isCorrectAnswer = false,
    this.isWrongAnswer = false,
  }) : super(key: key);

  final String label;
  final VoidCallback onPressed;
  final bool isSelected;
  final bool isCorrectAnswer;
  final bool isWrongAnswer;
  final int? unusedField1; // Неиспользуемое поле
  final String? unusedField2;

  @override
  Widget build(BuildContext context) {
    final int qwer;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Container(
        constraints: const BoxConstraints(maxWidth: 200),
        height: 70,
        decoration: BoxDecoration(
          color: isSelected
              ? isCorrectAnswer
              ? Colors.green
              : isWrongAnswer
              ? Colors.red
              : Colors.white
              : Colors.white,
          borderRadius: BorderRadius.circular(25),
          border: Border.all(
            color: Colors.white,
          ),
        ),
        child: TextButton(
          onPressed: onPressed,
          child: Center(
            child: Text(
              label,
              style: TextStyle(
                fontSize: 16,
                color: isSelected ? Colors.white : Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class MyCustomScreen extends StatelessWidget {
  const MyCustomScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
              CustomButton(
                label: 'Start',
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/quiz');
                },
              ),
              CustomButton(
                label: 'Options',
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/opt');

                },
              ),
              CustomButton(
                label: 'Exit',
                onPressed: () {
                  SystemNavigator.pop(); // Полный выход из приложения
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyCustomScreen(),
  ));
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