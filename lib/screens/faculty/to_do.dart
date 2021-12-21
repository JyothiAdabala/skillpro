import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login/styling.dart';

class facultyToDo extends StatefulWidget {
  const facultyToDo({Key? key}) : super(key: key);

  @override
  _facultyToDoState createState() => _facultyToDoState();
}

class _facultyToDoState extends State<facultyToDo> {
  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.all(8),
    child: DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(80),
          child: AppBar(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            elevation: 20,
            shadowColor: primaryColor,
            backgroundColor: secondaryColor,
            bottom: TabBar(
              indicatorColor: Colors.white,
              indicatorWeight: 5,
              onTap: (int){},
              tabs: [
                Tab(icon: Icon(Icons.auto_stories_rounded),text: 'References',),
                Tab(icon: Icon(Icons.group_rounded),text: '1-1 Mentoring',),
              ],
            ),
          ),
        ),
        body: TabBarView(
          children: [
            buildPage('References'),
            buildPage('1-1 Mentoring'),
          ],
        ),
      ),
    ),
  );

  Widget buildPage(String text) => Center(
    child: Text(
      text,
      style: GoogleFonts.poppins(fontSize: 20),
    ),
  );
}
