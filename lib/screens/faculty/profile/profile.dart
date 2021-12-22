import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'edit.dart';
import 'package:login/styling.dart';


class FacultyProfile extends StatefulWidget {
  static const routeName = "/profile";

  @override
  _FacultyProfileState createState() => _FacultyProfileState();
}

class _FacultyProfileState extends State<FacultyProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _getHeader(),
            SizedBox(
              height: 5,
            ),
            _profileName("Jyothi Adabala"),
            Divider(
              height: 10,
            ),
            _heading("Personal Details"),
            SizedBox(
              height: 6,
            ),
            _detailsCard(),
            SizedBox(
              height: 10,
            ),
            _heading("Settings"),
            SizedBox(
              height: 6,
            ),
            _settingsCard(),
          ],
        ),
      ),
    );
  }

  Widget _getHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 5, 10 ,0),
                    child: CircleAvatar(
                      child: Text('Profile'),
                      radius: 45,
                    ),
                  ),
        ),
      ],
    );
  }

  Widget _profileName(String name) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.80, //80% of width,
      child: Center(
        child: Text(name, style: GoogleFonts.baloo(fontSize: 24)),
      ),
    );
  }

  Widget _heading(String heading) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.80, //80% of width,
      child: Text(
        heading,
        style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _detailsCard() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 4,
        child: Column(
          children: [
            ListTile(
              leading: Icon(Icons.email),
              title: Text("jyothi@gmail.com",style: poppins),
            ),
            Divider(
              height: 0.6,
              color: Colors.black87,
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text("1234567890",style: poppins),
            ),
            Divider(
              height: 0.6,
              color: Colors.black87,
            ),
            ListTile(
              leading: Icon(Icons.badge_rounded),
              title: Text("2018-2022",style: poppins),
            ),
            Divider(
              height: 0.6,
              color: Colors.black87,
            ),
          ],
        ),
      ),
    );
  }

  Widget _settingsCard() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 4,
        child: Column(
          children: [
            ListTile(
              leading: Icon(Icons.border_color_rounded),
              title: Text('Edit',style: poppins),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Edit()));
              },
              
            ),
            Divider(
              height: 0.6,
              color: Colors.black87,
            ),
            ListTile(
              leading: Icon(Icons.dashboard_customize),
              title: Text("About",style: poppins),
            ),
            Divider(
              height: 0.6,
              color: Colors.black87,
            ),
          ],
        ),
      ),
    );
  }
}
