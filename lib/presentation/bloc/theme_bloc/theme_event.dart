import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';

class ThemeEvent extends Equatable {
  final ThemeMode themeMode;

  const ThemeEvent(this.themeMode);

  @override
  List<Object> get props => [themeMode];
}
