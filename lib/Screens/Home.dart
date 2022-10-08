import 'package:flutter/material.dart';
import 'package:myapp/Screens/ImageQuiz.dart';
import 'package:myapp/Screens/LeasingQuiz.dart';
import 'package:myapp/comp/url.dart';
import 'package:url_launcher/url_launcher.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Learn English",
          style: TextStyle(
              fontFamily: "Peralta", fontSize: 28, color: Colors.black),
          textAlign: TextAlign.center,
        ),
        backgroundColor: Colors.deepPurple.shade100,
      ),
      drawer: Drawer(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(children: [
            CircleAvatar(
              backgroundImage: AssetImage("images/welcomepicture.jpg"),
              radius: 170,
            ),
            Text(
              "You can see link below if you want to improve your english:",
              style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 17,
                  fontFamily: "Peralta"),
            ),
            UrlFunction()
          ]),
        ),
      ),
      body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/giphy.gif"), fit: BoxFit.fill)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.deepPurple.shade400),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return ImageQuzi();
                      },
                    ));
                  },
                  icon: Icon(
                    Icons.image,
                    color: Colors.black,
                  ),
                  label: Text(
                    "Image Test",
                    style:
                        TextStyle(color: Colors.black, fontFamily: "Peralta"),
                  )),
              ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.deepPurple.shade400),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return LeasingQuiz();
                      },
                    ));
                  },
                  icon: Icon(
                    Icons.audio_file,
                    color: Colors.black,
                  ),
                  label: Text(
                    "listening Practice",
                    style:
                        TextStyle(color: Colors.black, fontFamily: "Peralta"),
                  )),
              ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.deepPurple.shade400),
                  onPressed: () {
                    // Navigator.push(context, MaterialPageRoute(
                    //   builder: (context) {
                    //     return;
                    //   },
                    // ));
                  },
                  icon: Icon(
                    Icons.abc,
                    color: Colors.black,
                  ),
                  label: Text(
                    "Vocabulary Practice",
                    style:
                        TextStyle(color: Colors.black, fontFamily: "Peralta"),
                  ))
            ],
          )),
    );
  }
}
