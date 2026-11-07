import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class settingsPage extends StatelessWidget {
  const settingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 132, 4),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 210, 158, 1),
        title: const Text('Settings'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Administrator Only',
              ),
            ),
            const SizedBox(
              height: 130,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 210, 158, 1),
                  foregroundColor: Colors.black,
                  padding: const EdgeInsets.only(left: 30, right: 30)),
              onPressed: () async {
                Uri website = Uri.parse(
                    'https://dashboard.onesignal.com/apps/7726485f-6999-4e7f-b52a-550136afe84b/campaigns');
                if (await launchUrl(website)) {
                  //open website
                } else {
                  //do nothing
                }
              },
              child: const Text('Push Notification'),
            )
          ],
        ),
      ),
    );
  }
}
