import 'package:flutter/material.dart';
import 'package:sncf_connect/assets/constants.dart';
import 'package:sncf_connect/widgets/help.dart';
import 'package:timelines/timelines.dart';

class MonParcours extends StatelessWidget {
  const MonParcours({super.key});

  @override
  Widget build(BuildContext context) {
    final data = [
      {
        "date": "Janvier 2023",
        "title": "Développement mobile (Flutter) de l'application de mon école",
        "description":
            "J'ai rejoint l'équipe de l'application myDevinci, qui permets aux étudiants des trois écoles du pôle Léonard de Vinci d'avoir accès à leur portail étudiant directement sur leur téléphone.",
      },
      {
        "date": "Août 2022",
        "title": "Semestre à l'étranger - Hanyang University, Corée du Sud",
        "description":
            "J'ai eu l'occasion de faire un semestre à l'étranger à Hanyang University à Séoul. J'ai pu découvrir la Corée du Sud et ses traditions. J'ai suivi des cours d'Artificial Intelligence, Computer Networks, Numerical Analysis with MATLAB, Programmation in C++ et Introduction to Information Systems.",
      },
      {
        "date": "Eté 2022",
        "title": 'Stage en développement web',
        "description":
            "J'ai développé deux sites web, un e-commerce et un site vitrine pour un groupe énergétique basé à Aix-En-Provence. Ce stage a duré deux mois.",
      },
      {
        "date": "2022",
        "title": "Opérateur phoning et chargé de TD",
        "description":
            "J'ai travaillé comme opérateur phoning et chargé de TD au sein du pôle Léonard de Vinci. Mon objectif en tant que chargé de phoning était de contacter les anciens étudiants dans le cadre de l'enquête premier emploi. J'ai été recruté pour enseigner auprès de trois classes de deuxième année en classe préparatoire intégrée en école de commerce (EMLV). J'étais en charge du module 'Développement technologique et innovations'",
      },
      {
        "date": "2020 - aujourd'hui",
        "title": "Développeur freelance full stack et mobile",
        "description":
            "J'ai créé mon auto-entreprise pour me permettre de créer des sites webs et des applications mobiles pour des clients. J'ai collaboré avec des clients dans différents domaines qu'il s'agisse de BtoB ou BtoC. J'utilise Next.JS/React.JS, Node.JS, TailwindCSS, Flutter, Firebase, AWS et je code en C#, JavaScript, Dart, Python.",
      },
      {
        "date": "2020",
        "title":
            "Intégration en première année de classe préparatoire intégrée à l'ESILV",
        "description":
            "J'ai déménagé de Strasbourg pour m'installer à La Défense et commencer des études d'ingénieur. J'ai notamment pu créer un projet de traitement d'image, de QRCode et un Scrabble, les deux en C# disponible sur mon GitHub.",
      },
      {
        "date": "Ete 2019 et 2020",
        "title": "Equipier polyvalent chez McDonald's",
        "description":
            "J'ai été formé en cuisine et au comptoir dans mon restaurant McDonald's local, où j'ai eu l'occasion pendant deux étés de travailler en tant qu'équipier polyvalent."
      }
    ];

    return Scaffold(
      backgroundColor: lightGrayColor,
      appBar: AppBar(
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: const CircleAvatar(
                backgroundColor: Colors.black,
                radius: 15,
                child: Icon(
                  Icons.chevron_left_outlined,
                  size: 40,
                  color: Colors.white,
                )),
          ),
        ),
        title: const Text(
          'Mon parcours',
          style: TextStyle(
              color: Colors.black, fontSize: 17, fontWeight: FontWeight.bold),
        ),
        backgroundColor: lightGrayColor,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(defaultPadding),
              child: Text('Qui voyage ?',
                  style: TextStyle(
                    fontSize: 17,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  right: defaultPadding, left: defaultPadding),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: const [
                      CircleAvatar(
                        backgroundColor: Color(0XFFdc82fe),
                        child: Text(
                          'ET',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          'Elias Tourneux',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(
                  left: defaultPadding,
                  right: defaultPadding,
                  top: defaultPadding * 2),
              child: Text('Détail du voyage',
                  style: TextStyle(
                    fontSize: 17,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(defaultPadding),
              child: FixedTimeline.tileBuilder(
                theme: TimelineThemeData(
                  nodePosition: 0,
                  nodeItemOverlap: true,
                  connectorTheme: const ConnectorThemeData(
                    color: Color(0xffe6e7e9),
                    thickness: 15.0,
                  ),
                ),
                builder: TimelineTileBuilder.connected(
                  connectionDirection: ConnectionDirection.before,
                  indicatorBuilder: (context, index) {
                    return const OutlinedDotIndicator(
                      color: Color(0XFF772be3),
                      backgroundColor: Colors.white,
                      borderWidth: 2.0,
                    );
                  },
                  connectorBuilder: (context, index, connectorType) {
                    return const SolidLineConnector(
                      color: Color(0xFF772be3),
                    );
                  },
                  contentsAlign: ContentsAlign.basic,
                  contentsBuilder: (context, index) {
                    return Align(
                      alignment: Alignment.topLeft,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  padding: const EdgeInsets.all(8),
                                  margin: const EdgeInsets.all(10),
                                  child: Text(
                                    data[index]["date"] as String,
                                    style: const TextStyle(
                                        color: Colors.white, fontSize: 12),
                                  )),
                              const SizedBox(
                                width: 5,
                              ),
                              Expanded(
                                child: Text(data[index]["title"] as String),
                              )
                            ],
                          ),
                          Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              padding: const EdgeInsets.all(10),
                              margin: const EdgeInsets.all(10),
                              child:
                                  Text(data[index]["description"] as String)),
                        ],
                      ),
                    );
                  },
                  itemCount: data.length,
                ),
              ),
            ),
            const Help(),
          ],
        ),
      ),
    );
  }
}
