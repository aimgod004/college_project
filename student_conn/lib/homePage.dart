import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:student_conn/profilePage.dart';
import 'package:student_conn/quizz/quiz1.dart';
import 'package:student_conn/side_navbar/home_sidebar.dart';
import 'package:student_conn/todo.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class EventData {
  String title;
  String description;
  String date;

  EventData({
    required this.title,
    required this.description,
    required this.date,
  });
}

List<EventData> eventList = [
  EventData(
      title: "Farewell", description: "On 13th April 2024", date: "15/03/2024"),
  EventData(
      title: "Culturals",
      description: "For 1st and 2nd year Students",
      date: "12/03/2024"),
  EventData(
      title: "Exam Form",
      description: "Last Date to fill exam form is 20/03",
      date: "11/03/2024"),
  EventData(
      title: "Seminar on Placement",
      description: "For 3st and 4nd year Students",
      date: "10/03/2024"),
  EventData(
      title: "Hackathon",
      description: "For 1st and 2nd year Students",
      date: "09/03/2024"),
  EventData(
      title: "Industrial Visit",
      description: "For 3rd year Students",
      date: "09/03/2024"),
  EventData(
      title: "EndSem Exams",
      description: "Exam starts form 2nd May",
      date: "09/03/2024"),
];

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State createState() => _HomePageState();
}

class _HomePageState extends State {
  final Uri _url = Uri.parse('https://www.udemy.com');

  int _selectedIndex = 0;

  List<LinearGradient> colorList = [
    const LinearGradient(colors: [
      Color.fromRGBO(197, 4, 98, 1),
      Color.fromRGBO(80, 3, 112, 1),
    ]),
    const LinearGradient(colors: [
      Color.fromRGBO(0, 77, 228, 1),
      Color.fromRGBO(1, 47, 135, 1),
    ])
  ];
  List<LinearGradient> colorList2 = [
    const LinearGradient(colors: [
      Color.fromRGBO(33, 138, 230, 1),
      Color.fromRGBO(167, 68, 210, 1),
    ]),
    const LinearGradient(colors: [
      Color.fromRGBO(202, 60, 195, 1),
      Color.fromRGBO(91, 21, 123, 1),
    ])
  ];

  List<String> subject = [
    "BlockChain Technology",
    " Natural Language Processing",
    "Business Intelligence",
    "Deep Learning",
  ];

  List<String> time = [
    "9.00 - 9.30",
    "9.45 - 10.15",
    "11.00 - 11.30",
    "11.30 - 12.30",
  ];

  List<String> courses = [
    "UX Designer",
    "Python",
    "Java Dsa",
    "Flutter Devlopment",
    "NodeJs development",
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    if (_selectedIndex == 1) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const QuizApp()));
    }
    if (_selectedIndex == 2) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const ToDoFun()));
    }
    // if (_selectedIndex == 3) {
    //   Navigator.push(context,
    //       MaterialPageRoute(builder: (context) => const ProfileInfo()));
    // }
    if (_selectedIndex == 3) {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const ProfileInfo()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // body: Container(),
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
        drawer: Drawer(child: SideBarClass()),
        body: Container(
          color: const Color.fromRGBO(111, 81, 255, 1),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
              padding: EdgeInsets.only(top: 47, left: 20, right: 20),
              child: Row(
                children: [
                  Builder(
                    builder: (context) => GestureDetector(
                      onTap: () {
                        Scaffold.of(context).openDrawer();
                      },
                      child: Icon(
                        Icons.menu,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Spacer(),
                  Icon(
                    Icons.notifications,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 19, left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Welcome To",
                    style: GoogleFonts.jost(
                        fontSize: 26.98,
                        fontWeight: FontWeight.w300,
                        color: Colors.white),
                  ),
                  Text(
                    "StudyHub",
                    style: GoogleFonts.jost(
                        fontSize: 37,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15, left: 20, right: 20),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Enter Your Keyword",
                  hintStyle: GoogleFonts.inter(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color.fromARGB(255, 255, 254, 254)),
                  suffixIcon: const Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(28.5),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 29),
                child: SingleChildScrollView(
                  child: Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(38),
                          topRight: Radius.circular(38)),
                      color: Color.fromRGBO(255, 255, 255, 1),
                    ),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //Todays class
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 33, left: 20, right: 20),
                            child: Text(
                              "Todays Class",
                              style: GoogleFonts.jost(
                                  fontSize: 18, fontWeight: FontWeight.w600),
                            ),
                          ),
                          SizedBox(
                            height: 150,
                            child: ListView.builder(
                              //shrinkWrap: true,
                              itemCount: subject.length,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding:
                                      const EdgeInsets.only(top: 16, left: 20),
                                  child: Container(
                                    height: 242,
                                    width: 190,
                                    decoration: BoxDecoration(
                                        gradient: colorList2[
                                            index % colorList2.length],
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(14))),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 22, top: 20),
                                      child: Column(children: [
                                        Text(
                                          subject[index],
                                          style: GoogleFonts.jost(
                                              fontSize: 17,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.white),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          time[index],
                                          style: GoogleFonts.jost(
                                              fontSize: 17,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.white),
                                        ),
                                      ]),
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                          //Courses for you
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 33, left: 20, right: 20),
                            child: Text(
                              "Courses For You",
                              style: GoogleFonts.jost(
                                  fontSize: 18, fontWeight: FontWeight.w600),
                            ),
                          ),

                          GestureDetector(
                            onTap: _launchUrl,
                            child: SizedBox(
                              height: 250,
                              child: ListView.builder(
                                //shrinkWrap: true,
                                itemCount: courses.length,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: const EdgeInsets.only(
                                        top: 16, left: 20),
                                    child: Container(
                                      height: 242,
                                      width: 190,
                                      decoration: BoxDecoration(
                                          gradient: colorList[
                                              index % colorList.length],
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(14))),
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 22, top: 20),
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                courses[index],
                                                style: GoogleFonts.jost(
                                                    fontSize: 17,
                                                    fontWeight: FontWeight.w500,
                                                    color: Colors.white),
                                              ),
                                              Image.asset(
                                                "assets/images/img.png",
                                                height: 160,
                                                width: 160,
                                              )
                                            ]),
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 30, bottom: 15, left: 20),
                            child: Text(
                              "Upcoming Events",
                              style: GoogleFonts.jost(
                                  fontSize: 18, fontWeight: FontWeight.w600),
                            ),
                          ),
                          //Upcoming events
                          SizedBox(
                            height: 280,
                            child: ListView.builder(
                              itemCount: eventList.length,
                              reverse: true,
                              physics: BouncingScrollPhysics(),
                              itemBuilder: (context, index) {
                                return Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 20, right: 20),
                                      child: Container(
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: const Color.fromRGBO(
                                                151, 71, 255, 0.51)),
                                        child: Row(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.all(15),
                                              child: Container(
                                                height: 13,
                                                width: 13,
                                                decoration: const BoxDecoration(
                                                  color: Color.fromRGBO(
                                                      151, 71, 255, 1),
                                                  shape: BoxShape.circle,
                                                ),
                                                //color: Color.fromRGBO(151, 71, 255, 1),
                                              ),
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 15),
                                                  child: Text(
                                                    eventList[index].title,
                                                    style: GoogleFonts.jost(
                                                        fontSize: 20,
                                                        fontWeight:
                                                            FontWeight.w600),
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 14),
                                                  child: Text(
                                                    eventList[index]
                                                        .description,
                                                    style: GoogleFonts.jost(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w400),
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 200,
                                                          right: 10,
                                                          bottom: 5),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                    children: [
                                                      const Icon(
                                                          Icons.calendar_month),
                                                      const SizedBox(
                                                        height: 10,
                                                      ),
                                                      Text(
                                                          eventList[index].date,
                                                          style:
                                                              GoogleFonts.jost(
                                                            fontSize: 12,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                          ))
                                                    ],
                                                  ),
                                                )
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                  ],
                                );
                              },
                            ),
                          ),
                        ]),
                  ),
                ),
              ),
            )
          ]),
        ));
  }

  Future<void> _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }
}
