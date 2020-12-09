import 'package:flutter/material.dart';

import '../myColours.dart';
import '../widgets/header.dart';
import '../widgets/works.dart';
import '../widgets/footer.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colours.primaryColor,
      child: SingleChildScrollView(
        child: Column(
          children: [
            // Header(),
            LayoutBuilder(
              builder: (contxt, constraints) {
                if (constraints.maxWidth > 600) {
                  return HeaderLarge();
                } else {
                  return HeaderSmall();
                }
              },
            ),
            Works(),
            Footer(),
          ],
        ),
      ),
    );
  }
}
