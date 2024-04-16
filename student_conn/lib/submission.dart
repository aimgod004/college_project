import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Submission extends StatefulWidget {
  const Submission({super.key});

  @override
  State<Submission> createState() => SubmissionState();
}

class SubmissionState extends State<Submission> {
  Icon myIcon() {
    if (done == false) {
      return const Icon(null);
    } else {
      return const Icon(
        Icons.verified_rounded,
        size: 10,
      );
    }
  }

  bool done = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 20,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 20),
            child: Row(
              children: [
                Text(
                  "Submission Task",
                  style: GoogleFonts.lexend(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: const Color.fromRGBO(0, 0, 0, 1),
                  ),
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.chevron_left_outlined,
                    size: 36,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Container(
              height: 229,
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(121, 224, 238, 0.3),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 11.47,
                              width: 12.5,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color.fromRGBO(121, 224, 238, 1),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Problem Solving",
                                  style: GoogleFonts.encodeSansExpanded(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w600,
                                    color: const Color.fromRGBO(0, 0, 0, 1),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Text(
                                  "Blockchain Technology",
                                  style: GoogleFonts.encodeSansExpanded(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400,
                                    color: const Color.fromRGBO(0, 0, 0, 1),
                                  ),
                                ),
                                const SizedBox(
                                  width: 130,
                                ),
                                const Icon(
                                  Icons.watch_later_outlined,
                                  size: 10,
                                ),
                                Text(
                                  "09/10/2023",
                                  style: GoogleFonts.encodeSansExpanded(
                                    fontSize: 8,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const Icon(
                                Icons.attachment,
                              ),
                              Text(
                                "Attach File",
                                style: GoogleFonts.encodeSansExpanded(
                                  fontSize: 8,
                                ),
                              ),
                              const SizedBox(
                                height: 35,
                              ),
                            ],
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 50,
                              width: 200,
                              alignment: Alignment.bottomCenter,
                              decoration: BoxDecoration(
                                color: const Color.fromRGBO(121, 224, 238, 1),
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                  width: 1,
                                  color: const Color.fromRGBO(121, 224, 238, 1),
                                ),
                              ),
                              child: SizedBox(
                                height: double.infinity,
                                width: double.infinity,
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: "Write Something",
                                    hintStyle: GoogleFonts.encodeSansExpanded(
                                      fontSize: 10,
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(width: 0),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(width: 0),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                const SizedBox(
                                  width: 25,
                                ),
                                GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                    alignment: Alignment.center,
                                    height: 20,
                                    width: 50,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: const Color.fromRGBO(
                                          255, 255, 255, 1),
                                    ),
                                    child: Text(
                                      "Submit",
                                      style: GoogleFonts.encodeSansExpanded(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w600,
                                        color: const Color.fromRGBO(0, 0, 0, 1),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 35,
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 5,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              if (done == true) {
                                done = false;
                              } else {
                                done = true;
                              }
                            });
                          },
                          child: Container(
                            height: 12.5,
                            width: 12.4,
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 1,
                                color: const Color.fromRGBO(121, 224, 238, 1),
                              ),
                            ),
                            child: Center(
                              child: myIcon(),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Mark as Done",
                          style: GoogleFonts.encodeSansExpanded(
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            color: const Color.fromRGBO(0, 0, 0, 1),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            children: [
              const SizedBox(
                width: 30,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Remarks",
                    style: GoogleFonts.encodeSansExpanded(
                      fontSize: 10,
                      fontWeight: FontWeight.w600,
                      color: const Color.fromRGBO(0, 0, 0, 1),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Submitted Date",
                            style: GoogleFonts.encodeSansExpanded(
                              fontSize: 10,
                              fontWeight: FontWeight.w600,
                              color: const Color.fromRGBO(0, 0, 0, 1),
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                            "Verified by",
                            style: GoogleFonts.encodeSansExpanded(
                              fontSize: 10,
                              fontWeight: FontWeight.w600,
                              color: const Color.fromRGBO(0, 0, 0, 1),
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                            "Marks",
                            style: GoogleFonts.encodeSansExpanded(
                              fontSize: 10,
                              fontWeight: FontWeight.w600,
                              color: const Color.fromRGBO(0, 0, 0, 1),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "15/09/2023",
                            style: GoogleFonts.encodeSansExpanded(
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              color: const Color.fromRGBO(0, 0, 0, 1),
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                            "ABCDEFG",
                            style: GoogleFonts.encodeSansExpanded(
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              color: const Color.fromRGBO(0, 0, 0, 1),
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                            "10 / 10",
                            style: GoogleFonts.encodeSansExpanded(
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              color: const Color.fromRGBO(0, 0, 0, 1),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
