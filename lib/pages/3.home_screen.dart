// import 'package:fire/pages/vid3.dart';
import 'package:fire/pages/4.start_here.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
// import 'package:fire/pages/user_model.dart';
import 'dart:convert';

// import 'package:fire/pages/user_model.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

Future createUser() async {
  // Map data = {'key1': 1, 'key2': "some text"};
  String body1 = jsonEncode(postData);

  final String apiUrl = "http://18.216.220.165/i-switch/fireready/users.php";

  final response = await http.post(apiUrl, body: body1);
  print("nkn");
  print(response.body);

  // print(body1);
  // if (response.statusCode == 200) {
  //   final String responseString = response.body;
  //   print(response.body);
  //   print("123");
  //   return userModelFromJson(responseString);
  // } else {
  //   return null;
  // }
}

Map postData = {};

class _HomeScreenState extends State<HomeScreen> {
  List<String> names = List<String>();
  //  _user;

  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: new Color(0xFFFFFFFF),
      // appBar: AppBar(
      //     // Here we take the controller from the HomeScreen object that was created by
      //     // the App.build method, and use it to set our appbar title.
      //     // title: Text(widget.title),
      //     ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/1.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          // child:Align(

          // )
          // crossAxisAlignment: CrossAxisAlignment.,
          mainAxisAlignment: MainAxisAlignment.center,
          // Alignment:Alignment.bottomCenter,
          children: <Widget>[
            const SizedBox(
              height: 30.0,
            ),
            // Padding(
            //   padding:
            //       const EdgeInsets.symmetric(horizontal: 32, vertical: 8.0),
            //   child: TextField(
            //     obscureText: true,
            //     decoration: InputDecoration(
            //         labelText: "password", hasFloatingPlaceholder: true),
            //   ),
            // ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 40, vertical: 8.0),
              child: TextField(
                controller: nameController,
// Onchange:( nameController.text){
                // controller = nameController.text;
// }
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                    labelText: "Username",
                    hasFloatingPlaceholder: true,
                    // filled: true,
                    // hintText: "Username",
                    hintStyle: TextStyle(color: Colors.red),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.red, width: 2.0))),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 40, vertical: 8.0),
              child: TextField(
                controller: phoneController,
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                    labelText: "phone number",
                    hasFloatingPlaceholder: true,
                    // filled: true,

                    // hintText: "Phone number",
                    hintStyle: TextStyle(color: Colors.red),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.red, width: 2.0))),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 40, vertical: 8.0),
              child: TextField(
                controller: emailController,
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                    labelText: "email",
                    hasFloatingPlaceholder: true,

                    // hintText: "email-id",
                    hintStyle: TextStyle(color: Colors.red),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.red, width: 2.0))),
              ),
            ),
            Align(
              alignment: Alignment(0.50, 5.0),
              child: FloatingActionButton.extended(
                splashColor: Colors.white70,

                backgroundColor: Colors.red,

                label: Text('SUBMIT'),

                onPressed: () async {
                  final String name = nameController.text;
                  final String phone = phoneController.text;
                  final String email = emailController.text;
                  // print(name);
                  names.add(name);
                  names.add(phone);
                  names.add(email);
                  print(names[0]);
                  postData = {'name': name, 'phone': phone, 'email': email};
                  final user = await createUser();

                  // setState(() {
                  //   _user = user;
                  // });
                  if (nameController.text == "Admin") {
                    Navigator.pushNamed(context, "/adminlogin");
                  } else {
                    // print(names);
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => StartHere(values: names)));
                  }
                },
                // child: const Text('PLEASE LOGIN'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
