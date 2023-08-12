import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:tdd_ca_app/core/usecases/usecase.dart';
import 'package:tdd_ca_app/features/number_Game/domain/entities/number_game.dart';
import 'package:tdd_ca_app/features/number_Game/domain/repositories/number_game_reposiory.dart';
import 'package:tdd_ca_app/features/number_Game/domain/usecases/get_random_number_game.dart';

class MockNumberGameRepository extends Mock implements NumberGameRepository {}

void main() {
  MockNumberGameRepository mockNumberGameRepository =
      MockNumberGameRepository();
  GetRandomNumberGame usecase =
      GetRandomNumberGame(repository: mockNumberGameRepository);
  setUp(() {
    mockNumberGameRepository = MockNumberGameRepository();
    usecase = GetRandomNumberGame(repository: mockNumberGameRepository);
  });

  const tNumberGame = NumberGame(number: 1, text: 'test');

  test('should get trivia for the repository', () async {
    when(mockNumberGameRepository.getRandomNumberGame())
        .thenAnswer((_) async => const Right(tNumberGame));
    final result = await usecase(NoParams());

    expect(result, const Right(tNumberGame));
    verify(mockNumberGameRepository.getRandomNumberGame());
    verifyNoMoreInteractions(mockNumberGameRepository);
  });
}
