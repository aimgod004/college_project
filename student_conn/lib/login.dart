import 'package:flutter/material.dart';
import 'package:student_conn/homePage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool hidepassword = true;

  //Global Keys
  // GlobalKey<FormFieldState> usernameKey = GlobalKey<FormFieldState>();
  // GlobalKey<FormFieldState> passwordKey = GlobalKey<FormFieldState>();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  List<Map<String, String>> loginData = [
    // {"username": "siddharth", "password": "Sid7972"},
    // {"username": "rohan", "password": "Rohan04"},
    {"username": "abc", "password": "123"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue[500],
          title: const Text(
            "Login Page",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: _formKey,
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage("assets/images/login_pic.jpg"),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    //key: usernameKey,
                    controller: _usernameController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                      labelText: "username",
                      hintText: "Enter Username",
                      prefixIcon: Icon(Icons.person),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(color: Colors.blue, width: 2),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        borderSide: BorderSide(color: Colors.blue, width: 2),
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "enter username";
                      } else {
                        return null;
                      }
                    },
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    //key: passwordKey,
                    keyboardType: TextInputType.visiblePassword,
                    controller: _passwordController,
                    obscureText: hidepassword,
                    obscuringCharacter: "*",
                    decoration: InputDecoration(
                      labelText: "password",
                      hintText: "Enter Password",
                      prefixIcon: const Icon(Icons.lock),
                      suffixIcon: IconButton(
                        onPressed: () {
                          hidepassword = !hidepassword;
                          setState(() {});
                        },
                        icon: Icon(Icons.remove_red_eye,
                            color: hidepassword ? null : Colors.blue[500]),
                      ),
                      enabledBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(color: Colors.blue, width: 2),
                      ),
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        borderSide: BorderSide(color: Colors.blue, width: 2),
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "enter password";
                      } else {
                        return null;
                      }
                    },
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  ElevatedButton(
                      style: const ButtonStyle(
                          fixedSize: MaterialStatePropertyAll(Size(200, 60)),
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.blue)),
                      onPressed: () {
                        _formKey.currentState!.validate();

                        if (loginData[0]["username"] ==
                                _usernameController.text &&
                            loginData[0]["password"] ==
                                _passwordController.text) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text("Login Successful"),
                            ),
                          );
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const HomePage(),
                              ));
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text("Invalid Username & password"),
                            ),
                          );
                        }
                      },
                      child: const Text(
                        "Login",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 30),
                      ))
                ],
              ),
            ),
          ),
        ));
  }
}
