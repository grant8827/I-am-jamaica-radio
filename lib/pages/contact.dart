// ignore_for_file: avoid_unnecessary_containers, camel_case_types

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class contactPage extends StatefulWidget {
  const contactPage({super.key});

  @override
  State<contactPage> createState() => contactPageState();
}

class contactPageState extends State<contactPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: const Color.fromARGB(255, 0, 132, 4),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 210, 158, 1),
        title: const Text('About Us'),
      ),
    body:
    Center(
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(
              top: 20.0,
              left: 10.0,
              bottom: 40.0,
            ),
            alignment: Alignment.topLeft,
            child: const Text(
              'Contact Us',
              style: TextStyle(
                fontSize: 35.0,
                fontWeight: FontWeight.w500,
                  decoration: TextDecoration.underline,
              ),
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 210, 158, 1),
                foregroundColor: const Color.fromARGB(255, 0, 0, 0)),
            onPressed: () async {
              Uri phoneno = Uri.parse('tel:+18764682735');
              if (await launchUrl(phoneno)) {
                //dialer opened
              } else {
                //dailer is not opened
              }
            },
            child: const Text(
              "📞 Call Us:18764682735",
              style: TextStyle(fontSize: 18.0),
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 210, 158, 1),
              foregroundColor: const Color.fromARGB(255, 0, 0, 0),
            ),
            onPressed: () async {
              Uri phoneno = Uri.parse('https://wa.me/8762196511');
              if (await launchUrl(phoneno)) {
                //send email
              } else {
                // do nothing
              }
            },
            child: const Text(
              '📲 WhatsApp Us:18762196511',
              style: TextStyle(fontSize: 18.0),
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 210, 158, 1),
              foregroundColor: const Color.fromARGB(255, 0, 0, 0),
            ),
            onPressed: () async {
              Uri email = Uri.parse('iamjamaicagospelstation@gmail.com');
              if (await launchUrl(email)) {
                //send email
              } else {
                // do nothing
              }
            },
            child: const Text(
              '📧 iamjamaicagospelstation@gmail.com',
              style: TextStyle(fontSize: 18.0),
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 210, 158, 1),
              foregroundColor: const Color.fromARGB(255, 0, 0, 0),
            ),
            onPressed: () async {
              Uri website = Uri.parse('https://www.iamjamaicaradio.com/');
              if (await launchUrl(website)) {
                //send email
              } else {
                // do nothing
              }
            },
            child: const Text(
              '🌐 www.iamjamaicaradio.com',
              style: TextStyle(fontSize: 18.0),
            ),
          ),
        ],
      ),
    ),
    );
  }
}
