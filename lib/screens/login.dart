import 'package:flutter/material.dart';
import 'login_controller.dart';
import 'package:get/get.dart';
import 'build_login.dart';
import 'faculty/logged_in.dart';

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
      if (controller.googleAccount.value == null) {
        return buildLogin();
      } else {
        return facultyLoggedIn();
      }
    });
  }
}
