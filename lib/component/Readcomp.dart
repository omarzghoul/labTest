import 'package:flutter/material.dart';

class custom extends StatelessWidget {
  custom(
      {required this.answer1,
      required this.answer2,
      required this.answer3,
      required this.answer4,
      required this.question});
  Color def = const Color.fromARGB(255, 51, 4, 240);

  String? answer1;
  String? answer2;
  String? answer3;
  String? answer4;
  String? question;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              alignment: Alignment.center,
              child: Text(
                "$question",
                style: const TextStyle(
                    fontSize: 30,
                    fontFamily: "BungeeSpice",
                    color: Colors.yellowAccent),
              ),
              width: double.infinity,
              height: 150,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Expanded(
            child: ListView(children: [
              GestureDetector(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return const AlertDialog(
                          icon: Icon(Icons.close, color: Colors.red),
                          title: Text(
                            "Sorry , it is wrong answer ... try again ",
                            style: TextStyle(
                                fontSize: 25,
                                fontFamily: "Lobster",
                                color: Colors.redAccent),
                          ),
                        );
                      },
                    );
                  },
                  child: Text(
                    "${answer1}",
                    style: const TextStyle(
                        fontFamily: "BungeeSpice", fontSize: 20),
                  )),
              const SizedBox(
                height: 10,
              ),
              GestureDetector(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return const AlertDialog(
                          icon: Icon(Icons.close, color: Colors.red),
                          title: Text(
                            "Sorry , it is wrong answer ... try again ",
                            style: TextStyle(
                                fontSize: 25,
                                fontFamily: "Lobster",
                                color: Colors.redAccent),
                          ),
                        );
                      },
                    );
                  },
                  child: Text("${answer2}",
                      style: const TextStyle(
                          fontFamily: "BungeeSpice", fontSize: 20))),
              const SizedBox(
                height: 10,
              ),
              GestureDetector(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return const AlertDialog(
                          icon: Icon(
                            Icons.close,
                            color: Colors.red,
                          ),
                          title: Text(
                              "Sorry , it is wrong answer ... try again  ",
                              style: TextStyle(
                                  fontSize: 25,
                                  fontFamily: "Lobster",
                                  color: Colors.redAccent)),
                        );
                      },
                    );
                  },
                  child: Text("${answer3}",
                      style: const TextStyle(
                          fontFamily: "BungeeSpice", fontSize: 20))),
              const SizedBox(
                height: 10,
              ),
              GestureDetector(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return const AlertDialog(
                          icon: Icon(
                            Icons.done,
                            color: Colors.green,
                          ),
                          title: Text(
                              "Awesome ... good for you , keep practicing,",
                              style: TextStyle(
                                  fontSize: 25,
                                  fontFamily: "Lobster",
                                  color: Colors.green)),
                        );
                      },
                    );
                  },
                  child: Text("${answer4}",
                      style: const TextStyle(
                          fontFamily: "BungeeSpice", fontSize: 20))),
              const SizedBox(
                height: 30,
              ),
              Container(
                  width: double.infinity,
                  height: 300,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.fitHeight,
                          image: AssetImage("images/pic.jpg"))))
            ]),
          ),
        ],
      ),
    );
  }
}
