import 'package:flutter/material.dart';
import 'package:student_conn/homePage.dart';
import 'package:student_conn/profilePage.dart';
import 'package:student_conn/todo.dart';

class QuizAppMain extends StatefulWidget {
  const QuizAppMain({super.key});

  @override
  State createState() => _QuizAppState();
}

class _QuizAppState extends State {
  int _selectedIndex = 1;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    if (_selectedIndex == 0) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const HomePage()));
    }
    // if (_selectedIndex == 1) {
    //   Navigator.push(
    //       context, MaterialPageRoute(builder: (context) => QuizApp()));
    // }
    if (_selectedIndex == 2) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const ToDoFun()));
    }
    if (_selectedIndex == 3) {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const ProfileInfo()));
    }
  }

  List<Map> allQuestion = [
    {
      "question": "Who is the founder of Microsoft?",
      "options": ["Steves Jobs", "Jeff Bezos", "Bill Gates", "Elon Musk"],
      "answerIndex": 2
    },
    {
      "question": "Who is the founder of Apple?",
      "options": ["Steves Jobs", "Jeff Bezos", "Bill Gates", "Elon Musk"],
      "answerIndex": 0
    },
    {
      "question": "Who is the founder of Amazon?",
      "options": ["Steves Jobs", "Jeff Bezos", "Bill Gates", "Elon Musk"],
      "answerIndex": 1
    },
    {
      "question": "Who is the founder of Google?",
      "options": ["Steves Jobs", "Lary Page", "Bill Gates", "Elon Musk"],
      "answerIndex": 1
    },
    {
      "question": "Who is the founder of twitter?",
      "options": ["Steves Jobs", "Lary Page", "Bill Gates", "Elon Musk"],
      "answerIndex": 3
    },
  ];

  bool questionScreen = true;
  int questionIndex = 0;

  bool finalAns = true;

  int flag0 = 0;
  int flag1 = 0;
  int flag2 = 0;
  int flag3 = 0;

  int score = 0;

  MaterialStatePropertyAll<Color?> chnageKar0() {
    if (flag0 == 0) {
      return const MaterialStatePropertyAll(Color.fromARGB(255, 194, 187, 212));
    } else if (flag0 == 1) {
      return const MaterialStatePropertyAll(Colors.green);
    } else {
      return const MaterialStatePropertyAll(Colors.red);
    }
  }

  MaterialStatePropertyAll<Color?> chnageKar1() {
    if (flag1 == 0) {
      return const MaterialStatePropertyAll(Color.fromARGB(255, 194, 187, 212));
    } else if (flag1 == 1) {
      return const MaterialStatePropertyAll(Colors.green);
    } else {
      return const MaterialStatePropertyAll(Colors.red);
    }
  }

  MaterialStatePropertyAll<Color?> chnageKar2() {
    if (flag2 == 0) {
      return const MaterialStatePropertyAll(Color.fromARGB(255, 194, 187, 212));
    } else if (flag2 == 1) {
      return const MaterialStatePropertyAll(Colors.green);
    } else {
      return const MaterialStatePropertyAll(Colors.red);
    }
  }

  MaterialStatePropertyAll<Color?> chnageKar3() {
    if (flag3 == 0) {
      return const MaterialStatePropertyAll(Color.fromARGB(255, 194, 187, 212));
    } else if (flag3 == 1) {
      return const MaterialStatePropertyAll(Colors.green);
    } else {
      return const MaterialStatePropertyAll(Colors.red);
    }
  }

  Scaffold isQuestionScreen() {
    if (questionScreen) {
      return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Quiz App",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800),
          ),
          centerTitle: true,
          backgroundColor: const Color.fromRGBO(111, 81, 255, 1),
        ),
        bottomNavigationBar: BottomNavigationBar(
          //backgroundColor: Colors.grey,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.black,
              ),
              label: 'Home',
              backgroundColor: Colors.grey,
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.quiz,
                color: Colors.black,
              ),
              label: 'Quiz',
              backgroundColor: Colors.grey,
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.note,
                color: Colors.black,
              ),
              label: 'Todo',
              backgroundColor: Colors.grey,
            ),
            // BottomNavigationBarItem(
            //   icon: Icon(
            //     Icons.group,
            //     color: Colors.black,
            //   ),
            //   label: 'Collab',
            //   backgroundColor: Colors.grey,
            // ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Colors.black,
              ),
              label: 'Profile',
              backgroundColor: Colors.grey,
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.grey,
          onTap: _onItemTapped,
        ),
        body: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 25,
              ),
              Text(
                "Questions : ${questionIndex + 1} / ${allQuestion.length}",
                style:
                    const TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 25,
              ),
              Text(
                allQuestion[questionIndex]["question"],
                style:
                    const TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 25,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    if (finalAns) {
                      if ((allQuestion[questionIndex]["answerIndex"]) == 0) {
                        flag0 = 1;
                        score++;
                      } else {
                        flag0 = 2;

                        //for right ans
                        if ((allQuestion[questionIndex]["answerIndex"]) == 1) {
                          flag1 = 1;
                        } else if ((allQuestion[questionIndex]
                                ["answerIndex"]) ==
                            2) {
                          flag2 = 1;
                        } else if ((allQuestion[questionIndex]
                                ["answerIndex"]) ==
                            3) {
                          flag3 = 1;
                        }
                      }
                      finalAns = false;
                    }
                  });
                },
                style: ButtonStyle(backgroundColor: chnageKar0()),
                child: Text(
                  "A. ${allQuestion[questionIndex]["options"][0]}",
                  style: const TextStyle(
                      fontSize: 25, fontWeight: FontWeight.w400),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    if (finalAns) {
                      if ((allQuestion[questionIndex]["answerIndex"]) == 1) {
                        //print(allQuestion[questionIndex]["answerIndex"]);
                        flag1 = 1;
                        score++;
                      } else {
                        flag1 = 2;
                        //for right ans
                        if ((allQuestion[questionIndex]["answerIndex"]) == 0) {
                          flag0 = 1;
                        } else if ((allQuestion[questionIndex]
                                ["answerIndex"]) ==
                            2) {
                          flag2 = 1;
                        } else if ((allQuestion[questionIndex]
                                ["answerIndex"]) ==
                            3) {
                          flag3 = 1;
                        }
                      }
                      finalAns = false;
                    }
                  });
                },
                style: ButtonStyle(backgroundColor: chnageKar1()),
                child: Text(
                  "B. ${allQuestion[questionIndex]["options"][1]}",
                  style: const TextStyle(
                      fontSize: 25, fontWeight: FontWeight.w400),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    if (finalAns) {
                      if ((allQuestion[questionIndex]["answerIndex"]) == 2) {
                        flag2 = 1;
                        score++;
                      } else {
                        flag2 = 2;

                        //for right ans
                        if ((allQuestion[questionIndex]["answerIndex"]) == 1) {
                          flag1 = 1;
                        } else if ((allQuestion[questionIndex]
                                ["answerIndex"]) ==
                            0) {
                          flag0 = 1;
                        } else if ((allQuestion[questionIndex]
                                ["answerIndex"]) ==
                            3) {
                          flag2 = 1;
                        }
                      }
                      finalAns = false;
                    }
                  });
                },
                style: ButtonStyle(backgroundColor: chnageKar2()),
                child: Text(
                  "C. ${allQuestion[questionIndex]["options"][2]}",
                  style: const TextStyle(
                      fontSize: 25, fontWeight: FontWeight.w400),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    if (finalAns) {
                      if ((allQuestion[questionIndex]["answerIndex"]) == 3) {
                        flag3 = 1;
                        score++;
                      } else {
                        flag3 = 2;
                        //for right ans
                        if ((allQuestion[questionIndex]["answerIndex"]) == 1) {
                          flag1 = 1;
                        } else if ((allQuestion[questionIndex]
                                ["answerIndex"]) ==
                            2) {
                          flag2 = 1;
                        } else if ((allQuestion[questionIndex]
                                ["answerIndex"]) ==
                            0) {
                          flag0 = 1;
                        }
                      }
                      finalAns = false;
                    }
                  });
                },
                style: ButtonStyle(backgroundColor: chnageKar3()),
                child: Text(
                  "D. ${allQuestion[questionIndex]["options"][3]}",
                  style: const TextStyle(
                      fontSize: 25, fontWeight: FontWeight.w400),
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              if (flag0 != 0 || flag1 != 0 || flag2 != 0 || flag3 != 0) {
                questionIndex++;
                if (questionIndex >= allQuestion.length) {
                  questionScreen = false;
                }

                flag0 = 0;
                flag1 = 0;
                flag2 = 0;
                flag3 = 0;
                finalAns = true;
              }
            });
          },
          backgroundColor: const Color.fromRGBO(111, 81, 255, 1),
          child: const Icon(Icons.forward),
        ),
      );
    } else {
      return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Quiz App",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800),
          ),
          centerTitle: true,
          backgroundColor: const Color.fromRGBO(111, 81, 255, 1),
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/trophy.jpg"),
              const SizedBox(
                height: 25,
              ),
              Text("Your Score is: $score",
                  style: const TextStyle(
                      fontSize: 25, fontWeight: FontWeight.w700)),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              score = 0;
              questionIndex = 0;
              questionScreen = true;
            });
          },
          backgroundColor: const Color.fromRGBO(111, 81, 255, 1),
          child: const Icon(Icons.refresh),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return isQuestionScreen();

    // return Scaffold(
    // appBar: AppBar(
    //   title: const Text(
    //     "Quiz App",
    //     style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800),
    //   ),
    // ),
    //   body: isQuestionScreen(),
    // floatingActionButton: FloatingActionButton(
    //   onPressed: () {
    //     setState(() {

    //     });
    //   },
    //   child: const Icon(Icons.forward),
    // ),
    // );
  }
}
