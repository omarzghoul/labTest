import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:ionicons/ionicons.dart';

final Uri youtube_url = Uri.parse(
    'https://www.youtube.com/watch?v=77IK9T45kiU&list=PLp22-4PivYmIFAnru_L7fnMhSV5YffLTZ');

Future<void> URL_Function() async {
  if (!await launchUrl(youtube_url)) {
    throw 'Could not launch $youtube_url';
  }
}

class UrlFunction extends StatelessWidget {
  const UrlFunction({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: URL_Function,
      child: ListTile(
        title: Text(
          "from zero to hero ",
          style: TextStyle(fontFamily: "Peralta"),
        ),
        subtitle: Text("Youtube"),
        tileColor: Colors.grey.shade400,
        leading: Icon(Ionicons.logo_youtube),
      ),
    );
  }
}
