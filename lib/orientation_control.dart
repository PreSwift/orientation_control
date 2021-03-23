import 'dart:io';

import 'package:flutter/services.dart';

class OrientationControl {

  static Future<void> landscapeLeftMode() async {
    if (Platform.isAndroid)
      return SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeRight]);
    return SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft]);
  }

  static Future<void> landscapeRightMode() async {
    if (Platform.isAndroid)
      return SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft]);
    return SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeRight]);
  }

  static Future<void> portraitUpMode() async {
    return SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  }

  static Future<void> portraitDownMode() async {
    return SystemChrome.setPreferredOrientations([DeviceOrientation.portraitDown]);
  }

  static Future<void> portraitAutoMode() async {
    return SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }

  static Future<void> landscapeAutoMode() async {
    return SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
  }

  static Future<void> landscapeRightAutoMode() async {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
    ]).then((value) {
      SystemChrome.setPreferredOrientations([
        DeviceOrientation.landscapeRight,
        DeviceOrientation.landscapeLeft,
      ]);
    });
  }

  static Future<void> fullAutoMode() async {
    return SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }

  static Future<void> fullAutoButUpsideDownMode() async {
    return SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.portraitUp,
    ]);
  }
}
