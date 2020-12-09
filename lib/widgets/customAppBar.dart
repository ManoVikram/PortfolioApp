import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

import '../myColours.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Icon(
      AntDesign.codesquare,
      size: 50,
      color: Colours.accentColor,
    );
  }
}
