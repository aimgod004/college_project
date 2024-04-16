import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:student_conn/homePage.dart';
import 'package:student_conn/profilePage.dart';
import 'package:student_conn/todo.dart';

class StartQuiz extends StatefulWidget {
  const StartQuiz({super.key});

  @override
  State createState() => _StartQuizState();
}

class QuizListData {
  String name;
  String img;
  // String next;

  QuizListData({
    required this.name,
    required this.img,
  });
}

class _StartQuizState extends State {
  List quizList = [
    QuizListData(name: "Flutter", img: "assets/images/quizImages/flutter.png"),
    QuizListData(name: "Java", img: "assets/images/quizImages/java.png"),
    QuizListData(name: "Python", img: "assets/images/quizImages/py.jpeg"),
    QuizListData(name: "C++", img: "assets/images/quizImages/cpp.png"),
    QuizListData(name: "HTML", img: "assets/images/quizImages/html.png"),
  ];

  bool switchMode = true;

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          switchMode ? const Color.fromRGBO(111, 81, 255, 1) : Colors.black,
      body: Padding(
        padding: const EdgeInsets.only(top: 100),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: const EdgeInsets.only(left: 35),
              child: Text(
                "Let's Play",
                style: GoogleFonts.quicksand(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 22,
                ),
              ),
            ),
            //Image.asset(""),
            Container(
              padding: const EdgeInsets.only(left: 35),
              child: Text(
                "QUIZ",
                style: GoogleFonts.quicksand(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 32,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 29, right: 29, bottom: 4, top: 12),
              child: Row(
                children: [
                  const Icon(
                    Icons.menu,
                    color: Colors.white,
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        switchMode = !switchMode;
                      });
                    },
                    icon: Icon(
                      switchMode
                          ? Icons.mode_night_rounded
                          : Icons.mode_night_outlined,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Icon(
                    Icons.more_vert,
                    color: Colors.white,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 29, right: 29, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Icon(
                    Icons.sort,
                    color: Color.fromARGB(255, 174, 167, 167),
                    size: 18,
                  ),
                  Text(
                    "  Date modified",
                    style: GoogleFonts.quicksand(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: const Color.fromARGB(255, 174, 167, 167)),
                  ),
                  Text(
                    "  |",
                    style: GoogleFonts.quicksand(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Icon(
                    Icons.arrow_downward,
                    color: Color.fromARGB(255, 174, 167, 167),
                    size: 18,
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40)),
                  color: Color.fromRGBO(255, 255, 255, 1),
                ),
                child: Column(
                  children: [
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.only(top: 20),
                        decoration: const BoxDecoration(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(40),
                              topRight: Radius.circular(40)),
                        ),
                        child: ListView.builder(
                          scrollDirection: Axis.vertical,
                          itemCount: quizList.length,
                          physics: const BouncingScrollPhysics(),
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () {
                                //print(quizList[index].next);     ---next redirected page
                              },
                              child: Container(
                                margin: const EdgeInsets.only(top: 10),
                                padding: const EdgeInsets.only(
                                  left: 20,
                                  bottom: 20,
                                  top: 20,
                                ),
                                decoration: BoxDecoration(
                                  color: const Color.fromRGBO(255, 255, 255, 1),
                                  border: Border.all(
                                      color:
                                          const Color.fromRGBO(0, 0, 0, 0.05),
                                      width: 0.5),
                                  boxShadow: const [
                                    BoxShadow(
                                      offset: Offset(0, 4),
                                      blurRadius: 20,
                                      color: Color.fromRGBO(0, 0, 0, 0.13),
                                    )
                                  ],
                                  borderRadius:
                                      const BorderRadius.all(Radius.zero),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          height: 60,
                                          width: 60,
                                          decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                            // color: Color.fromRGBO(
                                            //     217, 217, 217, 1),
                                          ),
                                          child:
                                              Image.asset(quizList[index].img),
                                        ),
                                        const SizedBox(
                                          width: 20,
                                        ),
                                        SizedBox(
                                          width: 260,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                quizList[index].name,
                                                style: GoogleFonts.inter(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 20,
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      // body: Column(
      //   crossAxisAlignment: CrossAxisAlignment.start,
      //   children: [
      //     Padding(
      //       padding: EdgeInsets.only(top: 47, left: 20, right: 20),
      //       child: Row(
      //         children: [
      //           Builder(
      //             builder: (context) => GestureDetector(
      //               onTap: () {
      //                 Scaffold.of(context).openDrawer();
      //               },
      //               child: Icon(
      //                 Icons.menu,
      //                 color: Colors.white,
      //               ),
      //             ),
      //           ),
      //           Spacer(),
      //           Icon(
      //             Icons.notifications,
      //             color: Colors.white,
      //           ),
      //         ],
      //       ),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.only(top: 19, left: 20, right: 20),
      //       child: Column(
      //         crossAxisAlignment: CrossAxisAlignment.start,
      //         children: [
      //           Text(
      //             "Welcome To",
      //             style: GoogleFonts.jost(
      //                 fontSize: 26.98,
      //                 fontWeight: FontWeight.w300,
      //                 color: Colors.white),
      //           ),
      //           Text(
      //             "StudyHub",
      //             style: GoogleFonts.jost(
      //                 fontSize: 37,
      //                 fontWeight: FontWeight.w700,
      //                 color: Colors.white),
      //           ),
      //         ],
      //       ),
      //     ),
      //   ],
      // ),
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
    );
  }
}
