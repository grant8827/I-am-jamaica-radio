import 'package:flutter/material.dart';
import 'package:iamjamaicaradio/widgets/chatwidget.dart';
import 'package:radio_player/radio_player.dart';

class radioScreen extends StatefulWidget {
  const radioScreen({super.key});

  @override
  State<radioScreen> createState() => _radioScreenState();
}

class _radioScreenState extends State<radioScreen> {
  final RadioPlayer _radioPlayer = RadioPlayer();
  bool isPlaying = false;
  List<String>? metadata;

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
              const SizedBox(height: 30),
              const ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(50)),
                child: Image(
                  image: AssetImage(
                    'lib/assets/images/IAmLogo1.png',
                  ),
                  width: 200,
                ),
              ),
              const SizedBox(height: 50),
              const Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  '24 hours of none stop songs and the word of God.',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18, fontFamily: 'RobotoMono'),
                ),
              ),
              const SizedBox(height: 30),
              Text(
                metadata?[0] ?? 'Now Playing',
                softWrap: false,
                overflow: TextOverflow.fade,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
              Text(
                metadata?[1] ?? '',
                softWrap: false,
                overflow: TextOverflow.fade,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              const SizedBox(height: 20),
              IconButton(
                iconSize: 30,
                color: const Color.fromARGB(255, 210, 158, 1),
                style: IconButton.styleFrom(
                  backgroundColor: Colors.black,
                  iconSize: 50,
                ),
                onPressed: () {
                  isPlaying ? _radioPlayer.pause() : _radioPlayer.play();
                },
                icon: Icon(
                  isPlaying ? Icons.pause_rounded : Icons.play_arrow_rounded,
                ),
              ),
              const SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: 400,
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
