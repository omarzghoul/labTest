import 'package:flutter/material.dart';
import 'package:flutter_application_8/component/Page_builder.dart';
import 'package:flutter_application_8/component/SoundQa.dart';
import 'package:flutter_application_8/component/custom.dart';
import 'package:flutter_application_8/screens/ImageQuiz.dart';
import 'package:flutter_application_8/screens/ListeningQuiz.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
 

  @override
  Widget build(BuildContext context) {
    return LeasingQuiz();
  }
}
