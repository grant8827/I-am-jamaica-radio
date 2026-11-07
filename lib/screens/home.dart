// ignore_for_file: camel_case_types, sized_box_for_whitespace, sort_child_properties_last, avoid_unnecessary_containers, unused_local_variable, unused_import

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:iamjamaicaradio/screens/video_screen.dart';
import 'package:iamjamaicaradio/widgets/drawer.dart';
import 'package:iamjamaicaradio/textanimationcolor.dart';
import 'package:iamjamaicaradio/screens/radio_screen.dart';
import 'package:radio_player/radio_player.dart';
import 'package:share_plus/share_plus.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => homePageState();
}

class homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 132, 4),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 210, 158, 1),
        actions: [
          IconButton(
            onPressed: () {
              Share.share(
                  ' https://play.google.com/store/apps/details?id=com.iamjamaicagospelradio',
                  subject: 'Look what I made!');
            },
            icon: const Icon(Icons.share),
          ),
        ],
      ),
      drawer: const drawerWidget(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            const ClipRRect(
              borderRadius: BorderRadius.all(
                Radius.circular(80),
              ),
              child: Image(
                image: AssetImage('lib/assets/images/IAmLogo1.png'),
                width: 280,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Welcome To',
                style: TextStyle(fontSize: 20),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 40),
              alignment: Alignment.center,
              height: 150,
              child: const textColorAnimate(),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 85.0, left: 80.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 210, 158, 1),
                  foregroundColor: Colors.black,
                  textStyle: const TextStyle(
                    fontSize: 20,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const radioScreen(),
                    ),
                  );
                },
                child: const Row(
                  children: [
                    Text(
                      'Live Radio',
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(Icons.radio),
                    SizedBox(
                      width: 20,
                    ),
                    Icon(
                      Icons.play_arrow,
                      size: 30,
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 85.0, left: 80.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 210, 158, 1),
                  foregroundColor: Colors.black,
                  textStyle: const TextStyle(
                    fontSize: 20,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const videoScreen()),
                  );
                },
                child: const Row(
                  children: [
                    Text(
                      'Live Video',
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(Icons.tv),
                    SizedBox(
                      width: 20,
                    ),
                    Icon(
                      Icons.play_arrow,
                      size: 30,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
