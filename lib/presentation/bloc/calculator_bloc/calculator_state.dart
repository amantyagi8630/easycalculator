import 'package:equatable/equatable.dart';

class CalculatorState extends Equatable {
  final String expression;

  const CalculatorState({
    this.expression = '',
  });

  CalculatorState copyWith({String? expression}) {
    return CalculatorState(
      expression: expression ?? this.expression,
    );
  }

  @override
  List<Object?> get props => [expression];
}
