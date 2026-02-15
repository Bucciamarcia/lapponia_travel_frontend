import 'package:flutter/material.dart';
import 'package:lapponia_travel_frontend/template.dart';

import 'main.dart';

class ClassicaWizardScreen extends StatelessWidget {
  const ClassicaWizardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Template(title: "Lapponia Classica", child: ClassicaWizardMain());
  }
}
