import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../entities/number_game.dart';

abstract class NumberGameRepository {
  Future<Either<Failure, NumberGame>> getConcreteNumberGame(int number);
  Future<Either<Failure, NumberGame>> getRandomNumberGame();
}
