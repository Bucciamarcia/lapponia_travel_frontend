import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_spinbox/material.dart';
import 'package:lapponia_travel_frontend/booking/classica/wizard/riverpod.dart';
import 'package:lapponia_travel_frontend/common/styles.dart';

/// To select the number and age of ppl in the group.
class WizardPeopleSelector extends ConsumerWidget {
  const WizardPeopleSelector({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final data = ref.watch(wizardProvider);
    return Column(
      spacing: 25,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Ottimo! In quanti venite in vacanza?",
          style: CustomFonts.headerWithShadow(context),
        ),
        const SelectNumberPeople(),
        data.minorsNumber > 0
            ? const MinorsAgeSelector()
            : const SizedBox.shrink(),
      ],
    );
  }
}

class SelectNumberPeople extends ConsumerStatefulWidget {
  const SelectNumberPeople({super.key});

  @override
  ConsumerState<SelectNumberPeople> createState() => _SelectNumberPeopleState();
}

class _SelectNumberPeopleState extends ConsumerState<SelectNumberPeople> {
  late int adults;
  late int minors;
  @override
  void initState() {
    adults = 1;
    minors = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 20,
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          width: 150,
          decoration: BoxDecoration(color: Colors.white.withAlpha(150)),
          child: SpinBox(
            min: 1,
            max: 12,
            value: adults.toDouble(),
            decoration: const InputDecoration(labelText: "Maggiorenni"),
            onChanged: (v) {
              setState(() {
                adults = v.toInt();
              });
              ref
                  .read(wizardProvider.notifier)
                  .changePeopleNumber(adults, minors);
            },
          ),
        ),
        Container(
          padding: const EdgeInsets.all(10),
          width: 150,
          decoration: BoxDecoration(color: Colors.white.withAlpha(150)),
          child: SpinBox(
            min: 0,
            max: 12,
            value: minors.toDouble(),
            decoration: const InputDecoration(labelText: "Minorenni"),
            onChanged: (v) {
              setState(() {
                minors = v.toInt();
              });
              ref
                  .read(wizardProvider.notifier)
                  .changePeopleNumber(adults, minors);
            },
          ),
        ),
      ],
    );
  }
}

class MinorsAgeSelector extends StatelessWidget {
  const MinorsAgeSelector({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
