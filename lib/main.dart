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
    'Which of these shapes belongs to the boy ?',
    'Which of these Picturs is Orange fruit ?',
    'Which of these picturs is Circul ?',
    'Which of these picturs is Phone ?',
    'Which of these shapes belongs to Sun?',
    'Which of these Picturs is Teacher ?',
    'Which of these picturs is Cat ?',
    'Which of these picturs is Car?',
    'What is of these palces is Mosque ?',
    "what is the correct time .. Ten o'clock ?"
  ];

  List<String> image = [
    'images/1.png',
    'images/5.png',
    'images/9.png',
    'images/13.png',
    'images/17.webp',
    'images/21.webp',
    'images/25.webp',
    'images/29.webp',
    'images/33.webp',
    'images/37.png'
  ];
  List<String> image1 = [
    'images/2.png',
    'images/6.png',
    'images/10.jpg',
    'images/14.png',
    'images/18.webp',
    'images/22.png',
    'images/26.webp',
    'images/30.webp',
    'images/34.webp',
    'images/38.png'
  ];
  List<String> image2 = [
    'images/3.png',
    'images/7.webp',
    'images/11.png',
    'images/15.png',
    'images/19.webp',
    'images/23.webp',
    'images/27.webp',
    'images/31.webp',
    'images/35.png',
    'images/39.png'
  ];
  List<String> image3 = [
    'images/4.png',
    'images/8.webp',
    'images/12.png',
    'images/16.png',
    'images/20.webp',
    'images/24.png',
    'images/28.webp',
    'images/32.png',
    'images/36.webp',
    'images/40.jpg'
  ];

  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple.shade100,
          title: Text(
            "English for begginers",
            style: TextStyle(color: Color.fromARGB(255, 13, 81, 136)),
          ),
          leading: IconButton(
              onPressed: () {},
              icon: Icon(
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
                          color: Colors.amber.shade300,
                          child: Column(children: [
                            Container(
                              alignment: Alignment.topCenter,
                              child: ElevatedButton.icon(
                                  onPressed: () {},
                                  icon: Icon(Icons.info),
                                  label: Text("information")),
                            ),
                            Text(
                              "- Boy: it is a noun : A boy is a child who will grow up to be a man.",
                              style: TextStyle(fontSize: 20),
                            ),
                            Text(
                                "Synonyms: lad, kid [informal], youth, fellow [old-fashioned] ",
                                style: TextStyle(fontSize: 20)),
                            Text(
                                "-Fruit or a fruit is something which grows on a tree or bush and which contains seeds or a stone covered by a substance that you can eat.",
                                style: TextStyle(fontSize: 20)),
                            Text(
                                "- shape of an object, a person, or an area is the appearance of their outside edges or surfaces, for example whether they are round, square, curved, or fat.",
                                style: TextStyle(fontSize: 20)),
                            Text(
                                "- An animal is a living creature such as a dog, lion, or rabbit, rather than a bird, fish, insect, or human being.",
                                style: TextStyle(fontSize: 20)),
                            Text(
                                "- A planet is a large, round object in space that moves around a star. The Earth is a planet.",
                                style: TextStyle(fontSize: 20)),
                            Text(
                                "- A building is a structure that has a roof and walls, for example a house or a School.",
                                style: TextStyle(fontSize: 20)),
                            Text(
                                "- Transport refers to any vehicle that you can travel in or carry goods in.",
                                style: TextStyle(fontSize: 20)),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              "Thank you to use This App",
                              style: TextStyle(
                                  fontSize: 20, fontFamily: "Peralta"),
                            )
                          ]),
                        );
                      }
                      return custom(
                        URL1: "${image[currentPage]}",
                        URL2: "${image1[currentPage]}",
                        URL3: "${image2[currentPage]}",
                        URL4: "${image3[currentPage]}",
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
                  child: Text(
                    'Next',
                    style: TextStyle(fontSize: 20, fontFamily: "Peralta"),
                  ),
                )
              ],
            ),
          ),
        ));
=======
    return Scaffold(appBar: AppBar(), body: LeasingQuiz());
>>>>>>> 0e8c88cc345dcf1241b8db25f97ed461738fcb76
  }
}
