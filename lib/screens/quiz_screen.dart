import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled5/models/questions.dart';
import 'package:untitled5/screens/result_screen.dart';
import 'package:untitled5/widgets/answer_card.dart';
import 'package:untitled5/widgets/next_button.dart';
import 'package:untitled5/screens/menu_screen.dart'; // Импортируем экран меню

class QuizScreen extends StatefulWidget {
  const QuizScreen({Key? key}) : super(key: key);

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int? selectedAnswerIndex;
  int questionIndex = 0;
  int score = 0;

  void pickAnswer(int value) {
    final int qwer;
    setState(() {
      selectedAnswerIndex = value; // Фиксируем выбранный ответ
      final question = questions[questionIndex];
      if (selectedAnswerIndex == question.correctAnswerIndex) {
        score += 1;
      }
    });
  }

  void goToNextQuestion() {
    setState(() {
      if (questionIndex < questions.length - 1) {
        questionIndex++;
        selectedAnswerIndex = null; // Сбрасываем выбранный ответ при переходе к следующему вопросу
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final question = questions[questionIndex]; // Получаем текущий вопрос по индексу
    bool isLastQuestion = questionIndex == questions.length - 1;

    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/blackbackgr.png'), // Путь к вашему изображению
                fit: BoxFit.cover,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30.0), // Отступ сверху для текста вопроса
                    child: Text(
                      question.question,
                      style: const TextStyle(
                        fontSize: 21,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: question.options.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: selectedAnswerIndex == null ? () => pickAnswer(index) : null,
                        child: AnswerCard(
                          currentIndex: index,
                          question: question.options[index],
                          selectedAnswerIndex: selectedAnswerIndex,
                          isSelected: selectedAnswerIndex == index,
                          correctAnswerIndex: question.correctAnswerIndex, naming: null,
                        ),
                      );
                    },
                  ),
                  isLastQuestion
                      ? RectangularButton(onPressed: () {Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ResultScreen(score: score),));
                  }, label: "Finish")
                      : RectangularButton(
                    onPressed: selectedAnswerIndex != null ? goToNextQuestion : null,
                    label: "Next",
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 50,
            left: 20, // Положение картинки слева вверху
            child: GestureDetector(
              onTap: () {
                if (questionIndex > 0) {
                  setState(() {
                    questionIndex--; // Возвращаемся к предыдущему вопросу
                    selectedAnswerIndex = null; // Сбрасываем выбранный ответ
                  });
                } else {
                  Navigator.pushReplacementNamed(context, '/menu');
                }
              },
              child: Image.asset(
                'assets/back.png', // Путь к вашей первой картинке
                height: 30,
                width: 30,
              ),
            ),
          ),
          Positioned(
            top: 50,
            right: 20, // Положение картинки справа вверху
            child: GestureDetector(
              onTap: () {
                Navigator.pushReplacementNamed(context, '/menu');
              },
              child: Image.asset(
                'assets/menu.png', // Путь к вашей второй картинке
                height: 30,
                width: 30,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
