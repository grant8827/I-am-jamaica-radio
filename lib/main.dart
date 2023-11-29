// ignore_for_file: sized_box_for_whitespace, sort_child_properties_last, deprecated_member_use, unused_field, avoid_unnecessary_containers, unused_element

import 'package:flutter/material.dart';
import 'package:iamjamaicaradio/about.dart';
import 'package:iamjamaicaradio/contact.dart';
import 'package:iamjamaicaradio/drawernav.dart';
import 'package:iamjamaicaradio/home.dart';
import 'package:share/share.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
  
      homePage(),
     aboutPage(),
     contactPage(),
   
  ];

  void _onItemTapped(int index) {
   
    setState(() {
      _selectedIndex = index;
    });
     Navigator.pop(context);
     
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 0, 132, 4),
        appBar: AppBar(
           iconTheme: const IconThemeData(color: Color.fromARGB(255, 0, 0, 0)),
          backgroundColor: const Color.fromARGB(255, 210, 158, 1),
          title: const Text(
            'I Am Jamaica Radio',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
      actions:  [
          IconButton(
              padding: const EdgeInsets.only(
                right: 50.0,
              ),
              iconSize: 25.0,
              onPressed: () {
                Share.share(' https://play.google.com/store/apps/details?id=com.iamjamaicagospelradio',
                    subject: 'Look what I made!');
              },
              icon: const FaIcon(FontAwesomeIcons.shareAlt),
              color: const Color.fromARGB(255, 30, 30, 30),
            ),
            const drawerNavPage()
      ],
        ),
       
        body:_widgetOptions[_selectedIndex],
        bottomNavigationBar: BottomAppBar(
      
          padding: const EdgeInsets.all(10.0),
          color: const Color.fromARGB(255, 210, 158, 1),
          child: Row(
            children: [
              const Spacer(),
               IconButton(
                padding: const EdgeInsets.only(right: 50.0),
                icon: const Icon(
                  FontAwesomeIcons.facebook,
                  color: Color.fromARGB(255, 0, 90, 215),
                  size: 30.0,
                ),
                onPressed: () async {
                  Uri website = Uri.parse('https://www.facebook.com/junior.forbes.73');
                  if (await launchUrl(website)) {
                    //open website
                  } else {
                    //do nothing
                  }
                }),
                const Spacer(),
            IconButton(
                padding: const EdgeInsets.only(right: 50.0),
                icon: const Icon(
                  FontAwesomeIcons.youtube,
                  color: Color.fromARGB(255, 183, 0, 0),
                  size: 30.0,
                ),
                onPressed: () async {
                  Uri website =
                      Uri.parse('https://www.youtube.com/@caribbeansportsfamilytv769');
                  if (await launchUrl(website)) {
                    //open website
                  } else {
                    //do nothing
                  }
                }),
                const Spacer(),
                 IconButton(
                   padding: const EdgeInsets.only(right: 50.0),
                  icon: const Icon(
                    FontAwesomeIcons.phone,
                    color: Color.fromARGB(255, 0, 135, 188),
                    size: 30.0,
                  ),
                  onPressed: () async {
                    Uri phone = Uri.parse('tel:8764682735');
                    if (await launchUrl(phone)) {
//dialer open
                    } else {
                      //do nothing
                    }
                  }),
                  const Spacer(),
                  IconButton(
                     padding: const EdgeInsets.only(right: 50.0),
                  icon: const Icon(
                    FontAwesomeIcons.envelope,
                    size: 30.0,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                  onPressed: () async {
                    Uri email = Uri.parse('mailto:iamjamaicagospelstation@gmail.com');
                    if (await launchUrl(email)) {
                      //open email
                    } else {
                      //do nothing
                    }
                  }),
                  const Spacer(),
                 IconButton(
                   padding: const EdgeInsets.only(right: 10.0),
                  icon: const Icon(
                    FontAwesomeIcons.globe,
                    color: Colors.blue,
                    size: 30.0,
                  ),
                  onPressed: () async {
                    Uri website = Uri.parse('https://iamjamaicaradio.com/');
                    if (await launchUrl(website)) {
                      //open website
                    } else {
                      //do nothing
                    }
                  }),
            const Spacer(),
            ],
          ),
         
        ),
      ),
    );
  }
}
