import 'package:flutter/material.dart';
import 'package:flutter_application_1/Services/game_mode.dart';
import 'package:flutter_application_1/Services/number_services.dart';
import 'package:flutter_application_1/widgets/number_button.dart';

class GamePage extends StatefulWidget {
  final GameType gameType;
  const GamePage({
    @required this.gameType,
  });

  @override
  _GamePageState createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  NumberServices numberServices = NumberServices();

  @override
  void initState() {
    numberServices = new NumberServices()..random_numbers;
    if (widget.gameType == GameType.ClassicLightReverse ||
        widget.gameType == GameType.ClassicOriginalReverse)
      numberServices.selected_number = ValueNotifier([26]);
    else
      numberServices.selected_number = ValueNotifier([0]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.gameType.toString()),
        leading: BackButton(
            onPressed: () => {
                  Navigator.pop(context),
                }),
      ),
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 80, crossAxisSpacing: 2, mainAxisSpacing: 2),
          itemCount: 25,
          itemBuilder: (context, index) {
            return NumberButton(
              number: numberServices.random_numbers[index],
              onClick: numberServices.typeofNumber(widget.gameType),
              gameType: widget.gameType,
              numberServices: numberServices,
            );
          }),
    );
  }
}
