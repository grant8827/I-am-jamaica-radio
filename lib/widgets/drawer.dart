import 'package:flutter/material.dart';
import 'package:iamjamaicaradio/pages/about.dart';
import 'package:iamjamaicaradio/pages/contact.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:iamjamaicaradio/pages/settings.dart';
import 'package:url_launcher/url_launcher.dart';

class drawerWidget extends StatelessWidget {
  const drawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: const Color.fromARGB(255, 0, 132, 4),
        width: 200,
        child: ListView(
          padding: const EdgeInsets.all(0),
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 210, 158, 1),
              ),
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    child: Image(
                      image: AssetImage('lib/assets/images/IAmLogo1.png'),
                      width: 100,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'I Am Jamaica Gospel Radio',
                      style: TextStyle(fontSize: 10),
                    ),
                  )
                ],
              ),
            ),
            ListTile(
              iconColor: const Color.fromARGB(255, 0, 0, 0),
              selectedColor: const Color.fromARGB(255, 210, 158, 1),
              onTap: () {
                Navigator.pop(context);
              },
              leading: const Icon(Icons.house),
              title: const Text('Home'),
            ),
            ListTile(
              selectedTileColor: Colors.amber,
              iconColor: const Color.fromARGB(255, 0, 0, 0),
              selectedColor: Colors.amber,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const aboutPage(),
                  ),
                );
              },
              leading: const Icon(
                Icons.info,
              ),
              title: const Text('About'),
            ),
            ListTile(
              iconColor: const Color.fromARGB(255, 0, 0, 0),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const contactPage(),
                  ),
                );
              },
              leading: const Icon(Icons.contacts),
              title: const Text('Cantact'),
            ),
            ListTile(
              iconColor: const Color.fromARGB(255, 0, 0, 0),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const settingsPage(),
                  ),
                );
              },
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
            ),
            const Divider(
              color: Colors.black,
            ),
            //facebook
            ListTile(
              iconColor: const Color.fromARGB(255, 18, 30, 254),
              onTap: () async {
                Uri website = Uri.parse(
                    'https://www.facebook.com/profile.php?id=100077085797793');
                if (await launchUrl(website)) {
                  //open website
                } else {
                  //do nothing
                }
              },
              leading: const FaIcon(FontAwesomeIcons.facebook),
              title: const Text('Facebook'),
            ),
            //tiktok
            ListTile(
              iconColor: const Color.fromARGB(255, 0, 0, 0),
              onTap: () {
                Navigator.pop(context);
              },
              leading: const FaIcon(FontAwesomeIcons.tiktok),
              title: const Text('TikTok'),
            ),
            //youtube
            ListTile(
              iconColor: const Color.fromARGB(255, 124, 0, 0),
              onTap: () async {
                Uri website = Uri.parse(
                    'https://www.youtube.com/@caribbeansportsfamilytv769');
                if (await launchUrl(website)) {
                  //open website
                } else {
                  //do nothing
                }
              },
              leading: const FaIcon(FontAwesomeIcons.youtube),
              title: const Text('YouTube'),
            ),
            //website
            ListTile(
              iconColor: const Color.fromARGB(255, 0, 30, 228),
              onTap: () async {
                Uri website = Uri.parse('https://iamjamaicaradio.com/');
                if (await launchUrl(website)) {
                  //open website
                } else {
                  //do nothing
                }
              },
              leading: const FaIcon(FontAwesomeIcons.globe),
              title: const Text('Website'),
            ),
          ],
        ));
  }
}


/*children: [
              const Spacer(),
              IconButton(
                  padding: const EdgeInsets.only(right: 50.0),
                  icon: const Icon(
                    FontAwesomeIcons.facebook,
                    color: Color.fromARGB(255, 0, 90, 215),
                    size: 30.0,
                  ),
                  onPressed: () async {
                    Uri website =
                        Uri.parse('https://www.facebook.com/junior.forbes.73');
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
                    Uri website = Uri.parse(
                        'https://www.youtube.com/@caribbeansportsfamilytv769');
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
                    Uri email =
                        Uri.parse('mailto:iamjamaicagospelstation@gmail.com');
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
      ),*/