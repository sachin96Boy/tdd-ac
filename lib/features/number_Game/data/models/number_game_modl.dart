import 'package:tdd_ca_app/features/number_Game/domain/entities/number_game.dart';

class NumberGameModel extends NumberGame {
  const NumberGameModel({required String text, required int number})
      : super(text: text, number: number);

  factory NumberGameModel.fromJSON(Map<String, dynamic> json) {
    return NumberGameModel(
        text: json['text'], number: (json['number'] as num).toInt());
  }

  Map<String, dynamic> toJSON() {
    return {"text": text, "number": number};
  }
}
