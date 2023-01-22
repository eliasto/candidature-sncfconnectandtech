import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:sncf_connect/views/profile/informations.dart';
import 'package:sncf_connect/widgets/help.dart';

import '../assets/constants.dart';

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      const Padding(
        padding: EdgeInsets.only(
            left: defaultPadding,
            right: defaultPadding,
            top: defaultPadding * 2),
        child: Text(
          'Compte',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(defaultPadding),
        child: Row(
          children: const [
            CircleAvatar(
              backgroundColor: Color(0XFFf29717),
              backgroundImage: AssetImage("assets/pp.jpg"),
            ),
            SizedBox(
              width: 15,
            ),
            Text(
              'Elias Tourneux',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      GestureDetector(
        onTap: () => {
          Navigator.push(
              context,
              PageTransition(
                  type: PageTransitionType.rightToLeft,
                  child: const MyInformations()))
        },
        child: Padding(
          padding: const EdgeInsets.all(defaultPadding),
          child: Container(
            padding: const EdgeInsets.symmetric(
                horizontal: defaultPadding, vertical: defaultPadding),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Mes informations',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Nom, prénom, e-mail, mot de passe...',
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
              const Expanded(
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Icon(Icons.chevron_right_outlined,
                      color: primaryColor, size: 25),
                ),
              )
            ]),
          ),
        ),
      ),
      const Help(),
    ]);
  }
}
