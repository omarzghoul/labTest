import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class custom extends StatelessWidget {
  custom({
    required this.URL1,
    required this.URL2,
    required this.URL3,
    required this.URL4,
  });
  Color def = Colors.white;

  String? URL1;
  String? URL2;
  String? URL3;
  String? URL4;
  

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Text(
            "data",
            style: TextStyle(fontSize: 30),
          ),
          Expanded(
            child: GridView.count(crossAxisCount: 2, children: [
              GestureDetector(
                  onTap: () {},
                  child: Container(
                    child: Image.network(
                      "$URL1",
                      width: 150,
                      height: 150,
                    ),
                    color: def,
                  )),
              GestureDetector(
                  onTap: () {},
                  child: Container(
                    child: Image.network(
                      "$URL2",
                      width: 150,
                      height: 150,
                    ),
                    color: def,
                  )),
              GestureDetector(
                  onTap: () {},
                  child: Container(
                    child: Image.network(
                      "$URL3",
                      width: 150,
                      height: 150,
                    ),
                    color: def,
                  )),
              GestureDetector(
                  onTap: () {},
                  child: Container(
                    child: Image.network(
                      "$URL4",
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
}
