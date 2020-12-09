import 'dart:math';

import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import './customAppBar.dart';
import './socialAccounts.dart';
import './introduction.dart';
import '../myColours.dart';

class HeaderLarge extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Container(
        child: Column(
          children: [
            Stack(
              children: [
                /* Transform(
                  transform: Matrix4.rotationZ(99.9),
                  alignment: Alignment.center,
                  child: AspectRatio(
                    aspectRatio: 4 / 3,
                    child: Image.asset(
                      "lib/assets/images/ManoVikram_Outline.png",
                      fit: BoxFit.cover,
                      height: size.height * 0.6,
                    ),
                  ),
                ), */
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: size.width * 0.1,
                        vertical: 32,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomAppBar().shimmer(
                            primaryColor: Colours.accentColor,
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          // Text(
                          //   "Mano\nVikram",
                          //   style: TextStyle(
                          //     color: Colors.white,
                          //     fontSize: 54,
                          //     fontWeight: FontWeight.bold,
                          //     height: 1,
                          //   ),
                          // ),
                          "Mano\nVikram"
                              .text
                              .white
                              .xl6
                              .bold
                              .lineHeight(1)
                              .size(context.isMobile ? 15 : 20)
                              .make()
                              .shimmer(),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            color: Colours.accentColor,
                            height: 10,
                            width: 60,
                          ).shimmer(primaryColor: Colours.accentColor),
                          SizedBox(
                            height: 30,
                          ),
                          SocialAccounts(),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Introduction(),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class HeaderSmall extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Container(
        color: Colours.secondaryColor,
        child: Column(
          children: [
            Container(
              child: Stack(
                children: [
                  /* Transform(
                    transform: Matrix4.rotationZ(99.9),
                    alignment: Alignment.center,
                    child: AspectRatio(
                      aspectRatio: 4 / 3,
                      child: Image.asset(
                        "lib/assets/images/ManoVikram_Outline.png",
                        fit: BoxFit.cover,
                        height: size.height * 0.6,
                      ),
                    ),
                  ), */
                  Transform.rotate(
                    angle: pi / 180 * (-50),
                    alignment: Alignment.centerRight,
                    child: Image.asset(
                      "lib/assets/images/ManoVikram_Signature_RemoveBG.png",
                      color: Colors.white,
                      fit: BoxFit.cover,
                      height: 280,
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: size.width * 0.1,
                          vertical: 32,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomAppBar().shimmer(
                              primaryColor: Colours.accentColor,
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            // Text(
                            //   "Mano\nVikram",
                            //   style: TextStyle(
                            //     color: Colors.white,
                            //     fontSize: 54,
                            //     fontWeight: FontWeight.bold,
                            //     height: 1,
                            //   ),
                            // ),
                            "Mano\nVikram"
                                .text
                                .white
                                .xl6
                                .bold
                                .lineHeight(1)
                                .size(context.isMobile ? 15 : 20)
                                .make()
                                .shimmer(),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              color: Colours.accentColor,
                              height: 10,
                              width: 60,
                            ).shimmer(primaryColor: Colours.accentColor),
                            SizedBox(
                              height: 30,
                            ),
                            SocialAccounts(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Introduction(),
            ),
          ],
        ),
      ),
    );
  }
}
