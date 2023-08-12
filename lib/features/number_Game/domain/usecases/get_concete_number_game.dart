import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/number_game.dart';
import '../repositories/number_game_reposiory.dart';

class GetConcreteNumberGame implements UseCase<NumberGame, Params> {
  final NumberGameRepository repository;

  const GetConcreteNumberGame({required this.repository});

  @override
  Future<Either<Failure, NumberGame>> call(Params params) async {
    return await repository.getConcreteNumberGame(params.number);
  }
}

class Params extends Equatable {
  final int number;

  const Params({required this.number}) : super();

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}
