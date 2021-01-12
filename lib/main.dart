import 'package:flutter/material.dart';
import 'sign_in.dart';
import 'sign_up.dart';
import 'Home.dart';
import 'Launching.dart';
import 'package:get/get.dart';

void main() {
  runApp(GetMaterialApp(
      initialRoute: '/launching',
      routes: {

        '/launching' : (context) => LaunchingScreen(),
        '/login': (context) => LoginScreen(),
        '/signup': (context) => SignUpScreen(),
        '/home': (context) => Home(),

      }
      ));
}







