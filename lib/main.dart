//import 'package:flutter/cupertino.dart';
import 'package:edufrance_v1/l2_page.dart';
import 'package:flutter/material.dart';
import 'package:edufrance_v1/home.dart';
import 'package:edufrance_v1/palette.dart';

import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:assets_audio_player/assets_audio_player.dart';



void main() {


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
        primaryColor: Palette.kToDark[50],
        primarySwatch: Palette.kToDark,
      ),
      home: l2(), //HomePage
    );
  }
}

