import 'package:flutter/material.dart';

const Color _CustomColor = Colors.white;

const List<Color> _ColorTheme = [
  _CustomColor,
  Colors.blueAccent,
  Colors.purpleAccent,
  Colors.white,
  Colors.greenAccent,
  Colors.orange
];

class AppTheme {
  final int SelectedColor;

  AppTheme({
    this.SelectedColor = 0,
  }) : assert(SelectedColor >= 0 && SelectedColor <= _ColorTheme.length - 1,
            'Colors  must be between 0 and ${_ColorTheme.length}');

  ThemeData theme() {
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _ColorTheme[SelectedColor].withOpacity(0.2),
      appBarTheme:
          AppBarTheme(color: _ColorTheme[SelectedColor].withOpacity(0.7)),
    );
  }
}
