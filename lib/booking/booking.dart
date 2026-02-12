import 'package:flutter/material.dart';
import 'package:lapponia_travel_frontend/booking/main.dart';
import 'package:lapponia_travel_frontend/template.dart';

class BookingScreen extends StatelessWidget {
  const BookingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Template(title: "Prenotazioni", child: BookingMain());
  }
}
