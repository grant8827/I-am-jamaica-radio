// ignore_for_file: camel_case_types, avoid_unnecessary_containers, avoid_print, unreachable_switch_case, unused_import

import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:iamjamaicaradio/about.dart';
import 'package:iamjamaicaradio/contact.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class drawerNavPage extends StatefulWidget {
  const drawerNavPage({super.key});

  @override
  State<drawerNavPage> createState() => dropdownmenuState();
}

class dropdownmenuState extends State<drawerNavPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 20.0),
      child: DropdownButtonHideUnderline(
        child: DropdownButton2(
          customButton: const Icon(
            Icons.list,
            size: 46,
            color: Color.fromARGB(255, 0, 0, 0),
          ),
          items: [
            ...MenuItems.firstItems.map(
              (item) => DropdownMenuItem<MenuItem>(
                value: item,
                child: MenuItems.buildItem(item),
              ),
            ),
            const DropdownMenuItem<Divider>(enabled: false, child: Divider()),
            ...MenuItems.secondItems.map(
              (item) => DropdownMenuItem<MenuItem>(
                value: item,
                child: MenuItems.buildItem(item),
              ),
            ),
            


            
          ],
          onChanged: (value) {
            MenuItems.onChanged(context, value! as MenuItem);
          },
          dropdownStyleData: DropdownStyleData(
            width: 160,
            padding: const EdgeInsets.symmetric(vertical: 6),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: const Color.fromARGB(255, 255, 204, 0),
            ),
            offset: const Offset(0, 8),
          ),
          menuItemStyleData: MenuItemStyleData(
            customHeights: [
              ...List<double>.filled(MenuItems.firstItems.length, 48),
              8,
              ...List<double>.filled(MenuItems.secondItems.length, 48),
            ],
            padding: const EdgeInsets.only(left: 16, right: 16),
          ),
        ),
      ),
    );
  }
}

class MenuItem {
  const MenuItem({
    required this.text,
    required this.icon,
    required Color color,
  });

  final String text;
  final IconData icon;
}

abstract class MenuItems {
  int onChange = 0;
  static const List<MenuItem> firstItems = [
    home,
    about,
    contact,
  ];
  static const List<MenuItem> secondItems = [];

  static const home =
      MenuItem(text: 'Home', icon: Icons.home, color: Colors.black);
  static const about =
      MenuItem(text: 'About', icon: Icons.info, color: Colors.black);
  static const contact =
      MenuItem(text: 'Contact', icon: Icons.contacts, color: Colors.black);

  static Widget buildItem(MenuItem item) {
    return Row(
      children: [
        Icon(item.icon, color: const Color.fromARGB(255, 0, 0, 0), size: 22),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          child: Text(
            item.text,
            style: const TextStyle(
              color: Color.fromARGB(255, 0, 0, 0),
            ),
          ),
        ),
       
      ],
    );
  
  }

  static void onChanged(BuildContext context, MenuItem item) {
    switch (item) {
      case MenuItems.home:

        //Do something
        break;
      case MenuItems.about:
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const aboutPage(),
          ),
        );
        //Do something
        break;

      case MenuItems.contact:
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const contactPage(),
          ),
        );
        //Do something
        break;
    }
  }
}
