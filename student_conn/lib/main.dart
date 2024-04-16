import 'package:flutter/material.dart';
import 'package:student_conn/firstpage.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: //HomePage(),
          FirstPage(),
    );
  }
}
