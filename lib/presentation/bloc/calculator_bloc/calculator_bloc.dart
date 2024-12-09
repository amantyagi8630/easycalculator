import 'package:bloc/bloc.dart';
import 'package:easycalc/presentation/bloc/calculator_bloc/calculator_event.dart';
import 'package:easycalc/presentation/bloc/calculator_bloc/calculator_state.dart';

class CalculatorBloc extends Bloc<CalculatorEvents, CalculatorState> {
  CalculatorBloc() : super(const CalculatorState()) {
    on<OnNumberPressed>(_onNumberPressed);
    on<OnOperatorPressed>(_onOperatorPressed);
  }

  void _onNumberPressed(OnNumberPressed event, Emitter<CalculatorState> emit) {
    emit(state.copyWith(expression: state.expression + event.inputDigit));
  }

  void _onOperatorPressed(OnOperatorPressed event, Emitter<CalculatorState> emit) {
    emit(state.copyWith(expression: state.expression + event.inputOperator));
  }
}
