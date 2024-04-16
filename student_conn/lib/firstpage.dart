import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:student_conn/login.dart';
import 'package:student_conn/signup.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => FirstPageState();
}

class FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.bottomCenter,
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              "Welcome to  Student Connect",
              style: GoogleFonts.encodeSansExpanded(
                fontSize: 20.41,
                fontWeight: FontWeight.w700,
                color: const Color.fromRGBO(22, 22, 151, 1),
              ),
            ),
            Text(
              "LET ACCESS ALL WORK FROM HERE",
              style: GoogleFonts.encodeSansExpanded(
                fontSize: 10,
                fontWeight: FontWeight.w500,
                color: const Color.fromRGBO(0, 0, 0, 1),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginPage(),
                    ));
                // MaterialPageRoute(
                //   builder: (context) => const HomePage2(),
                // ));
              },
              child: Container(
                height: 37.5,
                width: 112.5,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(255, 255, 255, 1),
                  border: Border.all(
                    color: const Color.fromRGBO(22, 22, 151, 1),
                    width: 0.75,
                  ),
                  borderRadius: BorderRadius.circular(75),
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.25),
                      blurRadius: 3,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Text(
                  "Login",
                  style: GoogleFonts.encodeSansExpanded(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: const Color.fromRGBO(22, 22, 151, 1),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SignupPage(),
                    ));
              },
              child: Container(
                height: 37.5,
                width: 112.5,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(255, 255, 255, 1),
                  border: Border.all(
                    color: const Color.fromRGBO(22, 22, 151, 1),
                    width: 0.75,
                  ),
                  borderRadius: BorderRadius.circular(75),
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.25),
                      blurRadius: 3,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Text(
                  "Sign up",
                  style: GoogleFonts.encodeSansExpanded(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: const Color.fromRGBO(22, 22, 151, 1),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 370,
              width: 370,
              child: Image.asset(
                "assets/images/firstpage.png",
                fit: BoxFit.fill,
              ),
            )
          ],
        ),
      ),
    );
  }
}
