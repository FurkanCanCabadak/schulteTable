import 'package:flutter/material.dart';
import 'package:flutter_application_1/Services/game_mode.dart';
import 'package:flutter_application_1/widgets/number_button.dart';

class GamePage extends StatefulWidget {
  final GameType gameType;

  const GamePage({@required this.gameType});

  @override
  _GamePageState createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.gameType.toString()),
      ),
      body: Container(
        child: GridView.builder(
          // ignore: missing_required_param
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              crossAxisSpacing: 2, mainAxisSpacing: 2),

          itemCount: 25,
          itemBuilder: (context, index) {
            return NumberButton();
          },
        ),
      ),
    );
  }
}
