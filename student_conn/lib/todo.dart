import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:student_conn/homePage.dart';
import 'package:student_conn/profilePage.dart';
import 'package:student_conn/quizz/quiz1.dart';

class TodoData {
  String title;
  String description;
  String date;

  TodoData({
    required this.title,
    required this.description,
    required this.date,
  });
}

class ToDoFun extends StatefulWidget {
  const ToDoFun({super.key});

  @override
  State createState() => _TODOAppUIState();
}

//--------------

class _TODOAppUIState extends State {
  bool switchMode = true;

  List<TodoData> cardList = [];

  // bottom navigation dependencies-------------
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
    // if (_selectedIndex == 2) {
    //   Navigator.push(
    //       context, MaterialPageRoute(builder: (context) => const ToDoFun()));
    // }
    if (_selectedIndex == 3) {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const ProfileInfo()));
    }
  }

  ///Text Editing Controllers
  final TextEditingController dateController = TextEditingController();
  final TextEditingController titleController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  //submit fun
  void submit(bool doEdit, [TodoData? todoModalObj]) {
    if (!doEdit) {
      setState(() {
        if (titleController.text.trim().isNotEmpty &&
            descriptionController.text.trim().isNotEmpty &&
            dateController.text.trim().isNotEmpty) {
          cardList.add(TodoData(
              title: titleController.text,
              description: descriptionController.text,
              date: dateController.text));
        }

        titleController.clear();
        descriptionController.clear();
        dateController.clear();
      });
    } else {
      setState(() {
        todoModalObj!.title = titleController.text.trim();
        todoModalObj.description = descriptionController.text.trim();
        todoModalObj.date = dateController.text.trim();
      });
    }
    Navigator.of(context).pop();
  }

  //edit fun
  void editTask(TodoData toDoModalObj) {
    titleController.text = toDoModalObj.title;
    descriptionController.text = toDoModalObj.description;
    dateController.text = toDoModalObj.date;
    showBottomSht(true, toDoModalObj);
  }

  //================================
  void showBottomSht(bool doEdit, [TodoData? todoModalObj]) {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      builder: (context) {
        return Padding(
          padding: MediaQuery.of(context).viewInsets,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  Text(
                    "Create Task",
                    style: GoogleFonts.quicksand(
                        fontWeight: FontWeight.w600, fontSize: 26),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //title
                  Text(
                    "Title",
                    style: GoogleFonts.quicksand(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromRGBO(0, 139, 148, 1),
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  TextField(
                    controller: titleController,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: "Enter title"),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  //description
                  Text(
                    "Description",
                    style: GoogleFonts.quicksand(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromRGBO(0, 139, 148, 1),
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  TextField(
                    controller: descriptionController,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: "Enter Description"),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  //Date
                  Text(
                    "Date",
                    style: GoogleFonts.quicksand(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromRGBO(0, 139, 148, 1),
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  TextField(
                    onTap: () async {
                      DateTime? pickedDate = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(2024),
                          lastDate: DateTime(2025));

                      String formatedDate =
                          DateFormat.yMMMd().format(pickedDate!);

                      setState(() {
                        dateController.text = formatedDate;
                      });
                    },
                    controller: dateController,
                    decoration: InputDecoration(
                        suffix: const Icon(Icons.calendar_month_outlined),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: "Enter Date"),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
              // ElevatedButton(
              //   onPressed: () {
              //     if (!doEdit) {
              //       submit(false);
              //     } else {
              //       submit(true, todoModalObj);
              //     }
              //     //doEdit ? submit(true, todoModalObj) : submit(false);
              //     // submit(false);
              //   },
              //   child: Text(
              //     "Submit",
              //     style: GoogleFonts.inter(
              //         color: Colors.white,
              //         fontWeight: FontWeight.w700,
              //         fontSize: 20),
              //   ),
              // )
              Container(
                height: 50,
                width: 300,
                margin: const EdgeInsets.all(10),
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(30)),
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: switchMode
                        ? const MaterialStatePropertyAll(
                            Color.fromRGBO(111, 81, 255, 1))
                        : const MaterialStatePropertyAll(Colors.black),
                  ),
                  onPressed: () {
                    if (!doEdit) {
                      submit(false);
                    } else {
                      submit(true, todoModalObj);
                    }
                    // Navigator.of(context).pop();
                  },
                  child: Text(
                    "Submit",
                    style: GoogleFonts.inter(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
  //================================

  // Future<void> showBottomSht(bool doEdit, [TodoData? todoModelObj]) async {
  //   await showModalBottomSheet(
  //     isScrollControlled: true,
  //     shape: const RoundedRectangleBorder(
  //       borderRadius: BorderRadius.only(
  //         topLeft: Radius.circular(20),
  //         topRight: Radius.circular(30),
  //       ),
  //     ),
  //     context: context,
  //     builder: (context) {
  //       return Padding(
  //         padding: EdgeInsets.only(
  //           left: 15,
  //           right: 15,
  //           bottom: MediaQuery.of(context).viewInsets.bottom,
  //         ),
  //         child: Column(
  //           mainAxisSize: MainAxisSize.min,
  //           children: [
  //             const SizedBox(
  //               height: 20,
  //             ),
  //             Text(
  //               "Create Tasks",
  //               style: GoogleFonts.quicksand(
  //                 fontWeight: FontWeight.w600,
  //                 fontSize: 22,
  //               ),
  //             ),
  //             const SizedBox(
  //               height: 15,
  //             ),
  //             Form(
  //               key: _formKey,
  //               child: Column(
  //                 mainAxisAlignment: MainAxisAlignment.start,
  //                 crossAxisAlignment: CrossAxisAlignment.start,
  //                 children: [
  //                   Text(
  //                     "Title",
  //                     style: GoogleFonts.quicksand(
  //                       color: const Color.fromRGBO(89, 57, 241, 1),
  //                       fontWeight: FontWeight.w400,
  //                       fontSize: 15,
  //                     ),
  //                   ),
  //                   const SizedBox(
  //                     height: 3,
  //                   ),
  //                   TextFormField(
  //                     controller: titleController,
  //                     decoration: InputDecoration(
  //                       hintText: "Enter Title",
  //                       focusedBorder: OutlineInputBorder(
  //                         borderRadius: BorderRadius.circular(12),
  //                         borderSide: const BorderSide(
  //                           color: Color.fromRGBO(89, 57, 241, 1),
  //                         ),
  //                       ),
  //                       border: OutlineInputBorder(
  //                         borderRadius: BorderRadius.circular(12),
  //                       ),
  //                       errorBorder: OutlineInputBorder(
  //                         borderSide: const BorderSide(color: Colors.red),
  //                         borderRadius: BorderRadius.circular(12),
  //                       ),
  //                     ),
  //                   ),
  //                   const SizedBox(height: 15),
  //                   Text(
  //                     "Description",
  //                     style: GoogleFonts.quicksand(
  //                       color: const Color.fromRGBO(89, 57, 241, 1),
  //                       fontWeight: FontWeight.w400,
  //                       fontSize: 15,
  //                     ),
  //                   ),
  //                   const SizedBox(
  //                     height: 3,
  //                   ),
  //                   TextFormField(
  //                     controller: descriptionController,
  //                     maxLines: 4,
  //                     decoration: InputDecoration(
  //                       hintText: "Enter Description",
  //                       focusedBorder: OutlineInputBorder(
  //                         borderRadius: BorderRadius.circular(12),
  //                         borderSide: const BorderSide(
  //                           color: Color.fromRGBO(89, 57, 241, 1),
  //                         ),
  //                       ),
  //                       border: OutlineInputBorder(
  //                         borderSide: const BorderSide(),
  //                         borderRadius: BorderRadius.circular(12),
  //                       ),
  //                       errorBorder: OutlineInputBorder(
  //                         borderSide: const BorderSide(color: Colors.red),
  //                         borderRadius: BorderRadius.circular(12),
  //                       ),
  //                     ),
  //                   ),
  //                   const SizedBox(height: 15),
  //                   Text(
  //                     "Date",
  //                     style: GoogleFonts.quicksand(
  //                       color: const Color.fromRGBO(89, 57, 241, 1),
  //                       fontWeight: FontWeight.w400,
  //                       fontSize: 15,
  //                     ),
  //                   ),
  //                   const SizedBox(
  //                     height: 3,
  //                   ),
  //                   TextFormField(
  //                     controller: dateController,
  //                     readOnly: true,
  //                     decoration: InputDecoration(
  //                       hintText: "Enter Date",
  //                       suffixIcon: const Icon(Icons.date_range_rounded),
  //                       focusedBorder: OutlineInputBorder(
  //                         borderRadius: BorderRadius.circular(12),
  //                         borderSide: const BorderSide(
  //                           color: Color.fromRGBO(89, 57, 241, 1),
  //                         ),
  //                       ),
  //                       border: OutlineInputBorder(
  //                         borderSide: const BorderSide(),
  //                         borderRadius: BorderRadius.circular(12),
  //                       ),
  //                       errorBorder: OutlineInputBorder(
  //                         borderSide: const BorderSide(color: Colors.red),
  //                         borderRadius: BorderRadius.circular(12),
  //                       ),
  //                     ),
  //                     onTap: () async {
  //                       DateTime? pickedDate = await showDatePicker(
  //                         context: context,
  //                         initialDate: DateTime.now(),
  //                         firstDate: DateTime(2023),
  //                         lastDate: DateTime(2025),
  //                       );
  //                       String formatedDate =
  //                           DateFormat.yMMMd().format(pickedDate!);
  //                       dateController.text = formatedDate;
  //                     },
  //                   ),
  //                 ],
  //               ),
  //             ),
  //             const SizedBox(
  //               height: 10,
  //             ),
  //             Container(
  //               height: 50,
  //               width: 300,
  //               margin: const EdgeInsets.all(10),
  //               decoration:
  //                   BoxDecoration(borderRadius: BorderRadius.circular(30)),
  //               child: ElevatedButton(
  //                 style: ButtonStyle(
  //                   backgroundColor: switchMode
  //                       ? const MaterialStatePropertyAll(
  //                           Color.fromRGBO(111, 81, 255, 1))
  //                       : const MaterialStatePropertyAll(Colors.black),
  //                 ),
  //                 onPressed: () {
  //                   if (!doEdit) {
  //                     submit(false);
  //                   } else {
  //                     submit(true, todoModelObj);
  //                   }
  //                   // Navigator.of(context).pop();
  //                 },
  //                 child: Text(
  //                   "Submit",
  //                   style: GoogleFonts.inter(
  //                       color: Colors.white,
  //                       fontWeight: FontWeight.w700,
  //                       fontSize: 20),
  //                 ),
  //               ),
  //             ),
  //           ],
  //         ),
  //       );
  //     },
  //   );
  // }

  //-------------------
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color.fromRGBO(111, 81, 255, 1),
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
                "Hello",
                style: GoogleFonts.quicksand(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 22,
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              padding: const EdgeInsets.only(left: 35),
              child: Text(
                "User",
                style: GoogleFonts.quicksand(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 30,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 35),
              child: Text(
                "${cardList.length} tasks",
                style: GoogleFonts.quicksand(
                    fontSize: 12,
                    fontWeight: FontWeight.w300,
                    color: Colors.white),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 29, right: 29, bottom: 4),
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
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(217, 217, 217, 1),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40)),
                ),
                width: double.infinity,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    Text(
                      "CREATE TO DO LIST",
                      style: GoogleFonts.quicksand(
                          fontSize: 15, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
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
                          itemCount: cardList.length,
                          itemBuilder: (context, index) {
                            return Slidable(
                              closeOnScroll: true,
                              endActionPane: ActionPane(
                                motion: const DrawerMotion(),
                                children: [
                                  Expanded(
                                    child: Column(
                                      children: [
                                        const SizedBox(
                                          height: 11,
                                        ),
                                        Row(
                                          children: [
                                            GestureDetector(
                                              onTap: () {
                                                setState(() {
                                                  editTask(cardList[index]);
                                                });
                                              },
                                              child: Container(
                                                padding: const EdgeInsets.only(
                                                    top: 5),
                                                height: 110,
                                                width: 80,
                                                decoration: const BoxDecoration(
                                                  color: Color.fromARGB(
                                                      255, 32, 111, 230),
                                                ),
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    const Icon(
                                                      Icons.edit,
                                                      color: Colors.white,
                                                      size: 20,
                                                    ),
                                                    const SizedBox(
                                                      height: 5,
                                                    ),
                                                    Text(
                                                      "Edit",
                                                      style:
                                                          GoogleFonts.quicksand(
                                                              fontSize: 12,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            GestureDetector(
                                              onTap: () {
                                                setState(() {
                                                  cardList
                                                      .remove(cardList[index]);
                                                });
                                              },
                                              child: Container(
                                                padding:
                                                    const EdgeInsets.all(5),
                                                height: 110,
                                                width: 80,
                                                decoration: const BoxDecoration(
                                                  color: Color.fromRGBO(
                                                      206, 48, 64, 1),
                                                ),
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    const Icon(
                                                      Icons.delete,
                                                      color: Colors.white,
                                                      size: 20,
                                                    ),
                                                    const SizedBox(
                                                      height: 5,
                                                    ),
                                                    Text(
                                                      "Delete",
                                                      style:
                                                          GoogleFonts.quicksand(
                                                              fontSize: 12,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 5,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              key: ValueKey(index),
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                                color: Color.fromRGBO(
                                                    217, 217, 217, 1),
                                              ),
                                              child: const Icon(
                                                Icons.image,
                                                size: 30,
                                              )),
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
                                                  cardList[index].title,
                                                  style: GoogleFonts.inter(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 15,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                                const SizedBox(
                                                  height: 5,
                                                ),
                                                Text(
                                                  cardList[index].description,
                                                  style: GoogleFonts.inter(
                                                      color:
                                                          const Color.fromRGBO(
                                                              0, 0, 0, 0.7),
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: 12),
                                                ),
                                                const SizedBox(
                                                  height: 5,
                                                ),
                                                Text(
                                                  cardList[index].date,
                                                  style: GoogleFonts.inter(
                                                      color:
                                                          const Color.fromRGBO(
                                                              0, 0, 0, 0.7),
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: 12),
                                                ),
                                              ],
                                            ),
                                          ),
                                          const Spacer(),
                                          Checkbox(
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            activeColor: Colors.green,
                                            value: true,
                                            onChanged: (val) {},
                                          ),
                                          // const SizedBox(
                                          //   width: 10,
                                          // )
                                        ],
                                      ),
                                    ]),
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showBottomSht(false);
        },
        //backgroundColor: const Color.fromRGBO(89, 57, 241, 1),
        backgroundColor:
            switchMode ? const Color.fromRGBO(111, 81, 255, 1) : Colors.black,
        shape: const CircleBorder(),
        child: Icon(
          Icons.draw_sharp,
          color: switchMode ? Colors.white : Colors.red[400],
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
