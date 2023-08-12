import 'package:dartz/dartz.dart';
import 'package:tdd_ca_app/core/error/failures.dart';
import 'package:tdd_ca_app/features/number_Game/domain/entities/number_game.dart';
import 'package:tdd_ca_app/features/number_Game/domain/repositories/number_game_reposiory.dart';

class GetConcreteNumberGame {
  final NumberGameRepository repository;

  const GetConcreteNumberGame({required this.repository});

  Future<Either<Failure, NumberGame>> execute(int number) async {
    return await repository.getConcreteNumberGame(number);
  }
}
