import 'package:flutter/material.dart';
import 'package:sncf_connect/assets/constants.dart';

class ProjectCard extends StatefulWidget {
  const ProjectCard(
      {super.key,
      required this.title,
      required this.description,
      required this.image});
  final String title;
  final String description;
  final ImageProvider image;

  @override
  State<ProjectCard> createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
          width: 200,
          height: 100,
          decoration: BoxDecoration(
              image: DecorationImage(image: widget.image, fit: BoxFit.cover),
              color: Colors.white,
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10), topRight: Radius.circular(10))),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
          child: Text(
            widget.title,
            style: const TextStyle(
                color: darkColor, fontSize: 15, fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 10, right: 10, left: 10),
          child: Text(
            widget.description,
            style: const TextStyle(color: darkColor, fontSize: 14),
          ),
        ),
      ]),
    );
  }
}
