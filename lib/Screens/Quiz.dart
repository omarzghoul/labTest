import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  bool onTab1 = false;
  bool onTab2 = false;
  bool onTab3 = false;
  bool onTab4 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple.shade300,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Text(
                "What of these picture is Apple ?",
                style: TextStyle(fontSize: 20),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      onTab1 = onTab1!;
                    });
                  },
                  child: Card(
                      color: onTab1 ? Colors.blue : Colors.red,
                      child: Image(
                          width: 150,
                          height: 150,
                          image: NetworkImage(
                              "https://cdn.pixabay.com/photo/2013/07/13/11/34/apple-158419_1280.png"))),
                ),
                Padding(padding: EdgeInsets.all(20)),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      onTab2 = !onTab2;
                    });
                  },
                  child: Card(
                      color: onTab2 ? Colors.blue : Colors.red,
                      child: Image(
                          width: 150,
                          height: 150,
                          image: NetworkImage(
                              "https://cdn.pixabay.com/photo/2013/07/13/11/34/apple-158419_1280.png"))),
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      onTab3 = !onTab3;
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog();
                        },
                      );
                    });
                  },
                  child: Card(
                      color: onTab3 ? Colors.blue : Colors.red,
                      child: Image(
                          width: 150,
                          height: 150,
                          image: NetworkImage(
                              "https://cdn.pixabay.com/photo/2013/07/13/11/34/apple-158419_1280.png"))),
                ),
                Padding(padding: EdgeInsets.all(20)),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      onTab4 = !onTab4;
                    });
                  },
                  child: Card(
                      color: onTab4 ? Colors.blue : Colors.red,
                      child: Image(
                          width: 150,
                          height: 150,
                          image: NetworkImage(
                              "https://cdn.pixabay.com/photo/2013/07/13/11/34/apple-158419_1280.png"))),
                ),
              ],
            )
          ],
        ));
    ;
  }
}
