import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/Services/game_mode.dart';

class NumberServices {
  // ignore: non_constant_identifier_names
  List<int> random_numbers;
  // ignore: non_constant_identifier_names
  ValueNotifier<List<int>> selected_number;

  List<int> randomNumbers() {
    random_numbers = [];
    for (int i = 1; i <= 25; i++) {
      random_numbers.add(i);
    }
    print(random_numbers);
    random_numbers.shuffle();
    return random_numbers;
  }

  bool queryofNumberController({int number}) {
    if (selected_number.value.last + 1 == number) {
      selected_number.value = List.from(selected_number.value)..add(number);
      return true;
    } else
      return false;
  }

  bool queryofNumberControllerReverse({int number}) {
    if (selected_number.value.last - 1 == number) {
      selected_number.value = List.from(selected_number.value)..add(number);
      return true;
    } else
      return false;
  }

  Function typeofNumber(GameType gameType) {
    if (gameType == GameType.ClassicOriginal ||
        gameType == GameType.ClassicLight ||
        gameType == GameType.Memory ||
        gameType == GameType.Reaction)
      return queryofNumberController;
    else
      return queryofNumberControllerReverse;
  }
}
