import 'package:go_router/go_router.dart';
import 'package:lapponia_travel_frontend/booking/booking.dart';
import 'package:lapponia_travel_frontend/booking/speciali/speciali.dart';

import 'booking/classica/wizard/classica.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: Routes.home.path,
      builder: (context, state) => BookingScreen(),
    ),
    GoRoute(
      path: Routes.lapponiaClassicaWizard.path,
      builder: (context, state) => ClassicaWizardScreen(),
    ),
    GoRoute(
      path: Routes.vacanzeSpeciali.path,
      builder: (context, state) => SpecialiScreen(),
    ),
  ],
);

enum Routes {
  home(path: "/"),
  lapponiaClassicaWizard(path: "/booking/lapponiaclassica/wizard"),
  vacanzeSpeciali(path: "/booking/vacanzespeciali");

  final String path;
  const Routes({required this.path});
}
