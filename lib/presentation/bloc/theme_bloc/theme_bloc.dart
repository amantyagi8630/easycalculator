import 'theme_event.dart';
import 'theme_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(const ThemeState(ThemeMode.system)) {
    on<ThemeEvent>((event, emit) {
      emit(ThemeState(event.themeMode));
    });
  }
}
