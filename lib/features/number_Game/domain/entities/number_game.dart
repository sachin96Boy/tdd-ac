import 'package:equatable/equatable.dart';

class NumberGame extends Equatable {
  final String text;
  final int number;

  const NumberGame({required this.text, required this.number}) : super();

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}
