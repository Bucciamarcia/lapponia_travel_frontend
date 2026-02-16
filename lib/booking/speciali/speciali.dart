import 'package:flutter/material.dart';
import 'package:lapponia_travel_frontend/booking/speciali/main.dart';
import 'package:lapponia_travel_frontend/template.dart';

class SpecialiScreen extends StatelessWidget {
  const SpecialiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Template(title: "Vacanze speciali", child: SpecialiMain());
  }
}
