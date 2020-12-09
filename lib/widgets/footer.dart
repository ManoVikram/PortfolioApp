import 'package:flutter/material.dart';

import './customAppBar.dart';
import '../myColours.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(18),
      child: Column(
        children: [
          Text(
            "Let's talk.",
            style: TextStyle(
              color: Colors.white,
              fontSize: 28,
            ),
          ),
          OutlineButton(
            onPressed: () {},
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            textColor: Colours.accentColor,
            borderSide: BorderSide(
              color: Colours.accentColor,
            ),
            child: Text("manovik18@gmail.com"),
          ),
          SizedBox(
            height: 20,
          ),
          CustomAppBar(),
          SizedBox(
            height: 10,
          ),
          RichText(
            text: TextSpan(
              text: "Thanks for scrolling. ",
              style: TextStyle(fontWeight: FontWeight.w500),
              children: [
                TextSpan(
                  text: "that's all folks.",
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          RichText(
            text: TextSpan(
              text: "Made with ❤️ by ",
              style: TextStyle(
                color: Colors.deepPurpleAccent,
              ),
              children: [
                TextSpan(
                  text: "Mano Vikram",
                  style: TextStyle(
                    color: Colors.blue[200],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
