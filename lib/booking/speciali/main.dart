import 'package:flutter/material.dart';
import 'package:lapponia_travel_frontend/booking/repository.dart';
import 'package:lapponia_travel_frontend/booking/single_panel.dart';
import 'package:lapponia_travel_frontend/booking/speciali/invia_modulo.dart';

class SpecialiMain extends StatelessWidget {
  const SpecialiMain({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: BookingHomeRepository().getImageUrl("hb5osah1oty0b7c"),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Scaffold(
            body: Center(child: CircularProgressIndicator.adaptive()),
          );
        } else if (snapshot.hasError) {
          return Scaffold(body: Center(child: Text("Error loading image")));
        } else {
          final imageUrl = snapshot.data!;
          return Scaffold(
            body: Container(
              constraints: BoxConstraints.expand(),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(imageUrl),
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
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                spacing: 10,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Vacanze Speciali",
                                    style: TextStyle(
                                      fontSize: 32,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(height: 20),
                                  Text(
                                    BookingHomeRepository
                                        .vacanzeSpecialiDescription,
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white70,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                  Wrap(
                                    children: VacanzeSpeciali.values.map((v) {
                                      return FutureBuilder(
                                        future: BookingHomeRepository()
                                            .getImageUrl(v.spashImageId),
                                        builder: (context, snapshot) {
                                          if (snapshot.hasError) {
                                            return Text("Error loading image");
                                          } else if (snapshot.connectionState ==
                                              ConnectionState.waiting) {
                                            return SizedBox(
                                              height: 150,
                                              width: 150,
                                              child: Center(
                                                child:
                                                    CircularProgressIndicator.adaptive(),
                                              ),
                                            );
                                          } else {
                                            final imageUrl = snapshot.data!;
                                            return SinglePanel(
                                              slideEntry: SlideEntry.left,
                                              mainAsset: imageUrl,
                                              title: v.title,
                                              subtitle: v.subtitle,
                                              description: v.description,
                                              buttonCta:
                                                  "Prenota questa vacanza",
                                              icon: Icon(Icons.pending_actions),
                                              moreInfoUrl: v.moreInfoUrl,
                                              onCtaPressed: () => showDialog(
                                                context: context,
                                                builder: (context) =>
                                                    ModuloSpeciali(vacanza: v),
                                              ),
                                            );
                                          }
                                        },
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

enum VacanzeSpeciali {
  ferragosto(
    title: "Ferragosto nell'Artico",
    subtitle: "Estate al fresco",
    spashImageId: "q6mg7vushrkvn5m",
    description:
        "10-16 agosto 2026 - Difficoltà facile - 1690€ - 8 posti disponibili.",
    ctaText: "Vivi l'estate in Lapponia",
    moreInfoUrl:
        "https://lapponiatravel.com/vacanze-speciali/10-16-agosto-2026/",
  ),
  ruska(
    title: "Il Canto della Ruska",
    subtitle: "I colori magici della Lapponia",
    spashImageId: "xaxpq5czqd33ccg",
    description:
        "21-27 settembre 2026 - Difficoltà facile - 1690€ - 8 posti disponibili",
    ctaText: "Scopri la Ruska",
    moreInfoUrl:
        "https://lapponiatravel.com/vacanze-speciali/21-27-settembre-2026/",
  ),
  gennaio(
    title: "Il richiamo del nord",
    subtitle: "Avventura nella neve",
    spashImageId: "5y2rhwe4vmactoh",
    description:
        "22-27 gennaio 2027 - Difficoltà media - 1990€ - 8 posti disponibili.",
    ctaText: "Scopri il vero Inverno",
    moreInfoUrl:
        "https://lapponiatravel.com/vacanze-speciali/22-27-gennaio-2027/",
  );

  final String title;
  final String subtitle;
  final String spashImageId;
  final String description;
  final String ctaText;
  final String moreInfoUrl;

  const VacanzeSpeciali({
    required this.title,
    required this.subtitle,
    required this.spashImageId,
    required this.description,
    required this.ctaText,
    required this.moreInfoUrl,
  });
}
