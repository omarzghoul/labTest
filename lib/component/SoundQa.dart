import 'package:flutter/material.dart';

import 'package:audioplayers/audioplayers.dart';

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
    return Column(
      children: [
        ElevatedButton(
            onPressed: () async {
              final player = AudioPlayer();

              await player.play(AssetSource('${widget.soundPath}'));
            },
            child: Icon(Icons.play_arrow)),
        coustmRadioListTile("${widget.ans1}"),
        coustmRadioListTile("${widget.ans2}"),
        coustmRadioListTile("${widget.ans3}"),
        coustmRadioListTile("${widget.ans4}")
      ],
    );
  }

  Widget coustmRadioListTile(String val) {
    return RadioListTile(
      value: "$val",
      title: Text("$val"),
      groupValue: groupVal,
      onChanged: (value) {
        setState(() {
          groupVal = value.toString();
          if (val == widget.ans4)
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  actions: [
                    Container(
                      child: Text("Ss"),
                      color: Colors.black,
                      width: 200,
                      height: 200,
                    )
                  ],
                );
              },
            );
        });
      },
    );
  }
}
