// import 'package:fire/pages/adl.dart';
// import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:fire/pages/1.splash_screen.dart';
import 'package:fire/pages/2.intro_screen.dart';
import 'package:fire/pages/3.home_screen.dart';
import 'package:fire/pages/4.start_here.dart';
import 'package:fire/pages/5.session_screen.dart';
import 'package:fire/pages/6.userprofile.dart';
import 'package:fire/pages/description.dart';
import 'package:fire/pages/vid1.dart';

import 'package:fire/pages/vid2.dart';
import 'package:fire/pages/vid3.dart';
import 'package:fire/pages/test.dart';

// import 'package:fire/pages/admin_login.dart';
// import 'package:fire/pages/adlg.dart';

var routes = <String, WidgetBuilder>{
  // '/': (context) => IntroScreen(),
  "/home": (BuildContext context) => HomeScreen(),
  "/intro": (BuildContext context) => IntroScreen(),
  "/start": (BuildContext context) => StartHere(),
  "/session": (BuildContext context) => SessionScreen(),
  "/description": (BuildContext context) => Description(),
  "/vid1": (BuildContext context) => Vid1(),
  "/vid2": (BuildContext context) => Vid2(),
  "/vid3": (BuildContext context) => Vid3(),
  '/test': (context) => Test(),

  "/userprofile": (BuildContext context) => UserProfile(),
  // "/adminlogin": (BuildContext context) => AdminLogin(),
  // "/adlg": (BuildContext context) => Adlg(),
};

void main() => runApp(new MaterialApp(
    theme:
        ThemeData(primaryColor: Colors.red, accentColor: Colors.yellowAccent),
    debugShowCheckedModeBanner: false,
    home: SplashScreen(),
    routes: routes));
