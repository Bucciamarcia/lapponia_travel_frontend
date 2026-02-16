import 'package:flutter/material.dart';

class CustomFonts {
  static TextStyle headerWithShadow(BuildContext context) => TextStyle(
    fontSize: MediaQuery.of(context).size.width > 600 ? 48 : 26,
    color: Colors.white,
    shadows: const [Shadow(color: Colors.black, offset: Offset(2, 2))],
  );
  static TextStyle subheaderWithShadow(BuildContext context) => TextStyle(
    fontSize: MediaQuery.of(context).size.width > 600 ? 32 : 20,
    color: Colors.white,
    shadows: const [Shadow(color: Colors.black, offset: Offset(1, 1))],
  );
}
