import 'package:flutter/material.dart';
import 'package:sncf_connect/assets/constants.dart';
import 'package:sncf_connect/widgets/help.dart';
import 'package:sncf_connect/widgets/information.dart';
import 'package:sncf_connect/widgets/project_card.dart';

class MyProjects extends StatelessWidget {
  const MyProjects({super.key});

  @override
  Widget build(BuildContext context) {
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
          'Mes projets',
          style: TextStyle(
              color: Colors.black, fontSize: 17, fontWeight: FontWeight.bold),
        ),
        backgroundColor: lightGrayColor,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Padding(
              padding: EdgeInsets.all(defaultPadding),
              child: Text('Projets personnels',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ))),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: const [
                SizedBox(
                  width: 10,
                ),
                ProjectCard(
                    title: 'Candidature SNCF Connect',
                    description: "Eh oui, ce projet reste un projet !",
                    image: AssetImage(
                        'assets/projects/candidature-sncfconnect.jpg')),
                SizedBox(
                  width: 10,
                ),
                ProjectCard(
                    title: 'Tickop',
                    description:
                        "Une application de voyage pour permettre aux étudiants d'en finir avec les démarches administratives !",
                    image: AssetImage('assets/projects/tickop.png')),
                SizedBox(
                  width: 10,
                ),
                ProjectCard(
                    title: 'Azimout',
                    description:
                        "Jeux de société en ligne où vous devez relever le plus de défis dans un temps donné.",
                    image: AssetImage('assets/projects/azimout.png')),
                SizedBox(
                  width: 10,
                ),
                ProjectCard(
                    title: 'Beendy',
                    description:
                        "Beendy est une application dédiée aux colocataires. Faites vos courses, payez vos factures sur le même compte commun à tous !",
                    image: AssetImage('assets/projects/beendy.png')),
                SizedBox(
                  width: 10,
                ),
              ],
            ),
          ),
          const Padding(
              padding: EdgeInsets.all(defaultPadding),
              child: Text('Projets professionnels',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ))),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(children: const [
              SizedBox(
                width: 10,
              ),
              ProjectCard(
                  title: "Rob'O",
                  description:
                      "Réalisation d'un site e-commerce axé sur la vente de produit d'entretien pour la piscine.",
                  image: AssetImage('assets/projects/robo.png')),
              SizedBox(
                width: 10,
              ),
              ProjectCard(
                  title: 'Pôle-Habitat',
                  description:
                      "Réalisation d'un site vitrine pour une entreprise d'installation de panneaux solaires et autres équipements de l'habitat.",
                  image: AssetImage('assets/projects/pole-habitat.png')),
              SizedBox(
                width: 10,
              ),
              ProjectCard(
                  title: 'La Voie Du Sport',
                  description:
                      "La Voie du Sport est une application pour les amateurs de sport. Elle rassemble des entretiens, des conseils et met en relation joueur / recruteur.",
                  image: AssetImage('assets/projects/lvs.png')),
              SizedBox(
                width: 10,
              ),
              ProjectCard(
                  title: 'Passe A Ton Voisin',
                  description:
                      "Passe A Ton Voisin est une application d'échange de services et de biens avec des voisins et personnes proches de vous.",
                  image: AssetImage('assets/projects/patv.png')),
            ]),
          ),
          const Padding(
              padding: EdgeInsets.all(defaultPadding),
              child: Text('Projets scolaires',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ))),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(children: const [
              SizedBox(
                width: 10,
              ),
              ProjectCard(
                  title: "Scrabble",
                  description:
                      "Réalisation d'un scrabble dans un terminal en utilisant C#.",
                  image: AssetImage('assets/projects/github.png')),
              SizedBox(
                width: 10,
              ),
              ProjectCard(
                  title: "Traitement d'image",
                  description:
                      "Réalisation d'un logiciel de traitement d'image et génération de QR Code en C#.",
                  image: AssetImage('assets/projects/qrcode.png')),
            ]),
          ),
          const Information(
              description:
                  "Vous pouvez retrouver tous mes projets sur mon compte GitHub ! Certains projets ne sont pas disponibles vu qu'ils ont été fait sous contrat."),
          const Help()
        ]),
      ),
    );
  }
}
