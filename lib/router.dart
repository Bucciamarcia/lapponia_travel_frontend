import 'package:go_router/go_router.dart';
import 'package:lapponia_travel_frontend/booking/booking.dart';
import 'package:lapponia_travel_frontend/booking/classica/wizard/main.dart';
import 'package:lapponia_travel_frontend/booking/classica/wizard/people_select.dart';
import 'package:lapponia_travel_frontend/booking/classica/wizard/template.dart';
import 'package:lapponia_travel_frontend/booking/classica/wizard/travel_mode.dart';
import 'package:lapponia_travel_frontend/booking/speciali/speciali.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: Routes.home.path,
      builder: (context, state) => const BookingScreen(),
    ),
    GoRoute(
      path: Routes.lapponiaClassicaWizard.path,
      builder: (context, state) =>
          const WizardTemplate(child: WizardDatesmain()),
    ),
    GoRoute(
      path: Routes.classicaWizardPeople.path,
      builder: (context, state) =>
          const WizardTemplate(child: WizardPeopleSelector()),
    ),
    GoRoute(
      path: Routes.classicaWizardTravelMode.path,
      builder: (context, state) =>
          const WizardTemplate(child: BookingWizardTravelMode()),
    ),
    GoRoute(
      path: Routes.vacanzeSpeciali.path,
      builder: (context, state) => const SpecialiScreen(),
    ),
  ],
);

enum Routes {
  home(path: "/"),
  lapponiaClassicaWizard(path: "/booking/lapponiaclassica/wizard"),
  classicaWizardPeople(path: "/booking/lapponiaclassica/wizard/people"),
  classicaWizardTravelMode(path: "/booking/lapponiaclassica/wizard/travelmode"),
  vacanzeSpeciali(path: "/booking/vacanzespeciali");

  final String path;
  const Routes({required this.path});
}
