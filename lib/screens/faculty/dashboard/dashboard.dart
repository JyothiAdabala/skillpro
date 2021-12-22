import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login/styling.dart';
import 'package:login/screens/login/login_controller.dart';
import 'get_details.dart';
class FacultyDashBoard extends StatefulWidget {
  FacultyDashBoard({Key? key,}) : super(key: key);

  @override
  State<FacultyDashBoard> createState() => _FacultyDashBoardState();
}

class _FacultyDashBoardState extends State<FacultyDashBoard> {
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
          GetFacultyDetails(controller: controller),
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
                    collapsedBackgroundColor: secondaryColor, 
                    title: Text('Competency 1',style: GoogleFonts.poppins(color: Colors.white)),
                    leading: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Text('C1',style: GoogleFonts.baloo(),)
                    ),
                    children: <Widget>[
                      Container(
                        color: Colors.white,
                        child: Table(
                          defaultColumnWidth: IntrinsicColumnWidth(),
                          //defaultColumnWidth: FlexColumnWidth(width/5),
                          border: TableBorder.all(color: Colors.black),
                          children: <TableRow>[
                            TableRow(children: <Widget>[
                              TableCell(child: Text('S.No',style: GoogleFonts.poppins(fontWeight: FontWeight.bold),)),
                              TableCell(child: Text('Reg.No',style: GoogleFonts.poppins(fontWeight: FontWeight.bold),)),
                              TableCell(child: Text('Name',style: GoogleFonts.poppins(fontWeight: FontWeight.bold),)),
                              TableCell(child: Text('Self%',style: GoogleFonts.poppins(fontWeight: FontWeight.bold),)),
                              TableCell(child: Text('Faculty%',style: GoogleFonts.poppins(fontWeight: FontWeight.bold),)),
                        
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
              SizedBox(height: 10,),
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Container(
                  color: secondaryColor,
                  child: ExpansionTile(  
                    collapsedBackgroundColor: secondaryColor, 
                    title: Text('Competency 2',style: GoogleFonts.poppins(color: Colors.white)),
                    leading: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Text('C2',style: GoogleFonts.baloo(),)
                    ),
                    children: <Widget>[
                      Container(
                        color: Colors.white,
                        child: Table(
                          defaultColumnWidth: IntrinsicColumnWidth(),
                          //defaultColumnWidth: FlexColumnWidth(width/5),
                          border: TableBorder.all(color: Colors.black),
                          children: <TableRow>[
                            TableRow(children: <Widget>[
                              TableCell(child: Text('S.No',style: GoogleFonts.poppins(fontWeight: FontWeight.bold),)),
                              TableCell(child: Text('Reg.No',style: GoogleFonts.poppins(fontWeight: FontWeight.bold),)),
                              TableCell(child: Text('Name',style: GoogleFonts.poppins(fontWeight: FontWeight.bold),)),
                              TableCell(child: Text('Self%',style: GoogleFonts.poppins(fontWeight: FontWeight.bold),)),
                              TableCell(child: Text('Faculty%',style: GoogleFonts.poppins(fontWeight: FontWeight.bold),)),
                        
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

