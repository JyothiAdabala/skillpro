import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'screens/login/login.dart';

void main() async {
  //Initialize the firebase before running the application.
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  
  runApp(MaterialApp(
    home: LoginWidget(),
  ));
}
