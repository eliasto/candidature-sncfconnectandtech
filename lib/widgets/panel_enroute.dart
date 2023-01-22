import 'package:flutter/material.dart';
import 'package:sncf_connect/assets/constants.dart';

class PanelEnRoute extends StatelessWidget {
  const PanelEnRoute({
    super.key,
    required this.title,
    required this.description,
    required this.icon,
    required this.foreground,
    required this.background,
  });
  final String title;
  final String description;
  final IconData icon;
  final Color foreground;
  final Color background;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          right: defaultPadding, left: defaultPadding, bottom: 10),
      child: Container(
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(10))),
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  color: background,
                  borderRadius: const BorderRadius.all(Radius.circular(5))),
              child: Icon(icon, color: foreground, size: 30),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                        fontWeight: FontWeight.w900, fontSize: 16),
                  ),
                  Text(
                    description,
                    style: const TextStyle(fontSize: 15),
                  )
                ],
              ),
            ),
            const Expanded(
              child: Align(
                alignment: Alignment.centerRight,
                child: Icon(Icons.chevron_right_outlined,
                    color: primaryColor, size: 25),
              ),
            )
          ],
        ),
      ),
    );
  }
}
