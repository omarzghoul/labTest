import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:myapp/component/AnsAlertDialog.dart';

class custom extends StatelessWidget {
  custom(
      {required this.URL1,
      required this.URL2,
      required this.URL3,
      required this.URL4,
      required this.question});
  Color def = Colors.grey.shade200;

  String? URL1;
  String? URL2;
  String? URL3;
  String? URL4;
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
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: "Peralta",
                    color: Colors.yellowAccent),
              ),
              width: double.infinity,
              height: 150,
              decoration: BoxDecoration(
                  color: Colors.deepPurple.shade300,
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                  boxShadow: [
                    BoxShadow(
                        spreadRadius: 1, blurRadius: 15, offset: Offset(4, 4))
                  ]),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Expanded(
            child: GridView.count(crossAxisCount: 2, children: [
              GestureDetector(
                  onTap: () {
                    showDialog2(context);
                  },
                  child: Container(
                    child: Image.asset(
                      "${URL1}",
                      width: 150,
                      height: 150,
                    ),
                    color: def,
                  )),
              GestureDetector(
                  onTap: () {
                    showDialog2(context);
                  },
                  child: Container(
                    child: Image.asset(
                      "${URL2}",
                      width: 150,
                      height: 150,
                    ),
                    color: def,
                  )),
              GestureDetector(
                  onTap: () {
                    showDialog2(context);
                  },
                  child: Container(
                    child: Image.asset(
                      "${URL3}",
                      width: 150,
                      height: 150,
                    ),
                    color: def,
                  )),
              GestureDetector(
                  onTap: () {
                    showDialog1(context);
                  },
                  child: Container(
                    child: Image.asset(
                      "${URL4}",
                      width: 150,
                      height: 150,
                    ),
                    color: def,
                  )),
            ]),
          ),
        ],
      ),
    );
  }

  void showDialog1(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AnsAlertDialog(
            massage: "Awesome ... good for you , keep practicing,",
            colorIcon: Colors.green,
            colorText: Colors.green,
            icon: Icons.done);
      },
    );
  }

  void showDialog2(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AnsAlertDialog(
            massage: "Sorry , it is wrong answer ... try again ",
            colorIcon: Colors.red,
            colorText: Colors.red,
            icon: Icons.close);
      },
    );
  }
}
