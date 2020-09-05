// import 'package:awsomeapp/Pages/HomePage.dart';
import 'package:awsomeapp/Pages/HomePage.dart';
import 'package:awsomeapp/Pages/LoginPage.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/cupertino.dart';

void main() {
  runApp(MaterialApp(
    title: "Awesome App",
    home: LoginPage(),
    theme: ThemeData(
      primarySwatch: Colors.purple,
    ),
    routes: {
      "/Login":(context) => LoginPage(),
      "/home":(context) => HomePage()
    },
  ));
}
