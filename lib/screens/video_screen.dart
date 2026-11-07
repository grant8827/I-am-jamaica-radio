import 'package:flutter/material.dart';
import 'package:iamjamaicaradio/widgets/chatwidget.dart';
import 'package:iamjamaicaradio/widgets/video_player.dart';

class videoScreen extends StatefulWidget {
  const videoScreen({super.key});

  @override
  State<videoScreen> createState() => _videoScreenState();
}

class _videoScreenState extends State<videoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 210, 158, 1),
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: const Color.fromARGB(255, 210, 158, 1),
        title: const Text('I Am Jamaica Radio'),
      ),
      body: Container(
        alignment: Alignment.topCenter,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const SizedBox(
                height: 20,
              ),
              ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(50)),
                child: Image.asset(
                  'lib/assets/images/IAmLogo1.png',
                  width: 200,
                ),
              ),
              const SizedBox(height: 30),
              const Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  '24 hours of none stop songs and the word of God.',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18, fontFamily: 'RobotoMono'),
                ),
              ),
              /*const SizedBox(height: 20),
              const Text(
                'Live in Studio',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),*/
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  height: 210,
                  child: const videoPlayer(),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: double.infinity,
                  height: 600,
                  child: const chatApp(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
