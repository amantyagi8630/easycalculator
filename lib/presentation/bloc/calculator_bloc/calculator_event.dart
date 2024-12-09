import 'package:equatable/equatable.dart';

abstract class CalculatorEvents extends Equatable {
  const CalculatorEvents();

  @override
  List<Object?> get props => [];
}

class OnNumberPressed extends CalculatorEvents {
  final String inputDigit;

  const OnNumberPressed({
    required this.inputDigit,
  });

  @override
  List<Object?> get props => [inputDigit];
}

class OnOperatorPressed extends CalculatorEvents {
  final String inputOperator;

  const OnOperatorPressed({
    required this.inputOperator,
  });

  @override
  List<Object?> get props => [inputOperator];
}
