import 'package:flutter/material.dart';
import 'package:flutter_application_1/UI/main_page.dart';

void main() {
  //just call MainPageUI.
  runApp(NumberGame());
}

GlobalKey<NavigatorState> navigatorKey = GlobalKey();

class NumberGame extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPageUI(),
      navigatorKey: navigatorKey,
    );
  }
}
