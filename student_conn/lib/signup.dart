import 'package:flutter/material.dart';
import 'package:student_conn/login.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});
  @override
  State<SignupPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<SignupPage> {
  ///CONTROLLERS
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController repasswordcontroller = TextEditingController();

  /// KEYS
// GlobalKey<FormFieldState> userNameKey = GlobalKey<FormFieldState>();
// GlobalKey<FormFieldState> passwordKey = GlobalKey<FormFieldState>();

  //GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 200,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("welcome to student connect",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Color.fromRGBO(22, 22, 151, 1)))
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "let access all work from here",
                  style: TextStyle(fontSize: 8, fontWeight: FontWeight.w500),
                )
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 200,
                  height: 30,
                  child: TextFormField(
                    controller: nameController,
                    decoration: InputDecoration(
                      hintText: "full name",
                      hintStyle: const TextStyle(
                          fontSize: 10, fontWeight: FontWeight.w700),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please enter username";
                      } else {
                        return null;
                      }
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 30,
              width: 200,
              child: TextFormField(
                controller: emailController,
                decoration: InputDecoration(
                  hintText: "email address",
                  hintStyle: const TextStyle(
                      fontSize: 10, fontWeight: FontWeight.w700),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter email";
                  } else {
                    return null;
                  }
                },
                keyboardType: TextInputType.emailAddress,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 200,
              height: 30,
              child: TextFormField(
                controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "create password",
                  hintStyle: const TextStyle(
                      fontSize: 10, fontWeight: FontWeight.w700),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter password";
                  } else {
                    return null;
                  }
                },
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 200,
              height: 30,
              child: TextFormField(
                controller: repasswordcontroller,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "re enter password",
                  hintStyle: const TextStyle(
                      fontSize: 10, fontWeight: FontWeight.w700),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter password.";
                  } else if (value != repasswordcontroller.text) {
                    return "Password doesn't match.";
                  }
                  return null;
                },
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            ElevatedButton(
                onPressed: () {
                  //bool signup = _formKey.currentState!.validate();
                  bool signup = true;
                  if (signup) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text("Login Successful"),
                      ),
                    );
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginPage(),
                        ));
                  }
                  // else {
                  //   ScaffoldMessenger.of(context).showSnackBar(
                  //     const SnackBar(
                  //       content: Text("Login Failed"),
                  //     ),
                  //   );
                  // }
                },
                child: const Text(
                  "sign up",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                )),
            const SizedBox(
              height: 30,
            ),
            Image.asset(
              "assets/images/signuppage.png",
              height: 200,
              width: 200,
            ),
          ],
        ),
      ),
    );
  }
}
