import 'package:flutter/material.dart';
import 'package:flutter_application_1/Services/game_mode.dart';
import 'package:flutter_application_1/Services/number_services.dart';

class NumberButton extends StatefulWidget {
  final GameType gameType;
  final NumberServices numberServices;
  final int number;
  final Function onClick;

  const NumberButton(
      {@required this.numberServices,
      @required this.gameType,
      @required this.number,
      @required this.onClick});

  @override
  _NumberButtonState createState() => _NumberButtonState();
}

class _NumberButtonState extends State<NumberButton> {
  bool selected;
  @override
  void initState() {
    selected = false;
    super.initState();
  }

  _clickEvent() {
    if (widget.onClick(number: widget.number)) {
      setState(() {
        selected = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text(
        "${widget.number}",
        style: TextStyle(
            fontSize: 9, color: Colors.white, fontWeight: FontWeight.bold),
      ),
      decoration: BoxDecoration(
          color: Colors.amber, borderRadius: BorderRadius.circular(15)),
    );
  }
}
