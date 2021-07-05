import 'package:flutter/material.dart';
import 'package:waseet/view_model/view/e_commers/home_screen.dart';
import 'package:waseet/view_model/view/e_commers/result_screen.dart';
import 'package:waseet/view_model/view/view_auth/Forgot%20your%20password_screen.dart';
import 'package:waseet/view_model/view/view_auth/PersonalData_Screen.dart';
import 'package:waseet/view_model/view/view_auth/login_screen.dart';
import 'package:waseet/view_model/view/view_auth/personal_screen.dart';
import 'package:waseet/view_model/view/view_auth/signup_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(body: HomeScreen()),
      routes: {
        'Login': (context) {
          return LoginScreen();
        },
        'SignUp': (context) {
          return SignUpnScreen();
        },
        'Forgot': (context) {
          return ForgotScreen();
        },
        'PersonData': (context) {
          return PersonDataScreen();
        },
        'Person': (context) {
          return PersonScreen();
        },
        'Home': (context) {
          return HomeScreen();
        },
        'Result': (context) {
          return ResultScreen();
        }
      },
    );
  }
}
