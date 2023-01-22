import 'package:flutter/material.dart';
import 'package:sncf_connect/assets/constants.dart';

class AccountBox extends StatelessWidget {
  const AccountBox({super.key, required this.title, required this.description});
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(right: defaultPadding, left: defaultPadding),
      child: Row(children: [
        Expanded(
          child: Container(
              padding: const EdgeInsets.symmetric(
                  vertical: 20, horizontal: defaultPadding),
              width: double.infinity,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: const TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          description,
                          style: const TextStyle(fontSize: 15),
                        )
                      ],
                    ),
                  ),
                  const Icon(
                    Icons.chevron_right_outlined,
                    color: primaryColor,
                  )
                ],
              )),
        ),
        /*const SizedBox(
          width: 20,
        ),
        const Icon(
          Icons.info,
          color: primaryColor,
        )*/
      ]),
    );
  }
}
