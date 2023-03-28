import 'package:flutter/material.dart';
import 'package:sncf_connect/assets/constants.dart';
import 'package:sncf_connect/views/account.dart';
import 'package:sncf_connect/views/home.dart';
import 'package:url_launcher/url_launcher.dart';

class Controller extends StatefulWidget {
  const Controller({super.key});

  @override
  State<Controller> createState() => _ControllerState();
}

class _ControllerState extends State<Controller> {
  int _selectedIndex = 0;

  final navigation = [
    const Home(),
    const Account(),
    const Account(),
    const Account(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5F5F5),
      body: IndexedStack(
        index: _selectedIndex,
        children: navigation,
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedLabelStyle: const TextStyle(
            fontSize: 12,
          ),
          backgroundColor: darkColor,
          selectedItemColor: secondaryColor,
          unselectedItemColor: grayColor,
          currentIndex: _selectedIndex,
          onTap: ((value) async {
            if (value == 1) {
              await launchUrl(
                  Uri.parse(
                      "https://github.com/eliasto/candidature-sncfconnectandtech"),
                  mode: LaunchMode.externalApplication);
              return;
            } else if (value == 2) {
              await launchUrl(
                  Uri.parse("https://sncfconnect.eliqs.dev/cv.pdf"),
                  mode: LaunchMode.externalApplication);
              return;
            }

            setState(() {
              _selectedIndex = value;
            });
          }),
          showUnselectedLabels: true,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.route_outlined),
              label: 'Voyager',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.qr_code_2_outlined),
              label: 'Répo. GitHub',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.menu_book_outlined),
              label: 'Mon CV',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline_outlined),
              label: 'Me contacter',
            ),
          ]),
    );
  }
}
