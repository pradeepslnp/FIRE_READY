import 'dart:convert';
import 'package:http/http.dart' as http;

Response responseFromJson(String str) => Response.fromJson(json.decode(str));

String responseToJson(Response data) => json.encode(data.toJson());
Future createUser() async {
  Map postData = {};
  // Map data = {'key1': 1, 'key2': "some text"};
  String body1 = jsonEncode(postData);
  final String apiUrl =
      "http://18.216.220.165/i-switch/fireready/all_videos.php?phone=" + "8050";
  final response = await http.get(apiUrl);

  print("nkn");
  // print(Response.response.body);
}

class Response {
  Response({
    this.video1,
    this.video2,
    this.video3,
  });

  String video1;
  String video2;
  String video3;

  factory Response.fromJson(Map<String, dynamic> json) => Response(
        video1: json["video1"],
        video2: json["video2"],
        video3: json["video3"],
      );

  Map<String, dynamic> toJson() => {
        "video1": video1,
        "video2": video2,
        "video3": video3,
      };
}
