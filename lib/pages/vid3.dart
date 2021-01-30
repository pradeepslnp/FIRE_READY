// import 'package:fire/pages/
import 'package:fire/main.dart';
import 'package:fire/pages/5.session_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:universal_io/io.dart';
import 'package:video_player_controls/video_player_controls.dart';
import 'package:http/http.dart' as http;
import 'package:audio_service/audio_service.dart';

import 'dart:convert';

// void main() => runApp(MyApp());

class Vid3 extends StatefulWidget {
  final List values3;
  Vid3({Key key, @required this.values3}) : super(key: key);
  @override
  _VidState createState() => _VidState(values3);
}

Future createUser() async {
  // Map data = {'key1': 1, 'key2': "some text"};
  String body1 = jsonEncode(postData);
  final String apiUrl =
      "http://18.216.220.165/i-switch/fireready/update_video3.php";
  final response = await http.post(apiUrl, body: body1);
  // print(postData);
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

class _VidState extends State<Vid3> {
  List values3;
  _VidState(this.values3);
  // final List values3;
  // Vid3({Key key, @required this.values3}) : super(key: key);
  // List values;

  // HomePage(this.values);
  Controller controller;
  @override
  void initState() {
    super.initState();
    controller = new Controller(
      items: [
        new PlayerItem(
          startAt: Duration(seconds: 0),
          title: '1',

          aspectRatio: 16 / 9,
          url: 'http://18.216.220.165/i-switch/videos/fire%20ready.mp4',
          // subtitleUrl: "https://wecast.ch/posters/vtt.vtt",
        ),
      ],
      autoPlay: true,

      errorBuilder: (context, message) {
        return new Container(
          child: new Text(message),
        );
      },
      // index: 2,
      autoInitialize: true,

      // isLooping: false,
      allowedScreenSleep: false,
      showControls: true,
      hasSubtitles: true,
      // isLive: true,
      // showSeekButtons: true,
      showSkipButtons: true,
      allowFullScreen: true,
      fullScreenByDefault: false,

      placeholder: new Container(
        color: Colors.grey,
      ),
      isPlaying: (isPlaying) {
        print("hi");

        print(isPlaying);
        // print(AudioTrack == pause);
        if (isPlaying == false) {
          createUser();
          return print("video is paused");
        }
        // print("pradeep");
        // dynamic data = postVideoStatus();
        // print(data);
      },
      playerItem: (playerItem) {
        print('video3: ' + playerItem.title);
        print('position: ' + playerItem.position.inSeconds.toString());
        print('duration: ' + playerItem.duration.inSeconds.toString());
        // print('pause:' + controller.pause.toString());
        postData = {
          // 'name': values[0],
          // 'phone': values[1],
          // 'email': values[2],
          // 'name': values3[0],
          'phone': values3[1],
          // 'title': values3[2],
          'video3': playerItem.position.inSeconds.toString(),
          // "position": playerItem.position.inSeconds.toString(),
          // "duration": playerItem.duration.inSeconds.toString()
        };
      },
      //  final user = await createUser();
      videosCompleted: (isCompleted) {
        if (isCompleted == true) {
          // createUser();
          print(postData);

          return (0);
        }
        // print(isCompleted);
        // print(createUser());
      },
      // playerItem: (playerItem) {
      //   print('Player title: ' + playerItem.title);
      //   print('position: ' + playerItem.position.inSeconds.toString());
      //   print('Duration: ' + playerItem.duration.inSeconds.toString());
      // },
      // videosCompleted: (isCompleted) {
      //   print(isCompleted);
      // },
    );
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: VideoPlayerControls(
          controller: controller,
        ),
      ),
    );
  }
}
