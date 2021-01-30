import 'package:flutter/material.dart';

class MyNavigator {
  // static void goTo(BuildContext context) {
  //   Navigator.pushNamed(context, "/");
  // }

  static void goToHome(BuildContext context) {
    Navigator.pushNamed(context, "/home");
  }

  static void goToIntro(BuildContext context) {
    Navigator.pushNamed(context, "/intro");
  }

  static void goToStartHere(BuildContext context) {
    Navigator.pushNamed(context, "/start");
  }

  static void goToSession(BuildContext context) {
    Navigator.pushNamed(context, "/session");
  }

  static void goToVid1(BuildContext context) {
    Navigator.pushNamed(context, "/vid1");
  }

  static void goToVid2(BuildContext context) {
    Navigator.pushNamed(context, "/intro2");
  }

  static void goToVid3(BuildContext context) {
    Navigator.pushNamed(context, "/vid3");
  }

  static void goToDescription(BuildContext context) {
    Navigator.pushNamed(context, "/description");
  }

  static void goToUserProfile(BuildContext context) {
    Navigator.pushNamed(context, "/userprofile");
  }

  static void goToAdminLogin(BuildContext context) {
    Navigator.pushNamed(context, "/adminlogin");
  }

  static void goToText(BuildContext context) {
    Navigator.pushNamed(context, "/test");
  }
  // static void goToAdlg(BuildContext context) {
  //   Navigator.pushNamed(context, "/Adlg");
  // }
}
