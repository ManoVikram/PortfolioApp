import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialAccounts extends StatelessWidget {
  _launchTwitter() async {
    const url = "https://twitter.com/ManoVik18";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw "Couldn't launch twitter";
    }
  }

  _launchInstagram() async {
    const url = "https://www.instagram.com/mano_vikram.18/";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw "Couldn't launch instagram";
    }
  }

  _launchLinkedin() async {
    const url = "https://www.linkedin.com/in/mano-vikram-1398a11b6/";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw "Couldn't launch linkedin";
    }
  }

  _launchQuora() async {
    const url = "https://www.quora.com/profile/Mano-Vikram-1";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw "Couldn't launch quora";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: _launchTwitter,
          child: FaIcon(
            FontAwesomeIcons.twitter,
            color: Colors.white,
          ),
        ),
        SizedBox(
          width: 20,
        ),
        InkWell(
          onTap: _launchLinkedin,
          child: FaIcon(
            FontAwesomeIcons.linkedin,
            color: Colors.white,
          ),
        ),
        SizedBox(
          width: 20,
        ),
        InkWell(
          onTap: _launchInstagram,
          child: FaIcon(
            FontAwesomeIcons.instagram,
            color: Colors.white,
          ),
        ),
        SizedBox(
          width: 20,
        ),
        InkWell(
          onTap: _launchQuora,
          child: FaIcon(
            FontAwesomeIcons.quora,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
