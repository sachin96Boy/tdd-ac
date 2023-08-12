import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:tdd_ca_app/features/number_Game/data/models/number_game_modl.dart';
import 'package:tdd_ca_app/features/number_Game/domain/entities/number_game.dart';

import '../../../../fixtures/fixture_reader.dart';

void main() {
  const tNumberGameModel = NumberGameModel(number: 1, text: 'test');

  test('should be a sub class of NumberGameEntity', () async {
    expect(tNumberGameModel, isA<NumberGame>());
  });

  group('fromJSON', () {
    test('should return valid model when JSON number is Integer', () async {
      final Map<String, dynamic> jsonMap = json.decode(fixture('trivia.json'));
      final result = NumberGameModel.fromJSON(jsonMap);
      expect(result, tNumberGameModel);
    });
    test('should return valid model when JSON number is regarded as a double',
        () async {
      final Map<String, dynamic> jsonMap =
          json.decode(fixture('trivia_double.json'));
      final result = NumberGameModel.fromJSON(jsonMap);
      expect(result, tNumberGameModel);
    });
  });

  group('toJSON', () {
    test('should return a JSONmap containing the proper data', () {
      final Map<String, dynamic> results = tNumberGameModel.toJSON();

      final expectedMap = {"text": "test test", "number": 1};
      expect(results, expectedMap);
    });
  });
}
