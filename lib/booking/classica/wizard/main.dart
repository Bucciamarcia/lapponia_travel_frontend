import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:lapponia_travel_frontend/booking/repository.dart';

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
              child: Animate(child: ClassicaContent()),
            ),
          );
        } else {
          return Scaffold(body: Center(child: Text("Nessun dato disponibile")));
        }
      },
    );
  }
}

class ClassicaContent extends StatelessWidget {
  const ClassicaContent({super.key});

  @override
  Widget build(BuildContext context) {
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
          child: Placeholder(),
        ),
      ),
    );
  }
}
