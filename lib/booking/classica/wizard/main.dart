import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lapponia_travel_frontend/booking/classica/wizard/riverpod.dart';
import 'package:lapponia_travel_frontend/booking/repository.dart';
import 'package:lapponia_travel_frontend/common/styles.dart';

class ClassicaWizardMain extends StatelessWidget {
  const ClassicaWizardMain({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: BookingHomeRepository().getImageUrl("uz2nqrg73ejg5ag"),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Scaffold(
            body: Center(child: Text("Errore nel caricare l'immagine")),
          );
        } else if (snapshot.connectionState == ConnectionState.waiting) {
          return Scaffold(
            body: Center(
              child: SizedBox(
                height: 200,
                width: 200,
                child: CircularProgressIndicator.adaptive(),
              ),
            ),
          );
        } else if (snapshot.hasData) {
          final image = snapshot.data!;
          return Scaffold(
            body: Container(
              constraints: BoxConstraints.expand(),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(image),
                  fit: BoxFit.cover,
                ),
              ),
              child: Animate(child: ClassicaWizardContent()),
            ),
          );
        } else {
          return Scaffold(body: Center(child: Text("Nessun dato disponibile")));
        }
      },
    );
  }
}

class ClassicaWizardContent extends ConsumerWidget {
  const ClassicaWizardContent({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: EdgeInsetsGeometry.all(20),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.black.withAlpha(100),
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        child: Animate(
          effects: [
            FadeEffect(duration: Duration(seconds: 1)),
            SlideEffect(
              duration: Duration(seconds: 1),
              curve: Curves.decelerate,
              begin: Offset(0, 0.1),
            ),
          ],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 25,
            children: [AreDatesSet(), SelectDateRange()],
          ),
        ),
      ),
    );
  }
}

class AreDatesSet extends ConsumerWidget {
  const AreDatesSet({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final config = ref.watch(wizardProvider);
    return Column(
      spacing: 15,
      children: [
        Text(
          "Hai già una data specifica per il tuo viaggio?",
          style: CustomFonts.subheaderWithShadow(context),
        ),
        SegmentedButton<bool>(
          style: SegmentedButton.styleFrom(
            // 1. Transparent or subtle background for unselected state
            backgroundColor: Colors.white.withAlpha(30),
            foregroundColor: Colors.white70, // Text color for unselected
            // 2. High contrast for the active state
            selectedBackgroundColor: Colors.blueAccent,
            selectedForegroundColor: Colors.white,

            // 3. Clean borders
            side: BorderSide(color: Colors.white24),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          segments: [
            ButtonSegment<bool>(
              value: true,
              icon: Icon(Icons.calendar_today, size: 18),
              label: Text(
                "Sì, ho date fissate",
                style: TextStyle(color: Colors.white),
              ),
            ),
            ButtonSegment<bool>(
              icon: Icon(Icons.event_busy, size: 18),
              value: false,
              label: Text(
                "No, non ho date fissate",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
          selected: {config.haveSpecificDates},
          onSelectionChanged: (nv) {
            ref.read(wizardProvider.notifier).changeHasSeteDates(nv.first);
          },
        ),
      ],
    );
  }
}

class SelectDateRange extends ConsumerWidget {
  const SelectDateRange({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Placeholder();
  }
}
