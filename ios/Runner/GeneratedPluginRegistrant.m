//
//  Generated file. Do not edit.
//

#import "GeneratedPluginRegistrant.h"

#if __has_include(<audio_service/AudioServicePlugin.h>)
#import <audio_service/AudioServicePlugin.h>
#else
@import audio_service;
#endif

#if __has_include(<audio_session/AudioSessionPlugin.h>)
#import <audio_session/AudioSessionPlugin.h>
#else
@import audio_session;
#endif

#if __has_include(<flutter_appauth/FlutterAppauthPlugin.h>)
#import <flutter_appauth/FlutterAppauthPlugin.h>
#else
@import flutter_appauth;
#endif

#if __has_include(<flutter_isolate/FlutterIsolatePlugin.h>)
#import <flutter_isolate/FlutterIsolatePlugin.h>
#else
@import flutter_isolate;
#endif

#if __has_include(<flutter_secure_storage/FlutterSecureStoragePlugin.h>)
#import <flutter_secure_storage/FlutterSecureStoragePlugin.h>
#else
@import flutter_secure_storage;
#endif

#if __has_include(<flutter_ui_mode_manager/FlutterUiModeManagerPlugin.h>)
#import <flutter_ui_mode_manager/FlutterUiModeManagerPlugin.h>
#else
@import flutter_ui_mode_manager;
#endif

#if __has_include(<flutter_webview_plugin/FlutterWebviewPlugin.h>)
#import <flutter_webview_plugin/FlutterWebviewPlugin.h>
#else
@import flutter_webview_plugin;
#endif

#if __has_include(<fullscreen/FullscreenPlugin.h>)
#import <fullscreen/FullscreenPlugin.h>
#else
@import fullscreen;
#endif

#if __has_include(<image_picker/FLTImagePickerPlugin.h>)
#import <image_picker/FLTImagePickerPlugin.h>
#else
@import image_picker;
#endif

#if __has_include(<path_provider/FLTPathProviderPlugin.h>)
#import <path_provider/FLTPathProviderPlugin.h>
#else
@import path_provider;
#endif

#if __has_include(<sqflite/SqflitePlugin.h>)
#import <sqflite/SqflitePlugin.h>
#else
@import sqflite;
#endif

#if __has_include(<url_launcher/FLTURLLauncherPlugin.h>)
#import <url_launcher/FLTURLLauncherPlugin.h>
#else
@import url_launcher;
#endif

#if __has_include(<video_player/FLTVideoPlayerPlugin.h>)
#import <video_player/FLTVideoPlayerPlugin.h>
#else
@import video_player;
#endif

#if __has_include(<wakelock/WakelockPlugin.h>)
#import <wakelock/WakelockPlugin.h>
#else
@import wakelock;
#endif

#if __has_include(<webview_flutter/FLTWebViewFlutterPlugin.h>)
#import <webview_flutter/FLTWebViewFlutterPlugin.h>
#else
@import webview_flutter;
#endif

@implementation GeneratedPluginRegistrant

+ (void)registerWithRegistry:(NSObject<FlutterPluginRegistry>*)registry {
  [AudioServicePlugin registerWithRegistrar:[registry registrarForPlugin:@"AudioServicePlugin"]];
  [AudioSessionPlugin registerWithRegistrar:[registry registrarForPlugin:@"AudioSessionPlugin"]];
  [FlutterAppauthPlugin registerWithRegistrar:[registry registrarForPlugin:@"FlutterAppauthPlugin"]];
  [FlutterIsolatePlugin registerWithRegistrar:[registry registrarForPlugin:@"FlutterIsolatePlugin"]];
  [FlutterSecureStoragePlugin registerWithRegistrar:[registry registrarForPlugin:@"FlutterSecureStoragePlugin"]];
  [FlutterUiModeManagerPlugin registerWithRegistrar:[registry registrarForPlugin:@"FlutterUiModeManagerPlugin"]];
  [FlutterWebviewPlugin registerWithRegistrar:[registry registrarForPlugin:@"FlutterWebviewPlugin"]];
  [FullscreenPlugin registerWithRegistrar:[registry registrarForPlugin:@"FullscreenPlugin"]];
  [FLTImagePickerPlugin registerWithRegistrar:[registry registrarForPlugin:@"FLTImagePickerPlugin"]];
  [FLTPathProviderPlugin registerWithRegistrar:[registry registrarForPlugin:@"FLTPathProviderPlugin"]];
  [SqflitePlugin registerWithRegistrar:[registry registrarForPlugin:@"SqflitePlugin"]];
  [FLTURLLauncherPlugin registerWithRegistrar:[registry registrarForPlugin:@"FLTURLLauncherPlugin"]];
  [FLTVideoPlayerPlugin registerWithRegistrar:[registry registrarForPlugin:@"FLTVideoPlayerPlugin"]];
  [WakelockPlugin registerWithRegistrar:[registry registrarForPlugin:@"WakelockPlugin"]];
  [FLTWebViewFlutterPlugin registerWithRegistrar:[registry registrarForPlugin:@"FLTWebViewFlutterPlugin"]];
}

@end
