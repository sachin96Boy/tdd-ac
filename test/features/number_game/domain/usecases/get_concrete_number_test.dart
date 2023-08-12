import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:tdd_ca_app/features/number_Game/domain/entities/number_game.dart';
import 'package:tdd_ca_app/features/number_Game/domain/repositories/number_game_reposiory.dart';
import 'package:tdd_ca_app/features/number_Game/domain/usecases/get_concete_number_game.dart';

class MockNumberGameRepository extends Mock implements NumberGameRepository {}

void main() {
  MockNumberGameRepository mockNumberGameRepository =
      MockNumberGameRepository();
  GetConcreteNumberGame usecase =
      GetConcreteNumberGame(repository: mockNumberGameRepository);
  setUp(() {
    mockNumberGameRepository = MockNumberGameRepository();
    usecase = GetConcreteNumberGame(repository: mockNumberGameRepository);
  });

  const tNumber = 1;
  const tNumberGame = NumberGame(text: 'test', number: tNumber);

  test('should get trivia for the number from the repository', () async {
    when(mockNumberGameRepository.getConcreteNumberGame(tNumber))
        .thenAnswer((_) async => const Right(tNumberGame));
    final result = await usecase.execute(tNumber);

    expect(result, const Right(tNumberGame));
    verify(mockNumberGameRepository.getConcreteNumberGame(tNumber));
    verifyNoMoreInteractions(mockNumberGameRepository);
  });
}
