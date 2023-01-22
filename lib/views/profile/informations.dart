import 'package:flutter/material.dart';
import 'package:sncf_connect/assets/constants.dart';
import 'package:sncf_connect/widgets/account_box.dart';
import 'package:sncf_connect/widgets/help.dart';

class MyInformations extends StatelessWidget {
  const MyInformations({super.key});

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
            'Mes informations',
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
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    top: defaultPadding,
                    right: defaultPadding,
                    left: defaultPadding),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const CircleAvatar(
                          backgroundColor: primaryColor,
                          backgroundImage: AssetImage("assets/pp.jpg"),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "Elias Tourneux",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                              Text("01/02/2002")
                            ],
                          ),
                        )
                      ],
                    ),
                    /*const Icon(
                      Icons.info,
                      color: primaryColor,
                    )*/
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(
                    right: defaultPadding, left: defaultPadding),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: TextEditingController(
                            text: "06 61 53 19 91"), // <-- SEE HERE
                        decoration: const InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 1, color: Colors.black),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 1, color: primaryColor),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          labelText: "Numéro de téléphone",
                        ),
                      ),
                    ),
                    /*const SizedBox(
                      width: 20,
                    ),
                    const Icon(
                      Icons.info,
                      color: primaryColor,
                    )*/
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const AccountBox(
                  title: "Mon adresse e-mail",
                  description: "tourneux@proton.me"),
              const SizedBox(
                height: 10,
              ),
              const AccountBox(
                  title: "Mon lieu de résidence",
                  description: "Nanterre, 92000"),
              const SizedBox(
                height: 10,
              ),
              const AccountBox(
                  title: "Mes études",
                  description:
                      "1ère année du cycle ingénieur, ESILV, La Défense"),
              const SizedBox(
                height: 10,
              ),
              const Help()
            ],
          ),
        ));
  }
}
