class QuestionModal{
  final String question;
  final List<String> options;
  final int correctAnswerIndex;

  const QuestionModal({
    required this.correctAnswerIndex,
    required this.question,
    required this.options
});
}

const List<QuestionModal> questions=[
  QuestionModal(correctAnswerIndex: 1, question: "Which sea separates Africa and the Arabian Peninsula?", options: [
      "Dead Sea",
      "Red sea",
      "Sea of Azov"

  ],),
  QuestionModal(correctAnswerIndex: 2, question: "Name the largest enclosed body of water on Earth.", options: [
    "Aral Sea",
    "Black Sea",
    "Caspian Sea"

  ],),
  QuestionModal(correctAnswerIndex: 2, question: "Name the shallowest sea in the world.", options: [
    "Arafura Sea",
    "Dead Sea",
    "Sea of Azov"

  ],),
  QuestionModal(correctAnswerIndex: 2, question: "Where is the Puerto Rico Ocean Trench?", options: [
    "Indian Ocean",
    "Pacific Ocean",
    "Atlantic Ocean"

  ],),

  QuestionModal(correctAnswerIndex: 1, question: "What is the name of the peninsula that is located between the Black and Azov seas?", options: [
    "Kamchatka",
    "Crimean peninsula",
    "The Iberian Peninsula"

  ],),

  QuestionModal(correctAnswerIndex: 1, question: "In which sea in Central Asia, which was once the fourth largest lake in the world, water levels began to decline rapidly in the mid-20th century?", options: [
    "Baltic Sea",
    "Aral Sea",
    "Black Sea"

  ],),

  QuestionModal(correctAnswerIndex: 0, question: "Can you name the deepest ocean trench?", options: [
    "Mariana Trench",
    "Puerto Rico",
    "Tonga Trough"

  ],),

  QuestionModal(correctAnswerIndex: 1, question: "In which ocean is the North Sea located?", options: [
    "Indian Ocean",
    "Atlantic Ocean",
    "Arctic Ocean"

  ],),

  QuestionModal(correctAnswerIndex: 2, question: "What ocean is Madagascar located in?", options: [
    "Arctic Ocean",
    "Pacific Ocean",
    "Indian Ocean"

  ],),

  QuestionModal(correctAnswerIndex: 0, question: "Which sea does the Amudarya and Syr Darya rivers flow into?", options: [
    "Aral Sea",
    "Dead Sea",
    "Caspian Sea"

  ],),
];