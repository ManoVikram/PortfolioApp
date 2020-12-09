import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../myColours.dart';

class Introduction extends StatelessWidget {
  _launchGitHub() async {
    const url = "https://github.com/ManoVikram";
    if (await canLaunch(url)) {
      launch(url);
    } else {
      throw "Couldn't launch GitHub";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          " - Introduction",
          style: TextStyle(
            color: Colors.grey[500],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        "Curious Fanatic\nFlutter Developer"
            .text
            .white
            .xl3
            .maxLines(5)
            .make()
            .w(context.isMobile
                ? context.screenHeight
                : context.screenWidth * 0.4),
        SizedBox(
          height: 20,
        ),
        Align(
          alignment: Alignment.bottomLeft,
          child: RaisedButton(
            onPressed: _launchGitHub,
            elevation: 10,
            padding: EdgeInsets.symmetric(
              vertical: 16,
              horizontal: 12,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.min,
              children: [
                FaIcon(
                  FontAwesomeIcons.github,
                  color: Colors.deepPurple,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "My GitHub",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 1,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ],
            ),
            color: Colours.accentColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            hoverColor: Colors.redAccent,
          ),
        ),
      ],
    );
  }
}
