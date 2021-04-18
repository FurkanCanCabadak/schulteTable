import 'package:flutter/material.dart';

class CategorySelect extends StatefulWidget {
  final String gameType;
  final Widget routeChild;

  const CategorySelect({@required this.gameType, @required this.routeChild});

  @override
  _CategorySelectState createState() => _CategorySelectState();
}

class _CategorySelectState extends State<CategorySelect> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
