import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget largeScreen;
  final Widget mediumScreen;
  final Widget smallScreen;

  const Responsive({
    required Key key,
    required this.largeScreen,
    required this.mediumScreen,
    required this.smallScreen,
  }) : super(key: key);

  static bool isSmallScreen(BuildContext context) {
    return MediaQuery.of(context).size.width < 600;
  }

  static bool isMediumScreen(BuildContext context) {
    return MediaQuery.of(context).size.width >= 600 &&
        MediaQuery.of(context).size.width < 1200;
  }

  static bool isLargeScreen(BuildContext context) {
    return MediaQuery.of(context).size.width >= 1200;
  }

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation) {
        if (isLargeScreen(context) && orientation == Orientation.landscape) {
          return largeScreen;
        } else if (isLargeScreen(context) && orientation == Orientation.portrait) {
          return largeScreen; // You can customize the layout for portrait mode if needed
        } else if (isMediumScreen(context)) {
          return mediumScreen;
        } else {
          return smallScreen;
        }
      },
    );
  }
}
