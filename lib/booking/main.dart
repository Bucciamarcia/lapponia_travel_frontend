import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:lapponia_travel_frontend/booking/repository.dart';
import 'package:lapponia_travel_frontend/booking/single_panel.dart';
import 'package:lapponia_travel_frontend/common/styles.dart';
import 'package:lapponia_travel_frontend/router.dart';

import 'riverpod.dart';

class BookingMain extends ConsumerWidget {
  const BookingMain({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final assetsAsync = ref.watch(splashImageProvider);
    return assetsAsync.when(
      data: (assets) {
        return Scaffold(
          body: Container(
            constraints: const BoxConstraints.expand(),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(assets.splash),
                fit: BoxFit.cover,
              ),
            ),
            child: BookingContent(assets: assets),
          ),
        );
      },
      error: (e, s) {
        return const Text("Error: couldn't load image");
      },
      loading: () => const Scaffold(
        body: Center(
          child: SizedBox(
            height: 150,
            width: 150,
            child: Center(child: CircularProgressIndicator.adaptive()),
          ),
        ),
      ),
    );
  }
}

class BookingContent extends StatelessWidget {
  final BookingHomeAssetUrls assets;
  const BookingContent({super.key, required this.assets});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          "Benvenuto! Scegli la tua vacanza",
          maxLines: 3,
          textAlign: TextAlign.center,
          style: CustomFonts.headerWithShadow(context),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Flexible(
              child: SinglePanel(
                slideEntry: SlideEntry.left,
                mainAsset: assets.lapponiaClassica,
                title: "LAPPONIA CLASSICA",
                subtitle: "Il tuo ritmo",
                description: BookingHomeRepository.lapponiaClassicaDescription,
                buttonCta: "Crea la tua vacanza",
                icon: const Icon(Icons.travel_explore),
                moreInfoUrl: "https://lapponiatravel.com/gruppi-misti/",
                onCtaPressed: () =>
                    context.go(Routes.lapponiaClassicaWizard.path),
              ),
            ),
            Flexible(
              child: SinglePanel(
                slideEntry: SlideEntry.right,
                mainAsset: assets.vacanzeSpeciali,
                title: "VACANZE SPECIALI",
                subtitle: "Il ritmo della natura",
                description: BookingHomeRepository.vacanzeSpecialiDescription,
                buttonCta: "Parti all'avventura",
                icon: const Icon(Icons.explore_outlined),
                moreInfoUrl: "https://lapponiatravel.com/vacanze-speciali/",
                onCtaPressed: () => context.go(Routes.vacanzeSpeciali.path),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
