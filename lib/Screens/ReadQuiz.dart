import 'package:flutter/material.dart';
import 'package:myapp/Screens/Home.dart';

import 'package:myapp/component/Readcomp.dart';

class Reading extends StatefulWidget {
  const Reading({super.key});
  @override
  State<Reading> createState() => _ReadingState();
}

class _ReadingState extends State<Reading> {
  final PageController controller = PageController();
  int currentPage = 0;
  List<String> questions = [
    '1- What is the opposite of Tall?',
    '2- Complete the sentence, I am going to ?',
    '3- Complete the sentence, Where do live a lot of people ?',
    '4- what is the opposite of Tiny ?',
    '5- what is the second meaning of Car',
    '6- what is the synonym of Happy?',
    '7- What is the synonym of Beautiful ?',
    '8- What is the synonym of Brave?',
    '9- How many english characters ?',
    "10- How many arabic characters ?"
  ];
  List<String> answer1 = [
    ' A) Big',
    ' A) Brain',
    ' A) Ship',
    ' A) Huge',
    ' A) Road',
    ' A) Sad',
    ' A) Ugly',
    ' A) Fear',
    ' A) 29 characters',
    ' A) 31 characters'
  ];
  List<String> answer2 = [
    ' B) Fat',
    ' B) Behind',
    ' B) Airport',
    ' B) Short',
    ' B) Train',
    ' B) Exhausted',
    ' B) Disgust',
    ' B) Cower',
    ' B) 30 characters',
    ' B) 25 characters'
  ];
  List<String> answer3 = [
    ' C) Thin',
    ' C) Century',
    ' C) Sea',
    ' C) Tall',
    ' C) Street',
    ' C) Bad',
    ' C) Bad',
    ' C) Worry',
    ' C) 25 characters',
    ' C) 29 characters'
  ];
  List<String> answer4 = [
    ' D) Short',
    ' D) School',
    ' D) City',
    ' D) Fat',
    ' D) Vehicle',
    ' D) Cheerful',
    ' D) Handsome',
    ' D) Adventurous',
    ' D) 26 characters',
    ' D) 28 characters'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(255, 172, 2, 55),
          title: const Text(
            "English for begginers",
            style: TextStyle(color: Color.fromARGB(255, 13, 81, 136)),
          ),
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context, MaterialPageRoute(
                  builder: (context) {
                    return home();
                  },
                ));
              },
              icon: const Icon(
                Icons.home,
                color: Color.fromARGB(255, 13, 81, 136),
              )),
        ),
        body: SafeArea(
          child: Container(
            color: Colors.grey.shade200,
            child: Column(
              children: [
                Expanded(
                  child: PageView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    controller: controller,
                    scrollDirection: Axis.vertical,
                    itemCount: questions.length + 1,
                    itemBuilder: (context, index) {
                      if (index == questions.length) {
                        return Container(
                          color: const Color.fromARGB(255, 248, 247, 246),
                          child: Column(children: [
                            const SizedBox(
                              height: 130,
                            ),
                            Container(
                                width: double.infinity,
                                height: 300,
                                decoration: const BoxDecoration(
                                    image: DecorationImage(
                                        fit: BoxFit.fitHeight,
                                        image: AssetImage("images/R.png")))),
                            const SizedBox(
                              height: 50,
                            ),
                            const Text(
                              "Thank you to use This App",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: "Peralta",
                                  color: Color.fromARGB(255, 13, 81, 136)),
                            )
                          ]),
                        );
                      }
                      return custom(
                        answer1: "${answer1[currentPage]}",
                        answer2: "${answer2[currentPage]}",
                        answer3: "${answer3[currentPage]}",
                        answer4: "${answer4[currentPage]}",
                        question: "${questions[currentPage]}",
                      );
                    },
                  ),
                ),
                TextButton(
                  onPressed: () {
                    if (currentPage == questions.length) return;
                    controller.jumpToPage(++currentPage);
                  },
                  child: const Text(
                    'Next',
                    style: TextStyle(fontSize: 20, fontFamily: "Lobster"),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
