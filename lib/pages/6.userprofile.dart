// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'dart:io';
// import 'package:image_picker/image_picker.dart';

// class UserProfile extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//         visualDensity: VisualDensity.adaptivePlatformDensity,
//       ),
//       home: UserProfile(),
//     );
//   }
// }

// class UserProfile extends StatefulWidget {
//   UserProfile({Key key}) : super(key: key);

//   @override
//   _UserProfileState createState() => _UserProfileState();
// }

// class _UserProfileState extends State<UserProfile> {
//   File _image;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: Column(
//         children: <Widget>[
//           // Positioned(
//           //     bottom: 10,
//           //     right: 10,
//           //     child: Container(
//           //       height: 40,
//           //       width: 40,
//           //       child: new IconButton(
//           //         icon: new Icon(Icons.add_a_photo),
//           //         onPressed: () => Navigator.pushNamed(context, "/description"),
//           //         // color: primaryColor,
//           //         // disabledColor: Colors.grey,
//           //       ),
//           //       decoration: BoxDecoration(
//           //           color: Colors.deepOrange,
//           //           borderRadius: BorderRadius.all(Radius.circular(20))),
//           //     )),
//           SizedBox(
//             height: 10,
//           ),
//           Center(
//             child: GestureDetector(
//               onTap: () {
//                 _showPicker(context);
//               },
//               child: CircleAvatar(
//                 radius: 80,
//                 // backgroundColor: Color(0xffFDCF09),
//                 child: _image != null
//                     ? ClipRRect(
//                         borderRadius: BorderRadius.circular(60),
//                         child: Image.file(
//                           _image,
//                           width: 149,

//                           // height: 100,
//                           fit: BoxFit.fill,
//                           // fit: BoxFit.fitHeight,
//                           // BoxFit.fitWidth,
//                         ),
//                       )
//                     : Positioned(
//                         width: 190.0,
//                         height: 190.0,
//                         child: Container(
//                           child: new IconButton(
//                             // width: 190.0,
//                             // height: 190.0,
//                             icon: new Icon(Icons.add_a_photo),
//                             onPressed: () =>
//                                 Navigator.pushNamed(context, "/description"),

//                             // color: primaryColor,
//                             // disabledColor: Colors.grey,
//                           ),
//                           // decoration: BoxDecoration(
//                           //   //     height: 40,
//                           //   // width: 40,
//                           //     color: Colors.deepOrange,

//                           //     borderRadius:
//                           //         BorderRadius.all(Radius.circular(20))),
//                         )),
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }

//   void _showPicker(context) {
//     showModalBottomSheet(
//         context: context,
//         builder: (BuildContext bc) {
//           return SafeArea(
//             child: Container(
//               child: new Wrap(
//                 children: <Widget>[
//                   new ListTile(
//                       leading: new Icon(Icons.photo_library),
//                       title: new Text('Photo Library'),
//                       onTap: () {
//                         _imgFromGallery();
//                         Navigator.of(context).pop();
//                       }),
//                   new ListTile(
//                     leading: new Icon(Icons.photo_camera),
//                     title: new Text('Camera'),
//                     onTap: () {
//                       _imgFromCamera();
//                       Navigator.of(context).pop();
//                     },
//                   ),
//                 ],
//               ),
//             ),
//           );
//         });
//   }

//   _imgFromCamera() async {
//     File image = await ImagePicker.pickImage(
//         source: ImageSource.camera, imageQuality: 50);

//     setState(() {
//       _image = image;
//     });
//   }

//   _imgFromGallery() async {
//     File image = await ImagePicker.pickImage(
//         source: ImageSource.gallery, imageQuality: 50);

//     setState(() {
//       _image = image;
//     });
//   }
// }

// // import 'package:flutter/cupertino.dart';
// // import 'package:flutter/material.dart';
// // import 'dart:io';
// // // void main() {
// // //   runApp(UserProfile());
// // // }

// // class UserProfile extends StatelessWidget {
// //   // This widget is the root of your application.
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       title: 'Flutter Demo',
// //       theme: ThemeData(
// //         primarySwatch: Colors.blue,
// //         visualDensity: VisualDensity.adaptivePlatformDensity,
// //       ),
// //       home: UserProfile(),
// //     );
// //   }
// // }

// // class UserProfile extends StatefulWidget {
// //   UserProfile({Key key}) : super(key: key);

// //   @override
// //   _UserProfileState createState() => _UserProfileState();
// //   File _image;
// // }

// // class _UserProfileState extends State<UserProfile> {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //         body:
// //             profileView() // This trailing comma makes auto-formatting nicer for build methods.
// //         );
// //   }

// //   Widget profileView() {
// //     return Column(
// //       children: <Widget>[
// //         Padding(
// //           padding: EdgeInsets.fromLTRB(30, 50, 30, 30),
// //           child: Row(
// //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //             children: <Widget>[
// //               Container(
// //                 height: 50,
// //                 width: 50,
// //                 // child: Icon(
// //                 //   Icons.arrow_back_ios,
// //                 //   size: 24,
// //                 //   color: Colors.black54,
// //                 // ),
// //                 // decoration: BoxDecoration(
// //                 //     border: Border.all(color: Colors.black54),
// //                 //     borderRadius: BorderRadius.all(Radius.circular(10))),
// //               ),
// //               Text(
// //                 'User name',
// //                 style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
// //               ),
// //               Container(height: 24, width: 24)
// //             ],
// //           ),
// //         ),
// //         Padding(
// //           padding: const EdgeInsets.fromLTRB(0, 0, 0, 50),
// //           child: Stack(
// //             children: <Widget>[
// //               CircleAvatar(
// //                 radius: 100,
// //                 child: ClipOval(
// //                   child: Image.asset(
// //                     'images/app arrow.png.jpg',
// //                     height: 100,
// //                     width: 100,
// //                     fit: BoxFit.cover,
// //                   ),
// //                 ),
// //               ),
// // Positioned(
// //     bottom: 10,
// //     right: 10,
// //     child: Container(
// //       height: 40,
// //       width: 40,
// //       child: new IconButton(
// //         icon: new Icon(Icons.add_a_photo),
// //         onPressed: () =>
// //             Navigator.pushNamed(context, "/description"),
// //         // color: primaryColor,
// //         // disabledColor: Colors.grey,
// //       ),
// //       decoration: BoxDecoration(
// //           color: Colors.deepOrange,
// //           borderRadius: BorderRadius.all(Radius.circular(20))),
// //     ))
// //             ],
// //           ),
// //         ),
// //         Expanded(
// //             child: Container(
// //           decoration: BoxDecoration(
// //               borderRadius: BorderRadius.only(
// //                   topLeft: Radius.circular(30), topRight: Radius.circular(30)),
// //               gradient: LinearGradient(
// //                   begin: Alignment.topRight,
// //                   end: Alignment.bottomLeft,
// //                   colors: [Colors.black54, Color.fromRGBO(0, 41, 102, 1)])),
// //           child: Column(
// //             children: <Widget>[
// //               Padding(
// //                 padding: const EdgeInsets.fromLTRB(20, 25, 20, 4),
// //                 child: Container(
// //                   height: 60,
// //                   child: Align(
// //                     alignment: Alignment.centerLeft,
// //                     child: Padding(
// //                       padding: const EdgeInsets.all(8.0),
// //                       child: Text(
// //                         'Name',
// //                         style: TextStyle(color: Colors.white70),
// //                       ),
// //                     ),
// //                   ),
// //                   decoration: BoxDecoration(
// //                       borderRadius: BorderRadius.all(Radius.circular(20)),
// //                       border: Border.all(width: 1.0, color: Colors.white70)),
// //                 ),
// //               ),
// //               Padding(
// //                 padding: const EdgeInsets.fromLTRB(20, 5, 20, 4),
// //                 child: Container(
// //                   height: 60,
// //                   child: Align(
// //                     alignment: Alignment.centerLeft,
// //                     child: Padding(
// //                       padding: const EdgeInsets.all(8.0),
// //                       child: Text(
// //                         'Email',
// //                         style: TextStyle(color: Colors.white70),
// //                       ),
// //                     ),
// //                   ),
// //                   decoration: BoxDecoration(
// //                       borderRadius: BorderRadius.all(Radius.circular(20)),
// //                       border: Border.all(width: 1.0, color: Colors.white70)),
// //                 ),
// //               ),
// //               Padding(
// //                 padding: const EdgeInsets.fromLTRB(20, 5, 20, 4),
// //                 child: Container(
// //                   height: 60,
// //                   child: Align(
// //                     alignment: Alignment.centerLeft,
// //                     child: Padding(
// //                       padding: const EdgeInsets.all(8.0),
// //                       child: Text(
// //                         'Type something about yourself',
// //                         style: TextStyle(color: Colors.white70),
// //                       ),
// //                     ),
// //                   ),
// //                   decoration: BoxDecoration(
// //                       borderRadius: BorderRadius.all(Radius.circular(20)),
// //                       border: Border.all(width: 1.0, color: Colors.white70)),
// //                 ),
// //               ),
// //               Padding(
// //                 padding: const EdgeInsets.fromLTRB(20, 5, 20, 4),
// //                 child: Container(
// //                   height: 60,
// //                   child: Align(
// //                     alignment: Alignment.centerLeft,
// //                     child: Padding(
// //                       padding: const EdgeInsets.all(8.0),
// //                       child: Text(
// //                         'Phone number',
// //                         style: TextStyle(color: Colors.white70),
// //                       ),
// //                     ),
// //                   ),
// //                   decoration: BoxDecoration(
// //                       borderRadius: BorderRadius.all(Radius.circular(20)),
// //                       border: Border.all(width: 1.0, color: Colors.white70)),
// //                 ),
// //               ),
// //               Expanded(
// //                 child: Align(
// //                   alignment: Alignment.bottomRight,
// //                   child: Container(
// //                     height: 70,
// //                     width: 200,
// //                     child: Align(
// //                       child: Text(
// //                         'Save',
// //                         style: TextStyle(color: Colors.white70, fontSize: 20),
// //                       ),
// //                     ),
// //                     decoration: BoxDecoration(
// //                         color: Colors.deepOrange,
// //                         borderRadius: BorderRadius.only(
// //                           topLeft: Radius.circular(30),
// //                         )),
// //                   ),
// //                 ),
// //               )
// //             ],
// //           ),
// //         ))
// //       ],
// //     );
// //   }
// // }


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'dart:ui';
// import 'StudentModel.dart';
// import 'package:fire/pages/3.home_screen.dart';
// import 'package:fire/pages/vid1.dart';
import 'package:fire/pages/test.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:fire/pages/description2.dart';
import 'package:fire/pages/description3.dart';

import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:fire/pages/description.dart';
// import 'package:fire/pages/StudentModel.dart';
import 'package:fire/pages/6.userprofile.dart';
import 'package:cupertino_progress_bar/cupertino_progress_bar.dart';
import 'dart:math';


class UserProfile extends StatefulWidget {
  final List values1;
  UserProfile({Key key, @required this.values1}) : super(key: key);
  @override
  _UserProfileState createState() => _UserProfileState(values1);
}

class _UserProfileState extends State<UserProfile> {
  List<String> items = [
    "Item 1",
    "Item 2",
    "Item 3",
    "Item 4",
    "Item 5",
    "Item 6",
    "Item 7",
    "Item 8"
  ];

    List values1;
  _UserProfileState(this.values1);

  var video1;
  var video2;
  var video3;
  var nanu;
  var neenu;
  var ondu;
  double y;
  Map x;


  Future<String> getData() async {
    var response = await http.get(
        // http.Response resp = await http.get(
        Uri.encodeFull(
            'http://18.216.220.165/i-switch/fireready/all_videos.php?phone=8050'),
        headers: {"Accept": "application/json"});
    this.setState(() {
      x = json.decode(response.body);
      video = x;
      print(x);
      video1 = double.parse(x['video1']) / int.parse(x['video1_lenth']);
      video2 = double.parse(x['video2']) / int.parse(x['video2_lenth']);

      video3 = double.parse(x['video3']) / int.parse(x['video3_lenth']);
      nanu = int.parse(x['video1_lenth']) +
          int.parse(x['video2_lenth']) +
          int.parse(x['video3_lenth']);
      neenu = double.parse(x['video1']) +
          double.parse(x['video2']) +
          double.parse(x['video3']);
      ondu = neenu / nanu;
      print(neenu);
      print(nanu);
      print(video1);
      print(ondu);
    });
    return "done!";
  }

  double roundDouble(double value, int places) {
    double mod = pow(10.0, places);
    return ((value * mod).round().toDouble() / mod);
  }

  @override
  void initState() {
    super.initState();
    this.getData();
    video = x;
  }
  RefreshController _refreshController =
      RefreshController(initialRefresh: false);

  void _onRefresh() async {
    // monitor network fetch
    await Future.delayed(Duration(milliseconds: 1000));
    // if failed,use refreshFailed()
    _refreshController.refreshCompleted();
  }

  void _onLoading() async {
    // monitor network fetch
    await Future.delayed(Duration(milliseconds: 1000));
    // if failed,use loadFailed(),if no data return,use LoadNodata()

    print(items);
    if (mounted)
      setState(() {
        items.add((items.length + 1).toString());
      });
    _refreshController.loadComplete();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Data time field"),
      ),
      body: Scrollbar(
        child: SmartRefresher(
          enablePullDown: true,
          header: WaterDropMaterialHeader(),
          footer: CustomFooter(
            builder: (BuildContext context, LoadStatus status) {
              Widget body;
              if (status == LoadStatus.idle) {
                body = Text("pull up load");
              } else if (status == LoadStatus.loading) {
                body = CupertinoActivityIndicator();
              } else if (status == LoadStatus.failed) {
                body = Text("Load Failed!Click retry!");
              } else if (status == LoadStatus.canLoading) {
                body = Text("release to load more");
              } else {
                body = Text("No more Data");
              }
              return Container(
                height: 55.0,
                child: Center(child: body),
              );
            },
          ),
          controller: _refreshController,
          onRefresh: _onRefresh,
          onLoading: _onLoading,
          child:  Column(   
                      children: <Widget>[
                            Padding(
              padding: EdgeInsets.only(
                  left: 50.0, top: 50.0, right: 50.0, bottom: 10.0),
              child: SizedBox(
                // width: 300.0,
                // child: RaisedButton(
                // onPressed: () => null,
                child: Stack(
                  alignment: Alignment.centerLeft,
                  children: <Widget>[
                    // Icon(Icons.play_circle_outline),
                    // Text(
                    //   'Start',
                    //   // overflow: TextOverflow.ellipsis,
                    //   style: TextStyle(fontWeight: FontWeight.bold),
                    // ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Icon(Icons.accessibility_new_outlined),
                        // Text(
                        //   'Complete',
                        //   // overflow: TextOverflow.ellipsis,
                        //   style: TextStyle(fontWeight: FontWeight.bold),
                        // ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
              Padding(
              padding: EdgeInsets.only(left: 50.0, right: 50.0, bottom: 10.0),
              child: new LinearPercentIndicator(
                width: 300,
                animation: true,
                animationDuration: 4000,
                lineHeight: 20.0,
                // leading: new Icon(Icons.person),
                // trailing: new Icon(Icons.check),
                percent: ondu == null ? 0.0 : roundDouble(ondu, 1),
                //  x == null ? 0.0 : double.parse(x['video2']),

                // center: Text("50%"),
                linearStrokeCap: LinearStrokeCap.roundAll,
                progressColor: Colors.green,
              ),
            ),
          SizedBox(
              width: 300.0,
              // child: RaisedButton(
              // onPressed: () => null,
              child: Stack(
                alignment: Alignment.centerLeft,
                children: <Widget>[
                  // Icon(Icons.play_circle_outline),
                  Text(
                    "Start",
                    // overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      // Icon(Icons.done),
                      Text(
                        "end",
                      //   // overflow: TextOverflow.ellipsis,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
            ),
   Padding(
              padding: EdgeInsets.only(right: 200.0, top: 100.0, bottom: 10.0),
              child: Text(
                ("Session 1"),
                // overflow: TextOverflow.ellipsis,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
 Padding(
              padding: EdgeInsets.only(left: 50.0, right: 50.0, bottom: 2.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  new SizedBox(
                      height: 40.0,
                      width: 300.0,
                      child: RaisedButton(
                          color: Colors.blueGrey[600],
                          onPressed: () {
                            print("212222222");
                            print(x);
                            // print(video1);sss
                            var myDouble = double.parse(x['video1']);
                            assert(myDouble is double);
                            print(myDouble); // 123.45
                            print("Clicked");
                            // print(createUser());
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) =>
                                    Description(values2: values1)));
                          },
                          child: Stack(
                            alignment: Alignment.centerLeft,
                            children: <Widget>[
                              Icon(Icons.play_circle_outline),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text('VIDEO 1'),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: <Widget>[Icon(Icons.done)],
                              ),
                            ],
                          ),
                          shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(10.0)))),
                  // Text('${(_value * 100).round()}%'),

                  Padding(
                    padding: EdgeInsets.only(
                        left: 5.0, top: 0.0, right: 5.0, bottom: 10.0),
                    child: LinearPercentIndicator(
                      // width: MediaQuery.of(context).size.width - 50,
                      animation: true,
                      lineHeight: 3.0,
                      // animationDuration: 2000,
                      percent: video1 == null ? 0.0 : roundDouble(video1, 1),
                      linearStrokeCap: LinearStrokeCap.roundAll,
                      progressColor: Color(0xFFBD202C),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 55, right: 55, bottom: 2.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  new SizedBox(
                      height: 40.0,
                      width: 300.0,
                      child: RaisedButton(
                          color: Colors.blueGrey[600],
                          onPressed: () {
                            print("Clicked");
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) =>
                                    Description2(values2: values1)));
                          },
                          child: Stack(
                            alignment: Alignment.centerLeft,
                            children: <Widget>[
                              Icon(Icons.play_circle_outline),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text('VIDEO 2'),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: <Widget>[
                                  Icon(Icons.done),
                                ],
                              ),
                            ],
                          ),
                          shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(10.0)))),
                  // Text('${(_value * 100).round()}%'),
                  Padding(
                    padding: EdgeInsets.only(
                        left: 5.0, top: 0.0, right: 5.0, bottom: 10.0),
                    child: LinearPercentIndicator(
                      // width: MediaQuery.of(context).size.width - 50,
                      animation: true,
                      lineHeight: 3.0,
                      // animationDuration: 2000,
                      percent: video2 == null ? 0.0 : roundDouble(video2, 1),
                      linearStrokeCap: LinearStrokeCap.roundAll,
                      progressColor: Color(0xFFBD202C),
                    ),
                  ),
                ],
              ),
            ),
// video2
            Padding(
              padding: EdgeInsets.only(left: 50.0, right: 50.0, bottom: 2.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  new SizedBox(
                      height: 40.0,
                      width: 300.0,
                      child: RaisedButton(
                          color: Colors.blueGrey[600],
                          onPressed: () {
                            print("Clicked");
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) =>
                                    Description3(values2: values1)));
                          },
                          child: Stack(
                            alignment: Alignment.centerLeft,
                            children: <Widget>[
                              Icon(Icons.play_circle_outline),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text('VIDEO 3'),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: <Widget>[
                                  Icon(Icons.done),
                                ],
                              ),
                            ],
                          ),
                          shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(10.0)))),
                  // Text('${(_value * 100).round()}%'),
                  Padding(
                    padding: EdgeInsets.only(
                        left: 5.0, top: 0.0, right: 5.0, bottom: 10.0),
                    child: LinearPercentIndicator(
                      // width: MediaQuery.of(context).size.width - 50,
                      animationDuration: 4000,
                      animation: true,
                      lineHeight: 3.0,
                      // animationDuration: 2000,
                      percent: video3 == null ? 0.0 : roundDouble(video3, 1),

                      linearStrokeCap: LinearStrokeCap.roundAll,
                      progressColor: Color(0xFFBD202C),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 200.0, top: 30.0, bottom: 10.0),
              child: Text(
                ' Session 2',
                // overflow: TextOverflow.ellipsis,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 50.0, right: 50.0, bottom: 2.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  new SizedBox(
                      height: 40.0,
                      width: 300.0,
                      child: RaisedButton(
                          color: Colors.blueGrey[600],
                          onPressed: () {
                            print("Clicked");
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) =>
                                    Description(values2: values1)));
                          },
                          child: Stack(
                            alignment: Alignment.centerLeft,
                            children: <Widget>[
                              Icon(Icons.play_circle_outline),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text('VIDEO 1'),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: <Widget>[
                                  Icon(Icons.done),
                                ],
                              ),
                            ],
                          ),
                          shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(10.0)))),
                  // Text('${(_value * 100).round()}%'),
                  Padding(
                    padding: EdgeInsets.only(
                        left: 5.0, top: 0.0, right: 5.0, bottom: 10.0),
                    child: LinearPercentIndicator(
                      // width: MediaQuery.of(context).size.width - 50,
                      animation: true,
                      lineHeight: 3.0,
                      // animationDuration: 2000,
                      percent: video1 == null ? 0.0 : roundDouble(video1, 1),
                      linearStrokeCap: LinearStrokeCap.roundAll,
                      progressColor: Color(0xFFBD202C),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 50.0, right: 50.0, bottom: 2.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  new SizedBox(
                      height: 40.0,
                      width: 300.0,
                      child: RaisedButton(
                          color: Colors.blueGrey[600],
                          onPressed: () {
                            print("Clicked");
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) =>
                                    Description2(values2: values1)));
                          },
                          child: Stack(
                            alignment: Alignment.centerLeft,
                            children: <Widget>[
                              Icon(Icons.play_circle_outline),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text('VIDEO 2'),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: <Widget>[
                                  Icon(Icons.done),
                                ],
                              ),
                            ],
                          ),
                          shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(10.0)))),
                  // Text('${(_value * 100).round()}%'),
                  Padding(
                    padding: EdgeInsets.only(
                        left: 5.0, top: 0.0, right: 5.0, bottom: 10.0),
                    child: LinearPercentIndicator(
                      // width: MediaQuery.of(context).size.width - 50,
                      animation: true,
                      lineHeight: 3.0,
                      // animationDuration: 2000,
                      percent: video2 == null ? 0.0 : roundDouble(video2, 1),
                      linearStrokeCap: LinearStrokeCap.roundAll,
                      progressColor: Color(0xFFBD202C),
                    ),
                  ),
                ],
              ),
            ),
      Padding(
              padding: EdgeInsets.only(left: 50.0, right: 50.0, bottom: 2.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  new SizedBox(
                      height: 40.0,
                      width: 300.0,
                      child: RaisedButton(
                          color: Colors.blueGrey[600],
                          onPressed: () {
                            print("Clicked");
                            // test();
Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) =>
                                    UserProfile()));
                                                  },
                          child: Stack(
                            alignment: Alignment.centerLeft,
                            children: <Widget>[
                              Icon(Icons.play_circle_outline),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text('VIDEO 3'),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: <Widget>[
                                  Icon(Icons.done),
                                ],
                              ),
                            ],
                          ),
                          shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(10.0)))),
                  // Text('${(_value * 100).round()}%'),
                  Padding(
                    padding: EdgeInsets.only(
                        left: 5.0, top: 0.0, right: 5.0, bottom: 10.0),
                    child: LinearPercentIndicator(
                      // width: MediaQuery.of(context).size.width - 50,
                      animation: true,
                      lineHeight: 3.0,
                      // animationDuration: 2000,
                      percent: video3 == null ? 0.0 : roundDouble(video3, 1),
                      linearStrokeCap: LinearStrokeCap.roundAll,
                      progressColor: Color(0xFFBD202C),
                    ),
                  ),
                ],
              ),
            ),














                      ]

                 ),
        ),
      ),
    );
  }
}