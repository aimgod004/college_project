import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class IdCard extends StatelessWidget {
  const IdCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Identity Card",
          style: GoogleFonts.jost(
              fontSize: 22, fontWeight: FontWeight.w700, color: Colors.black),
        ),
      ),
      body: Center(
        child: Padding(
          padding:
              const EdgeInsets.only(top: 50, bottom: 150, left: 25, right: 25),
          child: SingleChildScrollView(
            child: Container(
              color: Colors.black,
              child: Column(
                children: [
                  Container(
                    color: Colors.amber,
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Container(
                            height: 50,
                            width: 50,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image:
                                      AssetImage("assets/images/clgLogo.png"),
                                  fit: BoxFit.fill),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Expanded(
                            child: Text(
                          "TRINITY ACADEMY OF ENGINEERING PUNE.",
                          style: GoogleFonts.jost(
                              fontSize: 17,
                              fontWeight: FontWeight.w700,
                              color: Colors.white),
                        )),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Image.asset("assets/images/profile.png"),
                  Padding(
                    padding: EdgeInsets.only(top: 20, left: 50),
                    child: Container(
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Name:",
                            style: GoogleFonts.jost(
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                                color: Colors.white),
                          ),
                          Text(
                            "Rohan Sanjay Polekar",
                            style: GoogleFonts.jost(
                                fontSize: 17,
                                fontWeight: FontWeight.w700,
                                color: Colors.white),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Student ID:",
                            style: GoogleFonts.jost(
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                                color: Colors.white),
                          ),
                          Text(
                            "20D10000000444",
                            style: GoogleFonts.jost(
                                fontSize: 17,
                                fontWeight: FontWeight.w700,
                                color: Colors.white),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "DOB:",
                            style: GoogleFonts.jost(
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                                color: Colors.white),
                          ),
                          Text(
                            "11-04-2002",
                            style: GoogleFonts.jost(
                                fontSize: 17,
                                fontWeight: FontWeight.w700,
                                color: Colors.white),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Course:",
                            style: GoogleFonts.jost(
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                                color: Colors.white),
                          ),
                          Text(
                            "Computer",
                            style: GoogleFonts.jost(
                                fontSize: 17,
                                fontWeight: FontWeight.w700,
                                color: Colors.white),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Contact No.:",
                            style: GoogleFonts.jost(
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                                color: Colors.white),
                          ),
                          Text(
                            "7030708806",
                            style: GoogleFonts.jost(
                                fontSize: 17,
                                fontWeight: FontWeight.w700,
                                color: Colors.white),
                          ),
                          SizedBox(
                            height: 130,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
