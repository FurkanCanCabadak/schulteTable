import 'package:flutter/material.dart';
import 'package:flutter_application_1/Services/game_mode.dart' as gamemodes;
import 'package:flutter_application_1/widgets/number_button.dart';

class GamePage extends StatefulWidget {
  final gamemodes.GameType gameType;
  final String gamemode;
  const GamePage({@required this.gameType, @required this.gamemode});

  @override
  _GamePageState createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(widget.gamemode.toString()),
        ),
        body: GridView.builder(
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 80,
                crossAxisSpacing: 2,
                mainAxisSpacing: 2),
            itemCount: 25,
            itemBuilder: (context, index) {
              return NumberButton();
            }),
      ),
    );
  }
}
