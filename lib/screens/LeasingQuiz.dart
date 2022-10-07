import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_8/component/Page_builder.dart';
import 'package:flutter_application_8/component/SoundQa.dart';

class LeasingQuiz extends StatefulWidget {
  LeasingQuiz({super.key});

  @override
  State<LeasingQuiz> createState() => _LeasingQuizState();
}

class _LeasingQuizState extends State<LeasingQuiz> {
  final PageController controller = PageController();

  List<String> questions = ["qa1", "sdds", "sdsd"];

  int currentPage = 0;

  List<String> sounds = ["1.mp3"];

  List<String> ans1 = ["ans1.1", "ans2.1", "ans3.1"];

  List<String> ans2 = ["ans1.2", "ans2.2", "ans3.2"];

  List<String> ans3 = ["ans1.3", "ans2.3", "ans3.3"];

  List<String> ans4 = ["ans1.4", "ans2.4", "ans3.4"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Page_bulider(
          itemBuilder: (context, index) {
            if (index == questions?.length) {
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
              soundPath: "1.mp3",
            );
          },
          ontap: () {
            if (currentPage == questions.length) return;
            setState(() {
              controller.jumpToPage(++currentPage);
            });

            print(currentPage);
          },
          controller: controller,
          questions: questions,
        ),
      ),
    );
  }
}
