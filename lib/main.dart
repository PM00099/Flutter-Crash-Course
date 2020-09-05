// import 'package:awsomeapp/Pages/HomePage.dart';
import 'package:awsomeapp/Pages/HomePage.dart';
// import 'package:awsomeapp/Pages/HomePageWithFuture.dart';
import 'package:awsomeapp/Pages/HomePageWithStreamBuilder.dart';
import 'package:awsomeapp/Pages/LoginPage.dart';
import 'package:awsomeapp/utils/Constants.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
// import 'package:flutter/cupertino.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Constants.prefs = await SharedPreferences.getInstance();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Awesome App",
    home: Constants.prefs.getBool("LoggedIn") == true
        ? HomePageSB()
        : LoginPage(),
    theme: ThemeData(
      primarySwatch: Colors.purple,
    ),
    routes: {
      "/login": (context) => LoginPage(),
      "/home": (context) => HomePage()
    },
  ));
}
