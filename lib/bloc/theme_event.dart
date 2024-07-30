part of 'theme_bloc.dart';

abstract class ThemeEvents {}

class ChangeThemeEvent extends ThemeEvents {
  final int randInt;

  ChangeThemeEvent({
    required this.randInt,
  });
}

class ChangeOTherEvent extends ThemeEvents {
  final int randInt;

  ChangeOTherEvent({
    required this.randInt,
  });
}
