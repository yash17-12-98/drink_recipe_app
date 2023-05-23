import 'package:flutter/material.dart';

extension CustomStyles on TextTheme {
  TextStyle get projectTitle => const TextStyle(
      fontSize: 30.0,
      letterSpacing: 7,
      color: Colors.yellow,
      fontWeight: FontWeight.bold);

  TextStyle get title => const TextStyle(
      color: Colors.yellow,
      fontSize: 27.0,
      letterSpacing: 5.0,
      fontWeight: FontWeight.normal);

  TextStyle get titleWithoutLetterSpace => const TextStyle(
      color: Colors.white, fontSize: 27.0, fontWeight: FontWeight.normal);

  TextStyle get heading => const TextStyle(
      color: Colors.white70, fontSize: 17.0, fontWeight: FontWeight.normal);

  TextStyle get bigHeading => const TextStyle(
      color: Colors.white70,
      fontSize: 40.0,
      letterSpacing: 2,
      fontWeight: FontWeight.normal);
}
