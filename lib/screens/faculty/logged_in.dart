import 'package:flutter/material.dart';
import 'package:login/colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login/screens/login_controller.dart';
import 'package:get/get.dart';
import 'package:login/screens/faculty/dashboard.dart';
import 'package:login/screens/faculty/to_do.dart';
import 'package:login/screens/faculty/profile.dart';

class buildProfile extends StatefulWidget {
  const buildProfile({Key? key}) : super(key: key);

  @override
  _buildProfileState createState() => _buildProfileState();
}

class _buildProfileState extends State<buildProfile> {
  int currentIndex = 1;
  final tabs = [
    facultyProfile(),
    facultyDashBoard(),
    facultyToDo(),
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
