//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:edufrance_v1/home.dart';
import 'dart:async';

import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:assets_audio_player/assets_audio_player.dart';


Color customColor2 = Color.fromARGB(255, 3, 43, 82);
Color modra1 = Color.fromARGB(255, 3, 43, 82);

void main() {
  MaterialColor modra = const MaterialColor(0xFF032B52, <int, Color>{


  });
  ThemeData themeData = ThemeData(
    primarySwatch: Colors.indigo,
    primaryColor: modra1,
  );
  AssetsAudioPlayer.setupNotificationsOpenAction((notification) {
    return true;
  });
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {

  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: modra1,
        primarySwatch: Colors.indigo
      ),
      home: HomePage(),
    );
  }
}

