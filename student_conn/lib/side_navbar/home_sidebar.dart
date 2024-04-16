import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:student_conn/idcard/idcard.dart';
import 'package:student_conn/profilePage.dart';

class SideBarClass extends StatefulWidget {
  const SideBarClass({super.key});

  @override
  State createState() => _SideBarClassState();
}

class _SideBarClassState extends State {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      children: [
        UserAccountsDrawerHeader(
          onDetailsPressed: () {
            setState(() {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const ProfileInfo()));
            });
          },
          accountName: const Text("Rohan"),
          accountEmail: const Text("rohanpolekar@gmail.com"),
          currentAccountPicture: CircleAvatar(
            child: ClipOval(
              child: Image.asset("assets/images/log2.png"),
            ),
          ),
          decoration: const BoxDecoration(
              color: Colors.deepPurpleAccent,
              image: DecorationImage(
                  image: AssetImage("assets/images/sidebg2.jpeg"),
                  fit: BoxFit.cover)),
        ),
        const SizedBox(
          height: 20,
        ),
        ListTile(
          tileColor: const Color.fromARGB(255, 213, 212, 214),
          leading: const Icon(Icons.build),
          title: const Text("Tools"),
          onTap: () {
            setState(() {});
          },
        ),
        // GridView.count(
        //   crossAxisCount: 2,
        //   children: [
        //     Container(
        //       height: 50,
        //       width: 50,
        //       color: Colors.amber,
        //     ),
        //   ],
        // ),
        const SizedBox(
          height: 20,
        ),
        const ListTile(
          tileColor: Color.fromARGB(255, 213, 212, 214),
          leading: Icon(Icons.book),
          title: Text("Library Card"),
        ),
        const SizedBox(
          height: 20,
        ),
        ListTile(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const IdCard()));
          },
          tileColor: Color.fromARGB(255, 213, 212, 214),
          leading: Icon(Icons.perm_identity),
          title: Text("Identity Card"),
        ),
        // SizedBox(
        //   height: 20,
        // ),
        // ListTile(
        //   tileColor: Color.fromARGB(255, 213, 212, 214),
        //   leading: Icon(Icons.star),
        //   title: Text("Admissions"),
        // ),
        const SizedBox(
          height: 20,
        ),
        const ListTile(
          tileColor: Color.fromARGB(255, 213, 212, 214),
          leading: Icon(Icons.question_mark),
          title: Text("About"),
        ),
        const SizedBox(
          height: 20,
        ),
        const ListTile(
          tileColor: Color.fromARGB(255, 213, 212, 214),
          leading: Icon(Icons.settings),
          title: Text("Setting"),
        ),
        const SizedBox(
          height: 20,
        ),
        const ListTile(
          tileColor: Color.fromARGB(255, 213, 212, 214),
          leading: Icon(Icons.logout),
          title: Text("Sign Out"),
        ),
      ],
    );
  }
}
