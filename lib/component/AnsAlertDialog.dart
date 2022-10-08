import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AnsAlertDialog extends StatelessWidget {
  AnsAlertDialog(
      {super.key,
      required this.massage,
      required this.colorText,
      required this.colorIcon,
      required this.icon});
  String? massage;
  Color? colorIcon;
  Color? colorText;
  IconData? icon;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      icon: Icon(icon, color: colorIcon),
      title: Text(
        "$massage",
        style: TextStyle(
            fontSize: 20, fontFamily: "Lobster", color: colorText),
      ),
    );
  }

 
}

