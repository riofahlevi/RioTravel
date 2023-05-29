import 'package:flutter/material.dart';
import 'package:travelapp_bwa/ui/pages/splash_pages.dart';
// ignore: unused_import
import 'ui/pages/get_started_pages.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashPage(),
      // routes: {
      //   '/': (context) => SplashPage(),
      //   '/get-started': (context) => GetStartedPage(),
      // },
    );
  }
}
