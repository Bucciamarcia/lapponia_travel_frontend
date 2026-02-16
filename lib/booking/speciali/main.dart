import 'package:flutter/material.dart';
import 'package:lapponia_travel_frontend/booking/repository.dart';
import 'package:lapponia_travel_frontend/booking/single_panel.dart';
import 'package:lapponia_travel_frontend/booking/speciali/invia_modulo.dart';
import 'package:lapponia_travel_frontend/booking/speciali/repository.dart';
import 'package:lapponia_travel_frontend/common/backend_router.dart';

class SpecialiMain extends StatelessWidget {
  const SpecialiMain({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: VacanzeSpecialiRepository().getPagedata(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Scaffold(
            body: Center(child: CircularProgressIndicator.adaptive()),
          );
        } else if (snapshot.hasError) {
          return const Scaffold(body: Center(child: Text("Error loading image")));
        } else {
          final pageData = snapshot.data!;
          return Scaffold(
            body: Container(
              constraints: const BoxConstraints.expand(),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(pageData.splashUrl),
                  fit: BoxFit.cover,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: LayoutBuilder(
                  builder: (context, constraits) {
                    return SingleChildScrollView(
                      child: ConstrainedBox(
                        constraints: BoxConstraints(
                          minHeight: constraits.maxHeight,
                        ),
                        child: IntrinsicHeight(
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.black.withAlpha(150),
                              borderRadius: const BorderRadius.all(
                                Radius.circular(20),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                spacing: 10,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text(
                                    "Vacanze Speciali",
                                    style: TextStyle(
                                      fontSize: 32,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(height: 20),
                                  Text(
                                    BookingHomeRepository
                                        .vacanzeSpecialiDescription,
                                    style: const TextStyle(
                                      fontSize: 18,
                                      color: Colors.white70,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                  Wrap(
                                    children: pageData.tours.map((v) {
                                      return SinglePanel(
                                        slideEntry: SlideEntry.left,
                                        mainAsset: v.imageUrl(
                                          BackendRouter.route,
                                        ),
                                        title: v.title,
                                        subtitle: v.subtitle,
                                        description: v.description,
                                        buttonCta: "Prenota questa vacanza",
                                        icon: const Icon(Icons.pending_actions),
                                        moreInfoUrl: v.moreInfo,
                                        onCtaPressed: () => showDialog(
                                          context: context,
                                          builder: (context) =>
                                              ModuloSpeciali(vacanza: v),
                                        ),
                                      );
                                    }).toList(),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          );
        }
      },
    );
  }
}
