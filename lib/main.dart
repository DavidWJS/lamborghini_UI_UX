import 'package:flutter/material.dart';
import 'package:lamborghini/Screens/Home.dart';

void main() => runApp(new MaterialApp(
  builder: (context, child) {
    return ScrollConfiguration(
      behavior: MyBehavior(),
      child: child,
    );
  },
  debugShowCheckedModeBanner: false,
  home: Home(),
));

class MyBehavior extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}