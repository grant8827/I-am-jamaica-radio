// ignore_for_file: camel_case_types, avoid_unnecessary_containers, avoid_print

import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class textColorAnimate extends StatefulWidget {
  const textColorAnimate({super.key});

  @override
  State<textColorAnimate> createState() => textColorAnimateState();
}

class textColorAnimateState extends State<textColorAnimate> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 350.0,
        child: DefaultTextStyle(
          style: const TextStyle(
            fontSize: 50.0,
            fontFamily: 'Bobbers',
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 210, 158, 1),
          ),
          child: AnimatedTextKit(
            animatedTexts: [
              TypewriterAnimatedText('I Am Jamaica Gospel Radio'),
              TypewriterAnimatedText('I Am Jamaica Gospel Radio'),
              TypewriterAnimatedText('I Am Jamaica Gospel Radio'),
              TypewriterAnimatedText('I Am Jamaica Gospel Radio'),
            ],
            onTap: () {
              print("Tap Event");
            },
          ),
        ),
      ),
    );
  }
}
