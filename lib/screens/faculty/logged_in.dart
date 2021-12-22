// This file will run after the successful login of the faculty
// It contains three main widgets, they are 1.Profile 2. Dashboard 3.To-Do

import 'package:flutter/material.dart';
import 'package:login/styling.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login/screens/login/login_controller.dart';
import 'package:get/get.dart';
import 'dashboard/dashboard.dart';
import 'profile/profile.dart';
import 'todo/to_do.dart';

class FacultyLoggedIn extends StatefulWidget {
  // final Future<String> role;
  // const facultyLoggedIn(this.role);
  const FacultyLoggedIn({Key? key}) : super(key: key);

  @override
  _FacultyLoggedInState createState() => _FacultyLoggedInState();
}

class _FacultyLoggedInState extends State<FacultyLoggedIn> {
  int currentIndex = 1;
  final tabs = [
    FacultyProfile(),
    FacultyDashBoard(),
    FacultyToDo(),
  ];
  @override
  final controller = Get.put(LoginController());
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: Text(
          "SKILLPRO",
          style: GoogleFonts.baloo(
            letterSpacing: 5,
            fontSize: 30,
          ),
        ),
        centerTitle: true,
        actions: <Widget>[
          new IconButton(
              onPressed: () {
                controller.logout();
              },
              icon: Icon(Icons.logout)),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        currentIndex: currentIndex,
        onTap: (index) => setState(() {
          currentIndex = index;
        }),
        type: BottomNavigationBarType.shifting,
        unselectedItemColor: Colors.blueGrey,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.person_rounded),
            label: 'Profile',
            backgroundColor: primaryColor,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard_rounded),
            label: 'Dashboard',
            backgroundColor: primaryColor,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.pending_actions_rounded),
            label: 'To do',
            backgroundColor: primaryColor,
          ),
        ],
      ),
      body: tabs[currentIndex],
    );
  }
}
