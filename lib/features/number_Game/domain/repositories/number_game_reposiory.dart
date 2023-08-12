import 'package:dartz/dartz.dart';
import 'package:tdd_ca_app/core/error/failures.dart';
import 'package:tdd_ca_app/features/number_Game/domain/entities/number_game.dart';

abstract class NumberGameRepository {
  Future<Either<Failure, NumberGame>> getConcreteNumberGame(int number);
  Future<Either<Failure, NumberGame>> getRandomNumberGame();
}
