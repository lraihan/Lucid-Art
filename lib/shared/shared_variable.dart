import 'package:flutter/material.dart';

Orientation orientation(context) => MediaQuery.of(context).orientation;

double screenWidth(context) => MediaQuery.of(context).size.width;
double screenHeight(context) => MediaQuery.of(context).size.height;

double horizontalPadding(context) =>
    orientation(context) == Orientation.portrait ? screenWidth(context) * .06 : screenWidth(context) * .01;
double verticalPadding(context) =>
    orientation(context) == Orientation.portrait ? screenHeight(context) * .03 : screenHeight(context) * .02;

class Layouter extends StatelessWidget {
  final double? height;
  final double? width;
  final Widget? child;
  const Layouter({super.key, this.height, this.width, this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(border: Border.all()),
      width: width,
      height: height,
      child: child,
    );
  }
}
