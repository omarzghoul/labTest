import 'package:flutter/material.dart';
import 'package:flutter_application_8/component/Page_builder.dart';
import 'package:flutter_application_8/component/SoundQa.dart';
import 'package:flutter_application_8/component/custom.dart';
import 'package:flutter_application_8/screens/LeasingQuiz.dart';

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
  final PageController controller = PageController();
  int currentPage = 0;
  List<String> questions = [
    'Which is the fastest animal?',
    'Which is the slowest animal?',
    'Which is the longest animal?',
  ];

  List<String> image = [
    'https://upload.wikimedia.org/wikipedia/commons/8/86/Strawberry_%28transparent_background%29.png',
    'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg',
    'https://upload.wikimedia.org/wikipedia/commons/8/86/Strawberry_%28transparent_background%29.png',
    'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(), body: LeasingQuiz());
  }
}
//malek 