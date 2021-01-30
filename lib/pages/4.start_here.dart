// import 'package:fire/carousel_controller.dart';
import 'package:fire/carousel_options.dart';
// import 'package:awesome_package/awesome_package.dart';
// import 'package:google_fonts/google_fonts.dart';

import 'package:fire/carousel_slider.dart';
import 'package:fire/pages/5.session_screen.dart';
import 'package:flutter/material.dart';
// import 'package:fire/pages/5.session_screen.dart';
// import 'package:fire/pages/3.home_screen.dart';

class StartHere extends StatefulWidget {
  final List values;
  StartHere({Key key, @required this.values}) : super(key: key);
  // StartHere(this.valuesController);/

  @override
  State<StatefulWidget> createState() {
    return _StartHereState(values);
  }
}

class _StartHereState extends State<StartHere> {
  List values;
  _StartHereState(this.values);

  // String valuesController;
  // StartHereState(this.valuesController);
  final List<String> images = [
    'https://images.unsplash.com/photo-1586882829491-b81178aa622e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2850&q=80',
    'https://images.unsplash.com/photo-1586871608370-4adee64d1794?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2862&q=80',
    'https://images.unsplash.com/photo-1586901533048-0e856dff2c0d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80',
    'https://images.unsplash.com/photo-1586902279476-3244d8d18285?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2850&q=80',
    'https://images.unsplash.com/photo-1586943101559-4cdcf86a6f87?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1556&q=80',
    'https://images.unsplash.com/photo-1586951144438-26d4e072b891?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80',
    'https://images.unsplash.com/photo-1586953983027-d7508a64f4bb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80',
  ];

  // class _StartHereState extends State<StartHere> {
  @override
  Widget build(BuildContext context) {
    // List values;
    // StartHere({this.values});
// StartHere(this.valuesController);//add also..example this.abc,this...

    return Scaffold(
      // drawer: Drawer(
      //   child: ListView(
      //     padding: EdgeInsets.zero,
      //     children: <Widget>[
      //       FloatingActionButton.extended(
      //           label: Text("hi"),
      //           // icon: Icon(Iendcons.thumb_up),
      //           backgroundColor: Colors.white,
      //           onPressed: () {
      //             Navigator.pushvaluesd(context, "/AdminLogin");
      //           }),
      //       ListTile(
      //         leading: Icon(Icons.account_circle),
      //         title: Text('Profile'),
      //         // onTap: () => Navigator.pushvaluesd(context, "/AdminLogin"),
      //       ),
      //       ListTile(
      //         leading: Icon(Icons.settings),
      //         title: Text('Settings'),
      //         onTap: () {
      //           Navigator.pop(context);
      //         },
      //       ),
      //     ],
      //   ),
      // ),
      // backgroundColor: new Color(0xFFFFFFFF),

//       appBar: new AppBar(
// actions: <Widget>[
//         // IconButton(icon: Icon(Icons.shopping_cart), onPressed: () {}),
//         IconButton(icon: Icon(Icons.person), onPressed: () {}),
//       ],
//         title: new Text("Linear Percent Indicators"),
//       ),
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
                padding: EdgeInsets.only(
                    left: 20.0, top: 70.0, right: 20.0, bottom: 20.0),
                child: CarouselSlider.builder(
                  itemCount: images.length,
                  options: CarouselOptions(
                    autoPlay: true,
                    aspectRatio: 2.0,
                    enlargeCenterPage: true,
                  ),
                  itemBuilder: (context, index) {
                    return Container(
                      child: Center(
                          child: Image.network(images[index],
                              fit: BoxFit.cover, height: 1000, width: 1000)),
                    );
                  },
                )),
            RichText(
              text: TextSpan(
                // style: TextStyle(
                //     color: Colors.black.withOpacity(0.6),
                //     fontWeight: FontWeight.bold),
                // text: 'Flutter Tutorial ',
                // style: DefaultTextStyleI.of(context).style,
                children: <TextSpan>[
                  TextSpan(
                      text: 'BE RELAXED \n& COMFORTABLE ',
                      style: TextStyle(
                        fontSize: 25,

                        color: Colors.black,
                        fontFamily: 'Raleway',
                        package: 'awesome_package',

                        // fontStyle: FontStyle.italic,

                        // fontStyle:FontStyle,regular,
                        fontWeight: FontWeight.bold,
                      )),
                  TextSpan(
                      style: TextStyle(
                          fontSize: 20,
                          fontStyle: FontStyle.italic,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                      text: ' \nwith fire ready 24/7 '),
                  TextSpan(
                      style: TextStyle(
                          fontSize: 15,
                          // fontStyle: FontStyle.italic,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                      text: ' \naffordable'),
                  TextSpan(
                      style: TextStyle(
                          fontSize: 15,
                          // fontStyle: FontStyle.italic,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                      text: '\nSeafty '),
                  TextSpan(
                      style: TextStyle(
                          fontSize: 15,
                          // fontStyle: FontStyle.italic,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                      text: '\nEASY Installation ')
                ],
              ),
            ),
            Column(
              // crossAxisAlignment: CrossAxisAlignment.center,
              // // mainAxisSize: MainAxisSize.max,
              // mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(
                      left: 20.0, top: 40.0, right: 20.0, bottom: 0.0),
                ),
                Image.asset(
                  'assets/images/app arrow.png',
                  height: 150,
                  width: 150,
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: 20.0, top: 20.0, right: 20.0, bottom: 1.0),
              // child: Card(

              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,

                // mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  RaisedButton(
                    color: Colors.green,
                    textColor: Colors.white,
                    splashColor: Colors.red[200],
                    onPressed: () {
                      // print(this.valuesController);
                      print(values[2]);
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) =>
                              SessionScreen(values1: values)));
                    },
                    child: new Text("START HERE"),
                  ),
                ],
              ),
              // ),
            ),
          ],
        ),
      ),
    );
  }
}
