import 'package:go_router/go_router.dart';
import 'package:lapponia_travel_frontend/booking/booking.dart';
import 'package:lapponia_travel_frontend/booking/classica/wizard/main.dart';
import 'package:lapponia_travel_frontend/booking/classica/wizard/template.dart';
import 'package:lapponia_travel_frontend/booking/speciali/speciali.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: Routes.home.path,
      builder: (context, state) => BookingScreen(),
    ),
    GoRoute(
      path: Routes.lapponiaClassicaWizard.path,
      builder: (context, state) => WizardTemplate(child: WizardDatesmain()),
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
