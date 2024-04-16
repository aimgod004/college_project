import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:student_conn/homePage.dart';
import 'package:student_conn/quizz/quiz1.dart';
import 'package:student_conn/todo.dart';

class ProfileInfo extends StatefulWidget {
  const ProfileInfo({super.key});
  @override
  State createState() => ProfileInfoState();
}

class ProfileInfoState extends State {
  //bottom navi bar dependencies-----------
  int _selectedIndex = 1;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    if (_selectedIndex == 0) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const HomePage()));
    }
    if (_selectedIndex == 1) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const QuizApp()));
    }
    if (_selectedIndex == 2) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const ToDoFun()));
    }

    // if (_selectedIndex == 4) {
    //   Navigator.push(context,
    //       MaterialPageRoute(builder: (context) => const ProfileInfo()));
    // }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 50,
                width: 200,
                margin: const EdgeInsets.only(top: 48, left: 27),
                child: Text(
                  "My Profile",
                  style: GoogleFonts.lexend(
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                      color: const Color.fromRGBO(0, 0, 0, 1)),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 75,
                    width: 75,
                    margin: const EdgeInsets.only(left: 25),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.black, width: 0.75),
                        image: const DecorationImage(
                            image: AssetImage("assets/images/profile.png"),
                            fit: BoxFit.cover)),
                    // child: Image.asset(
                    //   "Assets/Ellipse2.png",
                    //   height: 75,
                    //   width: 75,
                    // ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        "User",
                        style: GoogleFonts.encodeSansExpanded(
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                            color: const Color.fromRGBO(0, 0, 0, 1)),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "210520201234",
                        style: GoogleFonts.encodeSansExpanded(
                            fontSize: 10,
                            fontWeight: FontWeight.w300,
                            color: const Color.fromRGBO(0, 0, 0, 1)),
                      )
                    ],
                  ),
                  const Spacer(),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          margin: const EdgeInsets.only(right: 30),
                          //  padding: EdgeInsets.only(right: 50),
                          height: 24,
                          width: 24,
                          child: const Icon(
                            Icons.settings_suggest,
                            size: 36,
                          )),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Center(
                child: Container(
                  height: 169,
                  width: 300,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 1),
                    boxShadow: const [
                      BoxShadow(
                          color: Color.fromRGBO(22, 22, 151, 0.3),
                          offset: Offset(0, 4),
                          blurRadius: 4)
                    ],
                    borderRadius: BorderRadius.circular(10),
                    gradient: const LinearGradient(colors: [
                      Color.fromRGBO(238, 121, 226, 0.5),
                      Color.fromRGBO(151, 71, 255, 0.5)
                    ]),
                  ),
                  child: Center(
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 13, top: 22, bottom: 10),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                "DEPARTMENT :",
                                style: GoogleFonts.encodeSansExpanded(
                                  fontSize: 10,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              const SizedBox(
                                width: 22,
                              ),
                              Text(
                                "BE Computer Engineering",
                                style: GoogleFonts.encodeSansExpanded(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w600,
                                    color:
                                        const Color.fromRGBO(22, 22, 151, 1)),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 21,
                          ),
                          Row(
                            children: [
                              Text(
                                "SEMESTER :",
                                style: GoogleFonts.encodeSansExpanded(
                                  fontSize: 10,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              const SizedBox(
                                width: 42,
                              ),
                              Text(
                                "7",
                                style: GoogleFonts.encodeSansExpanded(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w600,
                                    color:
                                        const Color.fromRGBO(22, 22, 151, 1)),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 21,
                          ),
                          Row(
                            children: [
                              Text(
                                "CURRENT CGPA :",
                                style: GoogleFonts.encodeSansExpanded(
                                  fontSize: 10,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              const SizedBox(
                                width: 12,
                              ),
                              Text(
                                " 7.5",
                                style: GoogleFonts.encodeSansExpanded(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w600,
                                    color:
                                        const Color.fromRGBO(22, 22, 151, 1)),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 21,
                          ),
                          Row(
                            children: [
                              Text(
                                "ACADEMIC YEAR :",
                                style: GoogleFonts.encodeSansExpanded(
                                  fontSize: 10,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                "2020 - 2024",
                                style: GoogleFonts.encodeSansExpanded(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w600,
                                    color:
                                        const Color.fromRGBO(22, 22, 151, 1)),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25, right: 20),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "About",
                          style: GoogleFonts.lexend(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: const Color.fromRGBO(0, 0, 0, 1)),
                        ),
                        const Spacer(),
                        Text(
                          "Edit",
                          style: GoogleFonts.encodeSansExpanded(
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              color: const Color.fromRGBO(22, 22, 151, 1)),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Text(
                          "Date of Birth",
                          style: GoogleFonts.encodeSansExpanded(
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              color: const Color.fromRGBO(0, 0, 0, 1)),
                        ),
                        const SizedBox(
                          width: 23,
                        ),
                        Text(
                          "1st Jan 2002",
                          style: GoogleFonts.encodeSansExpanded(
                              fontSize: 10,
                              fontWeight: FontWeight.w500,
                              color: const Color.fromRGBO(0, 0, 0, 1)),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Text(
                          "Gender",
                          style: GoogleFonts.encodeSansExpanded(
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              color: const Color.fromRGBO(0, 0, 0, 1)),
                        ),
                        const SizedBox(
                          width: 53,
                        ),
                        Text(
                          "MALE",
                          style: GoogleFonts.encodeSansExpanded(
                              fontSize: 10,
                              fontWeight: FontWeight.w500,
                              color: const Color.fromRGBO(0, 0, 0, 1)),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25, right: 20),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Contact Details",
                          style: GoogleFonts.lexend(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: const Color.fromRGBO(0, 0, 0, 1)),
                        ),
                        const Spacer(),
                        Text(
                          "Edit",
                          style: GoogleFonts.encodeSansExpanded(
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              color: const Color.fromRGBO(22, 22, 151, 1)),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Text(
                          "Contact no",
                          style: GoogleFonts.encodeSansExpanded(
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              color: const Color.fromRGBO(0, 0, 0, 1)),
                        ),
                        const SizedBox(
                          width: 23,
                        ),
                        Text(
                          "123456790",
                          style: GoogleFonts.encodeSansExpanded(
                              fontSize: 10,
                              fontWeight: FontWeight.w500,
                              color: const Color.fromRGBO(0, 0, 0, 1)),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Text(
                          "Email",
                          style: GoogleFonts.encodeSansExpanded(
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              color: const Color.fromRGBO(0, 0, 0, 1)),
                        ),
                        const SizedBox(
                          width: 53,
                        ),
                        Text(
                          "abc123@gmail.com",
                          style: GoogleFonts.encodeSansExpanded(
                              fontSize: 10,
                              fontWeight: FontWeight.w500,
                              color: const Color.fromRGBO(0, 0, 0, 1)),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Text(
                          "Address",
                          style: GoogleFonts.encodeSansExpanded(
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              color: const Color.fromRGBO(0, 0, 0, 1)),
                        ),
                        const SizedBox(
                          width: 40,
                        ),
                        Text(
                          "12, abc street, xyz - 123456.",
                          style: GoogleFonts.encodeSansExpanded(
                              fontSize: 10,
                              fontWeight: FontWeight.w500,
                              color: const Color.fromRGBO(0, 0, 0, 1)),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Text(
                  "Current / Ongoing Courses",
                  style: GoogleFonts.lexend(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: const Color.fromRGBO(0, 0, 0, 1)),
                ),
              ),
              const SizedBox(
                height: 100,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Computer Engineering",
                      style: GoogleFonts.encodeSansExpanded(
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                          color: const Color.fromRGBO(0, 0, 0, 1)),
                    ),
                    Text(
                      "Department of Engineering",
                      style: GoogleFonts.encodeSansExpanded(
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                          color: const Color.fromRGBO(0, 0, 0, 0.51)),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 13,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.calendar_month),
                        Text(
                          "Sep 2020 - June 2024",
                          style: GoogleFonts.encodeSansExpanded(
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              color: const Color.fromRGBO(0, 0, 0, 1)),
                        ),
                      ],
                    ),
                    Text(
                      "2024 Passout Batch | 210520201234",
                      style: GoogleFonts.encodeSansExpanded(
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                          color: const Color.fromRGBO(0, 0, 0, 0.51)),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25, right: 20),
                child: Row(
                  children: [
                    Text(
                      "Projects",
                      style: GoogleFonts.lexend(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: const Color.fromRGBO(0, 0, 0, 1)),
                    ),
                    const Spacer(),
                    Row(
                      children: [
                        const Icon(Icons.add),
                        Text(
                          "Add new",
                          style: GoogleFonts.encodeSansExpanded(
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              color: const Color.fromRGBO(22, 22, 151, 1)),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 7,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 50,
                ),
                child: Text(
                  "You have not added any yet! ",
                  style: GoogleFonts.encodeSansExpanded(
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromRGBO(0, 0, 0, 0.51)),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25, right: 20),
                child: Row(
                  children: [
                    Text(
                      "Certifications",
                      style: GoogleFonts.lexend(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: const Color.fromRGBO(0, 0, 0, 1)),
                    ),
                    const Spacer(),
                    Row(
                      children: [
                        const Icon(Icons.add),
                        Text(
                          "Add new",
                          style: GoogleFonts.encodeSansExpanded(
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              color: const Color.fromRGBO(22, 22, 151, 1)),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 7,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 50,
                ),
                child: Text(
                  "You have not added any yet! ",
                  style: GoogleFonts.encodeSansExpanded(
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromRGBO(0, 0, 0, 0.51)),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25, right: 20),
                child: Row(
                  children: [
                    Text(
                      "Patents",
                      style: GoogleFonts.lexend(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: const Color.fromRGBO(0, 0, 0, 1)),
                    ),
                    const Spacer(),
                    Row(
                      children: [
                        const Icon(Icons.add),
                        Text(
                          "Add new",
                          style: GoogleFonts.encodeSansExpanded(
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              color: const Color.fromRGBO(22, 22, 151, 1)),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 7,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 50,
                ),
                child: Text(
                  "You have not added any yet! ",
                  style: GoogleFonts.encodeSansExpanded(
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromRGBO(0, 0, 0, 0.51)),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25, right: 20),
                child: Row(
                  children: [
                    Text(
                      "Extra Curricular Activities",
                      style: GoogleFonts.lexend(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: const Color.fromRGBO(0, 0, 0, 1)),
                    ),
                    const Spacer(),
                    Row(
                      children: [
                        const Icon(Icons.add),
                        Text(
                          "Add new",
                          style: GoogleFonts.encodeSansExpanded(
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              color: const Color.fromRGBO(22, 22, 151, 1)),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 7,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 50,
                ),
                child: Text(
                  "You have not added any yet! ",
                  style: GoogleFonts.encodeSansExpanded(
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromRGBO(0, 0, 0, 0.51)),
                ),
              ),
            ],
          ),
        ),
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
    );
  }
}
