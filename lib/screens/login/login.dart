import 'package:flutter/material.dart';
import 'login_controller.dart';
import 'package:get/get.dart';
import '../build_login.dart';
import '../faculty/logged_in.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

final controller = Get.put(LoginController());

class LoginWidget extends StatefulWidget {
  LoginWidget({Key? key}) : super(key: key);

  @override
  _LoginWidgetState createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  @override
  Widget build(BuildContext context) {
    // Write a condition to check whether the email is in our local DB or not
    // If yes, then return the user type Ex:Faculty, Student, admin
    // Based on the user type we should return the dashboard screen
    // Use API to know the user role.
    // Command to get the user Email id : String email = controller.googleAccount.value?.email ?? '';
    return Obx(() {
      //Future<String> role = getUserRole();
      if (controller.googleAccount.value == null) {
        return BuildLogin();
      } else {
        return FacultyLoggedIn();
      }
    });
  }

  // Future<String> getUserRole() async {
  //   String email = controller.googleAccount.value?.email ?? '';
  //   var url =
  //       Uri.parse('https://naapinaistam.herokuapp.com/login/email/${email}');
  //   var jsonResponse = await http.get(url).toString();
  //   final parsedResponse = jsonDecode(jsonResponse);
  //   //print(parsedResponse['role']);
  //   return parsedResponse['role'];
  // }
}
