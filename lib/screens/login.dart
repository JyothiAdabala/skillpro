import 'package:flutter/material.dart';
import 'package:login/screens/login_controller.dart';
import 'package:get/get.dart';
import 'package:login/screens/build_login.dart';
import 'package:login/screens/faculty/logged_in.dart';

final controller = Get.put(LoginController());

class LoginWidget extends StatefulWidget {
  LoginWidget({Key? key}) : super(key: key);

  @override
  _LoginWidgetState createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      if (controller.googleAccount.value == null) {
        return buildLogin();
      } else {
        return buildProfile();
      }
    });
  }
}
