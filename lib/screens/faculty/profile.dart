import 'package:flutter/material.dart';
import 'package:login/colors.dart';

class facultyProfile extends StatefulWidget {
  const facultyProfile({
    Key? key,
  }) : super(key: key);

  @override
  State<facultyProfile> createState() => _facultyProfileState();
}

class _facultyProfileState extends State<facultyProfile> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundColor: primaryColor,
                radius: 35,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
