import 'dart:async';

import 'package:flutter/material.dart';
// import 'package:fire/utils/flutkart.dart';
import 'package:fire/utils/my_navigator.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () => MyNavigator.goToIntro(context));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: new Color(0xFFBD202C),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          // const SizeBox(height:32),
          Image.asset('assets/images/Fireready.png'),
          Container(
            margin: EdgeInsets.symmetric(vertical: 20),
            width: 200,
            height: 2.0,
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              child: LinearProgressIndicator(
                // value: 0.7,
                valueColor:
                    new AlwaysStoppedAnimation<Color>(Color(0xFFBD202C)),
                backgroundColor: Color(0xffD6D6D6),
              ),
            ),
          )
          // SizedBox(
          //     height: 2.0,
          //     width: 200.0,
          //     child: LinearProgressIndicator(
          //       valueColor: AlwaysStoppedAnimation(Color(0xFFBD202C)),
          //     ))
        ],
      ),
    );
  }
}
