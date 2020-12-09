import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../myColours.dart';

class Works extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //   return Container(
    //     height: context.isMobile ? 500 : 300,
    //     padding: EdgeInsets.all(64),
    //     child: Material(
    //       color: Colors.yellowAccent[400],
    //       child: Flex(
    //         direction: context.isMobile ? Axis.vertical : Axis.horizontal,
    //         children: [
    //           RichText(
    //             text: TextSpan(
    //               text: "All Creative Works,",
    //               style: DefaultTextStyle.of(context).style,
    //               children: [
    //                 TextSpan(
    //                   text: "Projects",
    //                   style: TextStyle(color: Colors.indigo),
    //                 ),
    //               ],
    //             ),
    //           ),
    //           SizedBox(
    //             height: 20,
    //           ),
    //           Expanded(
    //             child: SingleChildScrollView(
    //               child: ,
    //             ),
    //           ),
    //         ],
    //       ),
    //     ),
    //   );
    Widget _projectWidget(String title) {
      return title.text.bold.white.xl.wide.center
          .make()
          .box
          .p8
          .roundedLg
          .alignCenter
          .square(200)
          .neumorphic(
            color: Colors.indigo[600],
            elevation: 5.0,
          )
          .make()
          .p32();
    }

    return Container(
      color: Colors.indigo,
      height: 450,
      width: double.infinity,
      padding: EdgeInsets.all(54),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          RichText(
            text: TextSpan(
              text: "My Works,\n",
              style: TextStyle(
                color: Colors.white,
                fontSize: 42,
              ),
              children: [
                TextSpan(
                  text: "Projects.",
                  style: TextStyle(
                    color: Colors.tealAccent,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: VxSwiper(
              enlargeCenterPage: true,
              autoPlay: true,
              enableInfiniteScroll: true,
              autoPlayInterval: Duration(seconds: 2),
              autoPlayAnimationDuration: Duration(seconds: 1),
              viewportFraction: context.screenWidth > 600 ? 0.5 : 0.78,
              items: [
                _projectWidget("TMDB\nApp"),
                _projectWidget("ECommerce\nApp"),
                _projectWidget("Chat App"),
                _projectWidget("Calculator\nApp"),
                _projectWidget("Cooking Recipes\nApp"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
