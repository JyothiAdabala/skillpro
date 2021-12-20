import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class facultyToDo extends StatefulWidget {
  const facultyToDo({
    Key? key,
  }) : super(key: key);

  @override
  State<facultyToDo> createState() => _facultyToDoState();
}

class _facultyToDoState extends State<facultyToDo> {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('to-do'),);
  }
}