import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:sncf_connect/assets/constants.dart';
import 'package:sncf_connect/views/EnRoute/motivations.dart';
import 'package:sncf_connect/views/EnRoute/parcours.dart';
import 'package:sncf_connect/views/EnRoute/projects.dart';
import 'package:sncf_connect/widgets/help.dart';
import 'package:sncf_connect/widgets/information.dart';
import 'package:sncf_connect/widgets/panel_enroute.dart';
import 'package:url_launcher/url_launcher.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
          decoration: const BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40))),
          padding: const EdgeInsets.only(top: 10),
          child: SafeArea(
            child: Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/bg.png"),
                      fit: BoxFit.contain,
                      alignment: Alignment.topCenter),
                  color: primaryColor,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40))),
              height: 280,
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.all(defaultPadding),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Bonjour 👋',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(height: 20),
                    const Text("Je m'appelle Elias !",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.w700)),
                    const SizedBox(height: 10),
                    TextField(
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.only(left: 20),
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        suffixIcon: GestureDetector(
                          onTap: () async => await launchUrl(Uri.parse(
                              "https://linkedin.com/in/elias-tourneux")),
                          child: const CircleAvatar(
                            backgroundColor: Colors.black,
                            radius: 30,
                            child: Icon(Icons.work_outline_outlined,
                                color: Colors.white),
                          ),
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        hintText: "Je candidate pour une alternance.",
                        hintStyle: const TextStyle(color: grayColor),
                      ),
                    ),
                  ]),
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(defaultPadding),
          child: Text(
            'En route',
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.w700, fontSize: 20),
          ),
        ),
        GestureDetector(
          onTap: () => {
            Navigator.push(
                context,
                PageTransition(
                    type: PageTransitionType.rightToLeft,
                    child: const MonParcours()))
          },
          child: const PanelEnRoute(
              title: "Mon parcours",
              description: "Formations et développement",
              icon: Icons.school_outlined,
              foreground: Color(0XFFf39718),
              background: Color(0XFFfde9d0)),
        ),
        GestureDetector(
          onTap: () => Navigator.push(
              context,
              PageTransition(
                  type: PageTransitionType.rightToLeft,
                  child: const MyProjects())),
          child: const PanelEnRoute(
              title: "Mes projets",
              description: "Professionnels, scolaires...",
              icon: Icons.devices_outlined,
              foreground: Color(0XFFdc82fe),
              background: Color(0XFFf8e6fe)),
        ),
        GestureDetector(
          onTap: () => Navigator.push(
              context,
              PageTransition(
                  type: PageTransitionType.rightToLeft,
                  child: const MyMotivations())),
          child: const PanelEnRoute(
              title: "Mes motivations",
              description: "Pourquoi je veux vous rejoindre !",
              icon: Icons.favorite_border_outlined,
              foreground: Color(0XFF9a9bfc),
              background: Color(0XFFedecfe)),
        ),
        const Information(
          description:
              "Cette application est une démonstration de mes compétences en Flutter. N'ayant pas accès aux différents éléments graphiques, maquettes, police d'écriture, etc. j'ai essayé de rester le plus fidèle possible aux éléments à ma disposition.",
        ),
        const Help(),
      ]),
    );
  }
}
