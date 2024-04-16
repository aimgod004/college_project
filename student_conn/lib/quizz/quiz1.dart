import 'package:flutter/material.dart';
import 'package:student_conn/quizz/options.dart';

class QuizApp extends StatefulWidget {
  const QuizApp({super.key});

  @override
  State<StatefulWidget> createState() => _QuizAppsState();
}

class _QuizAppsState extends State {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: StartQuiz(),
      debugShowCheckedModeBanner: false,
    );
  }
}
