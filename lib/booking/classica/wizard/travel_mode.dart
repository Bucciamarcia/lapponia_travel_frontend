import 'package:flutter/material.dart';
import 'package:lapponia_travel_frontend/booking/repository.dart';
import 'package:lapponia_travel_frontend/booking/single_panel.dart';
import 'package:lapponia_travel_frontend/common/styles.dart';

class BookingWizardTravelMode extends StatelessWidget {
  const BookingWizardTravelMode({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 50,
      children: [
        Text(
          "Fantastico! Costruiamo la tua vacanza",
          style: CustomFonts.headerWithShadow(context),
        ),
        Text(
          "La Lapponia è la stessa, l'esperienza dipende da come vuoi viverla. Vuoi pensare solo a goderti il viaggio, o preferisci organizzarti e scegliere le esperienze con me?",
          style: CustomFonts.whiteText(context),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FutureBuilder(
              future: BookingHomeRepository().getImageUrl("z8no4gcem2un2x4"),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const CircularProgressIndicator();
                } else if (snapshot.hasError) {
                  return Text(
                    "Errore nel caricamento dell'immagine: ${snapshot.error}",
                  );
                } else if (snapshot.data == null) {
                  return const Text(
                    "Errore nel caricamento dell'immagine: url non presente",
                  );
                } else {
                  return SinglePanel(
                    slideEntry: SlideEntry.left,
                    mainAsset: snapshot.data!,
                    title: "Vacanza chiavi in mano",
                    subtitle: "Ti seguo dall'arrivo alla partenza.",
                    description:
                        "Ideale se non vuoi pensare a nulla. Dimmi cosa sogni, io costruisco tutto il resto: attività, transfer, abbigliamento a noleggio. Tu arrivi, io penso al resto.",
                    buttonCta: "Fai tutto per me",
                    icon: const Icon(Icons.handshake),
                    moreInfoUrl: null,
                    onCtaPressed: () {},
                  );
                }
              },
            ),
            FutureBuilder(
              future: BookingHomeRepository().getImageUrl("fz1p52h8uvmag18"),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const CircularProgressIndicator();
                } else if (snapshot.hasError) {
                  return Text(
                    "Errore nel caricamento dell'immagine: ${snapshot.error}",
                  );
                } else if (snapshot.data == null) {
                  return const Text(
                    "Errore nel caricamento dell'immagine: url non presente",
                  );
                } else {
                  return SinglePanel(
                    slideEntry: SlideEntry.right,
                    mainAsset: snapshot.data!,
                    title: "Esperienze con me",
                    subtitle: "Ci vediamo solo durante le esperienze.",
                    description:
                        "Ideale se sei un viaggiatore esperto e vuoi organizzarti la vacanza a Levi per conto tuo, ma vuoi fare una o più esperienze in italiano con me. Gestisco le esperienze, il resto è in mano tua.",
                    buttonCta: "Scegli le esperienze",
                    icon: const Icon(Icons.snowboarding),
                    moreInfoUrl: null,
                    onCtaPressed: () {},
                  );
                }
              },
            ),
          ],
        ),
      ],
    );
  }
}
