import 'package:flutter/material.dart';

// import 'package:fire/pages/3.home_screen.dart';
// Adapted from Tensor Programming's multi-page app tutorial:
// https://github.com/tensor-programming/dart_flutter_multi_page_app.
class IntroScreen extends StatelessWidget {
  // const IntroScreen({Key key}) : super(key: key);

  // Route name is useful for navigating between routes.
  // static const kRouteName = '/IntroScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: new Color(0xFFBD202C),

        // appBar: AppBar(
        //     // debugShowCheckedModeBanner: false,
        //     // title: const Text('Page 1'),
        //     ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/images/Fireready.png'),
            SizedBox(height: 20),
            FloatingActionButton.extended(
                label: Text('LOGIN'),
                // icon: Icon(Iendcons.thumb_up),
                backgroundColor: Colors.white,
                onPressed: () {
                  Navigator.pushNamed(context, "/home");
                }),
          ],
        ));
  }
}
