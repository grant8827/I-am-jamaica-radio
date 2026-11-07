// ignore_for_file: avoid_unnecessary_containers, camel_case_types

import 'package:flutter/material.dart';

class aboutPage extends StatefulWidget {
  const aboutPage({super.key});

  @override
  State<aboutPage> createState() => aboutPageState();
}

class aboutPageState extends State<aboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 132, 4),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 210, 158, 1),
        title: const Text('About Us'),
      ),
    body: Center(
        child: Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 20.0, left: 10.0),
          alignment: Alignment.topLeft,
          child: const Text(
            'About Us',
            style: TextStyle(
              fontSize: 35.0,
              fontWeight: FontWeight.w500,
              decoration: TextDecoration.underline,
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 20.0, left: 10.0),
          child: const Text(
            '''
In October 2021 God inspired a humble soul to create this gospel ministry to motivate God’s people to continue the journey with Christ Jesus and to pull the unsaved unto Christ; through testimonies, songs and the word of God. We are based in the Caribbean but our intention is to touch lives globally. In addition we love to play contemporary gospel music.  ''',
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
        ),
      ],
    ),
    ),
    );
  }
}
