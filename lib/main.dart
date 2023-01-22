import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:sncf_connect/assets/constants.dart';
import 'package:sncf_connect/assets/theme.dart';
import 'package:sncf_connect/views/EnRoute/parcours.dart';
import 'package:sncf_connect/views/account.dart';
import 'package:sncf_connect/views/controller.dart';
import 'package:sncf_connect/views/home.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true,
      backgroundColor: darkColor,
      isToolbarVisible: false,
      builder: (context) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      title: 'SNCF Connect - Candidature Elias',
      theme: sncfConnectTheme(context),
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => const Controller(),
        '/account': (context) => const Account(),
        '/home': (context) => const Home(),
        '/home/parcours': (context) => const MonParcours(),
      },
    );
  }
}
