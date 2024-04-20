import 'dart:math';

import 'package:flutter/material.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({Key? key}) : super(key: key);

  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    _navigateAfterDelay();
  }

  void _navigateAfterDelay() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, '/menu');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/backgt.png'), // Путь к вашему изображению
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: Text(
                  'Loading',

                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                    fontWeight: FontWeight.bold, // Сделайте текст жирным

                  ),
                ),
              ),
            ),
          ],
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
