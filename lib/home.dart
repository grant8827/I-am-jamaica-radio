// ignore_for_file: camel_case_types, sized_box_for_whitespace, sort_child_properties_last, avoid_unnecessary_containers, unused_local_variable, unused_import

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:iamjamaicaradio/textanimationcolor.dart';
import 'package:radio_player/radio_player.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => homePageState();
}

class homePageState extends State<homePage> {
  final RadioPlayer _radioPlayer = RadioPlayer();
  bool isPlaying = false;
  List<String>? metadata;

  get http => null;

  get url => null;

  Object? get data => null;

  @override
  void initState() {
    super.initState();
    initRadioPlayer();
  }

  void initRadioPlayer() {
    _radioPlayer.setChannel(
      title: 'Radio Player',
      url: 'https://c23.radioboss.fm:8013/stream',
      imagePath: 'assets/cover.jpg',
    );

    _radioPlayer.stateStream.listen((value) {
      setState(() {
        isPlaying = value;
      });
    });

    _radioPlayer.metadataStream.listen((value) {
      setState(() {
        metadata = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 107, 4),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(
                  top: 20.0, right: 10.0, left: 10.0, bottom: 20.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.asset(
                  'assets/images/IAmLogo1.png',
                  width: 300,
                  height: 300,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              child: const Text('Welcome To',
                  style: TextStyle(fontSize: 27.0, color: Colors.amber)),
            ),
            Container(
              margin: const EdgeInsets.all(20.0),
              child: const textColorAnimate(),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 210, 158, 1),
        onPressed: () {
          isPlaying ? _radioPlayer.pause() : _radioPlayer.play();
        },
        tooltip: 'Control button',
        child: Icon(
          isPlaying ? Icons.pause_rounded : Icons.play_arrow_rounded,
          color: Colors.black,
          size: 30.0,
        ),
      ),
    );
  }
}
