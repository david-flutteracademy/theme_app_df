part of 'theme_cubit.dart';

enum AppTheme {
  light,
  dark,
}

class ThemeState {
  final AppTheme appTheme;
  final bool needTheme;

  ThemeState({
    required this.appTheme,
    required this.needTheme,
  });

  factory ThemeState.initial() {
    return ThemeState(
      appTheme: AppTheme.light,
      needTheme: true,
    );
  }

  ThemeState copyWith({
    AppTheme? appTheme,
    bool? needTheme,
  }) {
    return ThemeState(
      appTheme: appTheme ?? this.appTheme,
      needTheme: needTheme ?? this.needTheme,
    );
  }
}
