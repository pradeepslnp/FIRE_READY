//
// Generated file. Do not edit.
//

// ignore_for_file: lines_longer_than_80_chars

import 'package:audio_service/audio_service_web.dart';
import 'package:audio_session/audio_session_web.dart';
import 'package:url_launcher_web/url_launcher_web.dart';
import 'package:video_player_web/video_player_web.dart';

import 'package:flutter_web_plugins/flutter_web_plugins.dart';

// ignore: public_member_api_docs
void registerPlugins(Registrar registrar) {
  AudioServicePlugin.registerWith(registrar);
  AudioSessionWeb.registerWith(registrar);
  UrlLauncherPlugin.registerWith(registrar);
  VideoPlayerPlugin.registerWith(registrar);
  registrar.registerMessageHandler();
}
