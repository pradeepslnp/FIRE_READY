import 'dart:ui';
// import 'StudentModel.dart';
// import 'package:fire/pages/3.home_screen.dart';
// import 'package:fire/pages/vid1.dart';
import 'package:fire/pages/test.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:fire/pages/description2.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:fire/pages/description.dart';
// import 'package:fire/pages/StudentModel.dart';
import 'package:fire/pages/description3.dart';
import 'package:cupertino_progress_bar/cupertino_progress_bar.dart';
import 'dart:math';

// var video1 = {v1: 0};
// var video2 = {v2: 0};
// var video3 = {v3: 0};
// var a = {};
class Test extends StatefulWidget {
  final List values1;
  Test({Key key, @required this.values1}) : super(key: key);

  @override
  TestState createState() => new TestState(values1);
}

Map video;

// class DataTransfer {
//   Map Video_Detail;
//   videoDetails() {
//     Video_Detail = video;
//   }
// }

class TestState extends State<Test> {
  List values1;
  TestState(this.values1);

  var video1;
  var video2;
  var video3;
  var nanu;
  var neenu;
  var ondu;
  double y;
  Map x;

  // final List values3;
  // TestState({Key key, @required this.values1}) : super(key: key);

  // Future<String> getData() async {
  //   http.Response resp = await http.get(
  //       Uri.encodeFull('https://jsonplaceholder.typicode.com/posts'),
  //       headers: {"Accept": "application/json"});
  //   List data = json.decode(resp.body);
  //   this.x = data;
  //   showRspData();
  // }

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
  // Future<void> showRspData() async {
  //   // print(this.x);
  //   await getData();

  //   // y = double.parse(x['video1']);
  //   y = double.parse(x['video1'.toString()]);
  //   x.forEach((k, v) => print('${k}: ${v}'));
  // }

  @override

  // video1 api
  Widget build(BuildContext context) {
    // test() async {
    //   await showRspData();
    //   y = double.parse(x['video1'.toString()]);

    //   print("test fun");
    //   print(y);
    //   amar = y;
    // }

    // Map Data() {
    //   return x;
    // }

    // // test();
    // print("hi");
    // print(x);

    // Future<List<User>> getRequest() async {
    //   //replace your restFull API here.
    //   String url =
    //       "http://18.216.220.165/i-switch/fireready/all_videos.php?phone=8050";
    //   final response = await http.get(url);
    //   var responseData = json.decode(response.body);
    //   print(responseData);
    //   //Creating a list to store input data;
    //   List<User> users = [];
    //   for (var singleUser in responseData) {
    //     // User user = User(
    //     //   video1: singleUser["video1"],
    //     //   video2: singleUser["video2"],
    //     //   video3: singleUser["video3"],
    //     // );
    //     print(singleUser['video1']);
    //     print(singleUser['video2']);
    //     print(singleUser['video3']);
    //     var v1 = singleUser['video1'];
    //     var v2 = singleUser['video2'];
    //     var v3 = singleUser['video3'];
    //     print(v1);
    //     var id = {
    //       this.video1 = v1,
    //       this.video2 = v2,
    //       this.video3 = v3,
    //     };
    //     // print(id(v1));
    //     //Adding user to the list.
    //     // users.add(user);
    //   }
    //   print(this.video1);
    //   print('$video1/231');
    // }

    // print(id[v1]);
    // getRequest();
    // getRequest();
    // Future<StudentModel> createUser() async {
    //   // Map postData = {};
    //   // Map data = {'key1': 1, 'key2': "some text"};
    //   String body1 = jsonEncode(postData);
    //   final String apiUrl =
    //       "http://18.216.220.165/i-switch/fireready/all_videos.php?phone=" +
    //           values1[1];
    //   final response = await http.get(apiUrl);
    //   print("session");
    //   print(response.body);
    // }
    // postData = {'phone': values1[1]};
    // createUser();
    // print(response.body[1]);
    // var id = await createUser();
    return Scaffold(
      // backgroundColor: Colors.blueGrey[50],
      appBar: new AppBar(
        backgroundColor: Colors.blueGrey[50],
        actions: <Widget>[
          // IconButton(icon: Icon(Icons.shopping_cart), onPressed: () {}),
          IconButton(
              color: Colors.blueGrey[600],
              icon: Icon(Icons.person),
              // color: Colors.blueGrey[50],
              onPressed: () {
                // print(video1);
                Navigator.pushNamed(context, "/userprofile");
              }),
        ],
      ),
      body: Center(
        child: Column(
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
                        values1[1],
                        // overflow: TextOverflow.ellipsis,
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
                      // print(this.valuesController);
                      // print(values[2]);
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) =>
                              Test()));
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
          ],
        ),
      ),
    );
  }
}
