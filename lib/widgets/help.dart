import 'package:flutter/material.dart';
import 'package:sncf_connect/assets/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class Help extends StatelessWidget {
  const Help({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(defaultPadding),
      child: Container(
        padding: const EdgeInsets.symmetric(
            horizontal: defaultPadding, vertical: defaultPadding),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(children: [
          SizedBox(width: 70, child: Image.asset('assets/help.png')),
          const SizedBox(
            height: 20,
          ),
          const Text("Une question ?",
              style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Colors.black)),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Contactez-moi pour que nous puissions en discuter ensemble",
            style: TextStyle(fontSize: 17),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
                onPressed: () async {
                  await launchUrl(Uri.parse("mailto:tourneux@proton.me"));
                },
                style: ButtonStyle(
                    overlayColor: MaterialStateProperty.all<Color>(
                        primaryColor.withOpacity(0.1)),
                    elevation: MaterialStateProperty.all(0),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25.0),
                            side: const BorderSide(color: primaryColor)))),
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: const Text(
                    'Lancer la conversation',
                    style: TextStyle(fontSize: 17, color: primaryColor),
                  ),
                )),
          )
        ]),
      ),
    );
  }
}
