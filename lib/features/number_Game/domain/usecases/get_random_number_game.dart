import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/number_game.dart';
import '../repositories/number_game_reposiory.dart';

class GetRandomNumberGame implements UseCase<NumberGame, NoParams> {
  final NumberGameRepository repository;

  const GetRandomNumberGame({required this.repository});

  @override
  Future<Either<Failure, NumberGame>> call(NoParams params) async {
    return await repository.getRandomNumberGame();
  }
}
