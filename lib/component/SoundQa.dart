import 'package:flutter/material.dart';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter_application_8/component/AnsAlertDialog.dart';

class SoundQa extends StatefulWidget {
  SoundQa(
      {super.key,
      required this.ans1,
      required this.ans2,
      required this.ans3,
      required this.ans4,
      required this.soundPath});
  String? ans1;
  String? ans2;
  String? ans3;
  String? ans4;
  String? soundPath;

  @override
  State<SoundQa> createState() => _SoundQaState();
}

class _SoundQaState extends State<SoundQa> {
  String groupVal = "";

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Listen and answer",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              ElevatedButton(
                onPressed: () async {
                  final player = AudioPlayer();

                  await player.play(AssetSource('${widget.soundPath}'));
                },
                child: Icon(Icons.play_arrow),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff3D8361)),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          coustmRadioListTile("${widget.ans1}"),
          coustmRadioListTile("${widget.ans2}"),
          coustmRadioListTile("${widget.ans3}"),
          coustmRadioListTile("${widget.ans4}")
        ],
      ),
    );
  }

  Widget coustmRadioListTile(String val) {
    return RadioListTile(
      value: "$val",
      title: Text("$val", style: TextStyle(fontSize: 16)),
      groupValue: groupVal,
      onChanged: (value) {
        setState(() {
          groupVal = value.toString();
          if (val == widget.ans4)
            showDialog1(context);
          else
            showDialog2(context);
        });
      },
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
