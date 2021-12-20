import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
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
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              CircleAvatar(
                backgroundImage: Image.network(
                        controller.googleAccount.value?.photoUrl ?? '')
                    .image,
                    radius: 30,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                child: Column(
                  children: <Widget>[
                    Text(
                        'Name: ${controller.googleAccount.value?.displayName ?? ''}'),
                    Text(
                        'Email: ${controller.googleAccount.value?.email ?? ''}')
                  ],
                ),
              ),
            ],
          ),
        ),
        Divider(
          height: 10,
          color: Colors.black,
          thickness: 2,
        ),
      ],
    );
  }
}