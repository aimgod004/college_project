// import 'package:flutter/material.dart';
// import 'package:student_conn/homePage.dart';
// import 'package:student_conn/profilePage.dart';
// import 'package:student_conn/quizz/options.dart';
// import 'package:student_conn/quizz/quiz.dart';
// import 'package:student_conn/todo.dart';

// class StartQuiz extends StatefulWidget {
//   const StartQuiz({super.key});

//   @override
//   State createState() => _StartQuizState();
// }

// class _StartQuizState extends State {
//   int _selectedIndex = 1;

//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//     if (_selectedIndex == 0) {
//       Navigator.push(
//           context, MaterialPageRoute(builder: (context) => const HomePage()));
//     }
//     // if (_selectedIndex == 1) {
//     //   Navigator.push(
//     //       context, MaterialPageRoute(builder: (context) => QuizApp()));
//     // }
//     if (_selectedIndex == 2) {
//       Navigator.push(
//           context, MaterialPageRoute(builder: (context) => const ToDoFun()));
//     }
//     if (_selectedIndex == 3) {
//       Navigator.push(context,
//           MaterialPageRoute(builder: (context) => const ProfileInfo()));
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text(
//           "Quiz App",
//           style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800),
//         ),
//         centerTitle: true,
//         backgroundColor: Colors.deepPurpleAccent,
//       ),
//       body: Center(
//         child: ElevatedButton(
//           style: const ButtonStyle(
//               backgroundColor:
//                   MaterialStatePropertyAll(Colors.deepPurpleAccent),
//               minimumSize: MaterialStatePropertyAll(Size(200, 50))),
//           onPressed: () {
//             Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   //builder: (context) => const QuizAppMain(),
//                   builder: (context) => const Options(),
//                 ));
//           },
//           child: const Text(
//             "Start Quiz",
//             style: TextStyle(
//               fontSize: 30,
//               color: Colors.white,
//             ),
//           ),
//         ),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         //backgroundColor: Colors.grey,
//         items: const <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//             icon: Icon(
//               Icons.home,
//               color: Colors.black,
//             ),
//             label: 'Home',
//             backgroundColor: Colors.grey,
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(
//               Icons.quiz,
//               color: Colors.black,
//             ),
//             label: 'Quiz',
//             backgroundColor: Colors.grey,
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(
//               Icons.note,
//               color: Colors.black,
//             ),
//             label: 'Todo',
//             backgroundColor: Colors.grey,
//           ),
//           // BottomNavigationBarItem(
//           //   icon: Icon(
//           //     Icons.group,
//           //     color: Colors.black,
//           //   ),
//           //   label: 'Collab',
//           //   backgroundColor: Colors.grey,
//           // ),
//           BottomNavigationBarItem(
//             icon: Icon(
//               Icons.person,
//               color: Colors.black,
//             ),
//             label: 'Profile',
//             backgroundColor: Colors.grey,
//           ),
//         ],
//         currentIndex: _selectedIndex,
//         selectedItemColor: Colors.grey,
//         onTap: _onItemTapped,
//       ),
//     );
//   }
// }
