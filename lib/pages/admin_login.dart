// // import 'package:fire/pages/vid3.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// // import 'package:fire/pages/4.start_here.dart';
// import 'dart:convert';

// import 'package:fire/pages/user_model.dart';

// class HomeScreen extends StatefulWidget {
//   @override
//   _HomeScreenState createState() => _HomeScreenState();
// }

// Future createUser() async {
//   // Map data = {'key1': 1, 'key2': "some text"};
//   String body1 = jsonEncode(getdata);

//   final String apiUrl = "http://18.216.220.165/i-switch/fireready/users.php";

//   final response = await http.post(apiUrl, body: body1);
//   print("nkn");
//   print(response.body);

//   // print(body1);
//   if (response.statusCode == 200) {
//     final String responseString = response.body;
//     print(response.body);

//     print("123");
//     return userModelFromJson(responseString);
//   } else {
//     return null;
//   }
// }

// Map getdata = {};

// class _HomeScreenState extends State<HomeScreen> {
//   //  _user;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold();
//   }
// }

// class AdminLogin extends StatelessWidget {
//   // static final String path = "lib/src/pages/login/login5.dart";
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         padding: const EdgeInsets.all(16.0),
//         height: double.infinity,
//         decoration: BoxDecoration(
//             gradient:
//                 LinearGradient(colors: [Colors.lightGreen, Colors.green])),
//         child: Column(
//           children: <Widget>[
//             Text(
//               "Good In Food".toUpperCase(),
//               style: TextStyle(
//                   color: Colors.white70,
//                   fontSize: 24.0,
//                   fontWeight: FontWeight.bold),
//             ),
//             SizedBox(height: 40.0),
//             TextField(
//               decoration: InputDecoration(
//                 contentPadding: const EdgeInsets.all(16.0),
//                 prefixIcon: Container(
//                     padding: const EdgeInsets.only(top: 16.0, bottom: 16.0),
//                     margin: const EdgeInsets.only(right: 8.0),
//                     decoration: BoxDecoration(
//                         color: Colors.white,
//                         borderRadius: BorderRadius.only(
//                             topLeft: Radius.circular(30.0),
//                             bottomLeft: Radius.circular(30.0),
//                             topRight: Radius.circular(30.0),
//                             bottomRight: Radius.circular(10.0))),
//                     child: Icon(
//                       Icons.person,
//                       color: Colors.lightGreen,
//                     )),
//                 hintText: "enter your email",
//                 hintStyle: TextStyle(color: Colors.white54),
//                 border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(30.0),
//                     borderSide: BorderSide.none),
//                 filled: true,
//                 fillColor: Colors.white.withOpacity(0.1),
//               ),
//             ),
//             SizedBox(height: 10.0),
//             TextField(
//               decoration: InputDecoration(
//                 contentPadding: const EdgeInsets.all(16.0),
//                 prefixIcon: Container(
//                     padding: const EdgeInsets.only(top: 16.0, bottom: 16.0),
//                     margin: const EdgeInsets.only(right: 8.0),
//                     decoration: BoxDecoration(
//                         color: Colors.white,
//                         borderRadius: BorderRadius.only(
//                             topLeft: Radius.circular(30.0),
//                             bottomLeft: Radius.circular(30.0),
//                             topRight: Radius.circular(30.0),
//                             bottomRight: Radius.circular(10.0))),
//                     child: Icon(
//                       Icons.lock,
//                       color: Colors.lightGreen,
//                     )),
//                 hintText: "enter your password",
//                 hintStyle: TextStyle(color: Colors.white54),
//                 border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(30.0),
//                     borderSide: BorderSide.none),
//                 filled: true,
//                 fillColor: Colors.white.withOpacity(0.1),
//               ),
//               obscureText: true,
//             ),
//             SizedBox(height: 30.0),
//             SizedBox(
//               width: double.infinity,
//               child: RaisedButton(
//                 color: Colors.white,
//                 textColor: Colors.lightGreen,
//                 padding: const EdgeInsets.all(20.0),
//                 child: Text("Login".toUpperCase()),
//                 onPressed: () {},
//                 shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(30.0)),
//               ),
//             ),
//             Spacer(),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: <Widget>[
//                 FlatButton(
//                   textColor: Colors.white70,
//                   child: Text("Create Account".toUpperCase()),
//                   onPressed: () {},
//                 ),
//                 Container(
//                   color: Colors.white54,
//                   width: 2.0,
//                   height: 20.0,
//                 ),
//                 FlatButton(
//                   textColor: Colors.white70,
//                   child: Text("Forgot Password".toUpperCase()),
//                   onPressed: () {},
//                 ),
//               ],
//             ),
//             SizedBox(height: 10.0),
//           ],
//         ),
//       ),
//     );
//   }
// }

/*
 * Author: Jpeng
 * Email: peng8350@gmail.com
 * Time: 2019/5/5 下午2:37
 */
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'dart:ui';
// // import 'StudentModel.dart';
// // import 'package:fire/pages/3.home_screen.dart';
// // import 'package:fire/pages/vid1.dart';
// import 'package:fire/pages/test.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';
// import 'package:fire/pages/description2.dart';
// import 'package:flutter/material.dart';
// import 'package:percent_indicator/percent_indicator.dart';
// import 'package:fire/pages/description.dart';
// // import 'package:fire/pages/StudentModel.dart';
// import 'package:fire/pages/description3.dart';
// import 'package:cupertino_progress_bar/cupertino_progress_bar.dart';
// import 'dart:math';

// void main() => runApp(AdminLogin());

// class AdminLogin extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: AdminLogin(),
//     );
//   }
// }

class AdminLogin extends StatefulWidget {
  @override
  _AdminLoginState createState() => _AdminLoginState();
}

class _AdminLoginState extends State<AdminLogin> {
  List<String> items = [
    // "Item 1",
    // "Item 2",
    // "Item 3",
    // "Item 4",
    // "Item 5",
    // "Item 6",
    // "Item 7",
    // "Item 8"
  ];
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
          // child: ListView.builder(
          //   itemBuilder: (c, i) => Card(child: Center(child: Text(items[i]))),
          //   itemExtent: 100.0,
          //   itemCount: items.length,
          // ),
        ),
      ),
    );
  }
}
