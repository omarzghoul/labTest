import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:myapp/component/Page_builder.dart';
import 'package:myapp/component/SoundQa.dart';
import 'package:myapp/screens/Home.dart';

class LeasingQuiz extends StatefulWidget {
  LeasingQuiz({super.key});

  @override
  State<LeasingQuiz> createState() => _LeasingQuizState();
}

class _LeasingQuizState extends State<LeasingQuiz> {
  final PageController controller = PageController();

  int currentPage = 0;

  List<String> sounds = [
    "Q1.mp3",
    "Q2.mp3",
    "Q3.mp3",
    "Q4.mp3",
    "Q5.mp3",
    "Q6.mp3",
    "Q7.mp3"
  ];

  List<String> ans1 = ["Brain", "Ship", "Huge", "Road", "Ugly", "Fear", "Sad"];

  List<String> ans2 = [
    "Behind",
    "Airport",
    "Fat",
    "Train",
    "Disgust",
    "Cower",
    "Cheerful"
  ];

  List<String> ans3 = [
    "Century",
    "Sea",
    "Tall",
    "Street",
    "Bad",
    "Worry",
    "Bad"
  ];

  List<String> ans4 = [
    "School",
    "City",
    "Short",
    "Vehicle",
    "Handsome",
    "Adventurous",
    "exhausted"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEEF2E6),
      appBar: AppBar(
        title: Center(child: Text("LeasingQuiz")),
        backgroundColor: Color(0xff1C6758),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context, MaterialPageRoute(
                builder: (context) {
                  return home();
                },
              ));
            },
            icon: Icon(
              Icons.home,
              color: Colors.white,
            )),
      ),
      body: SafeArea(
        child: Page_bulider(
          itemBuilder: (context, index) {
            if (index == sounds?.length) {
              return Container(
                child: Text(""),
                color: Colors.amber,
              );
            }
            return SoundQa(
              ans1: "${ans1[currentPage]}",
              ans2: "${ans2[currentPage]}",
              ans3: "${ans3[currentPage]}",
              ans4: "${ans4[currentPage]}",
              soundPath: "${sounds[currentPage]}",
            );
          },
          ontap: () {
            if (currentPage == sounds.length) return;
            setState(() {
              controller.jumpToPage(++currentPage);
            });

            print(currentPage);
          },
          controller: controller,
          questions: sounds,
        ),
      ),
    );
  }
}
