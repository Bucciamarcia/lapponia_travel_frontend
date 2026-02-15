import 'package:flutter/material.dart';
import 'package:lapponia_travel_frontend/booking/repository.dart';
import 'package:lapponia_travel_frontend/common/styles.dart';

class ClassicaMain extends StatelessWidget {
  const ClassicaMain({super.key});

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
              child: ClassicaContent(),
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 25,
          children: [
            Text(
              "Crea il tuo viaggio o continua",
              style: CustomFonts.headerWithShadow(context),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                "Crea il tuo viaggio",
                style: TextStyle(fontSize: 24),
              ),
            ),
            ContinuaConfigurazione(),
          ],
        ),
      ),
    );
  }
}

class ContinuaConfigurazione extends StatefulWidget {
  const ContinuaConfigurazione({super.key});

  @override
  State<ContinuaConfigurazione> createState() => _ContinuaConfigurazioneState();
}

class _ContinuaConfigurazioneState extends State<ContinuaConfigurazione> {
  late TextEditingController _controller;
  @override
  void initState() {
    _controller = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      children: [
        Text(
          "Oppure, continua con una configurazione esistente:",
          style: CustomFonts.subheaderWithShadow(context),
        ),
        ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 400),
          child: TextField(controller: _controller),
        ),
        ElevatedButton(
          onPressed: () {},
          child: Text("Carica la configurazione"),
        ),
      ],
    );
  }
}
