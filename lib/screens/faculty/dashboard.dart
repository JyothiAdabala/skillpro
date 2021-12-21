import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login/styling.dart';
import 'package:login/screens/login_controller.dart';

class facultyDashBoard extends StatefulWidget {
  facultyDashBoard({
    Key? key,
  }) : super(key: key);

  @override
  State<facultyDashBoard> createState() => _facultyDashBoardState();
}

class _facultyDashBoardState extends State<facultyDashBoard> {
  final controller = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
  double height = MediaQuery.of(context).size.height;
  double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          // This is for the user details
          // 1.Profile Picture from gamil
          // 2.Name of the user
          // 3.Email of the user
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Column(
              children: [
                Row(
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: CircleAvatar(
                            backgroundImage: Image.network(
                                    controller.googleAccount.value?.photoUrl ?? '')
                                .image,
                            radius: 30,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Name: ${controller.googleAccount.value?.displayName ?? ''}',
                              style: GoogleFonts.poppins(),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'Email: ${controller.googleAccount.value?.email ?? ''}',
                                  textAlign: TextAlign.justify,
                                  style: GoogleFonts.poppins(),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'Speciality: Surgeon',
                                  textAlign: TextAlign.start,
                                  style: GoogleFonts.poppins(),
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
          ),
          //To create line between user details and competencies
          Divider(
            height: 20.00,
            thickness: 2.00,
            color: Colors.black,
          ),

          //Competency Details
          Expanded(
              child: ListView(
            padding: EdgeInsets.all(5),
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Container(
                  color: secondaryColor,
                  child: ExpansionTile(   
                    title: Text('Name of the Competency',style: GoogleFonts.poppins(color: Colors.white)),
                    leading: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Text('C'),
                    ),
                    children: <Widget>[
                      Container(
                        color: Colors.white,
                        child: Table(
                          border: TableBorder.all(color: Colors.black),
                          children: <TableRow>[
                            TableRow(children: <Widget>[
                              TableCell(child: Text('S.NO')),
                              TableCell(child: Text('Reg.No')),
                              TableCell(child: Text('Name')),
                              TableCell(child: Text('Self%')),
                              TableCell(child: Text('Faculty%')),
                            ]),
                            TableRow(children: <Widget>[
                              TableCell(child: Text('1')),
                              TableCell(child: Text('18pa1a0531')),
                              TableCell(child: Text('Cheruku Vamsi')),
                              TableCell(child: Text('80%')),
                              TableCell(child: Text('72%')),
                            ]),
                            TableRow(children: <Widget>[
                              TableCell(child: Text('2')),
                              TableCell(child: Text('18pa1a0501')),
                              TableCell(child: Text('Adabala Jyothi')),
                              TableCell(child: Text('80%')),
                              TableCell(child: Text('72%')),
                            ]),
                            TableRow(children: <Widget>[
                              TableCell(child: Text('3')),
                              TableCell(child: Text('18pa1a0561')),
                              TableCell(
                                  child: Text('Javvadi Venkata Vamsi Krishna')),
                              TableCell(child: Text('80%')),
                              TableCell(child: Text('72%')),
                            ]),
                          ],
                        ),
                      ),
                    ],
                    iconColor: Colors.white,
                    collapsedIconColor: Colors.white,
                  ),
                ),
              ),
            ],
          )),
        ],
      ),
    );
  }
}
