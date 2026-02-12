import 'package:flutter/material.dart';

class Template extends StatelessWidget {
  final String title;
  final Widget child;
  const Template({super.key, required this.title, required this.child});

  @override
  Widget build(BuildContext context) {
    return child;
  }
}
