import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lapponia_travel_frontend/booking/classica/wizard/buttons_bottom.dart';
import 'package:lapponia_travel_frontend/booking/classica/wizard/riverpod.dart';
import 'package:lapponia_travel_frontend/common/styles.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class WizardDatesmain extends ConsumerWidget {
  const WizardDatesmain({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final data = ref.watch(wizardProvider);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 25,
      children: [
        const AreDatesSet(),
        const SelectDateRange(),
        ButtonsBottom(
          isActive: data.endDate != null && data.startDate != null,
          onPressed: () {},
        ),
      ],
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
            side: const BorderSide(color: Colors.white24),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          segments: const [
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
    final config = ref.watch(wizardProvider);
    return Column(
      spacing: 20,
      children: [
        config.haveSpecificDates
            ? Text(
                "Scegli le date in cui sarai a Levi",
                style: CustomFonts.subheaderWithShadow(context),
              )
            : Text(
                "Scegli date approssimative che pensavi per la vacanza",
                style: CustomFonts.subheaderWithShadow(context),
              ),
        const DateRangePickerDates(),
      ],
    );
  }
}

class DateRangePickerDates extends ConsumerWidget {
  const DateRangePickerDates({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 800),
      child: SfDateRangePicker(
        onSelectionChanged: (selection) {
          PickerDateRange value = selection.value;
          final start = value.startDate;
          final end = value.endDate;
          ref.read(wizardProvider.notifier).changeDateRange(start, end);
        },
        backgroundColor: Colors.black.withAlpha(100),
        selectionMode: DateRangePickerSelectionMode.range,

        // 1. Header & Weekday Styles
        headerStyle: DateRangePickerHeaderStyle(
          backgroundColor: Colors.black.withAlpha(50),
          textAlign: TextAlign.center,
          textStyle: const TextStyle(
            color: Colors.blue,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        monthViewSettings: const DateRangePickerMonthViewSettings(
          firstDayOfWeek: 1,
          viewHeaderStyle: DateRangePickerViewHeaderStyle(
            textStyle: TextStyle(
              color: Colors.blueAccent,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),

        // 2. Month Cell Styles (The Dates)
        monthCellStyle: const DateRangePickerMonthCellStyle(
          textStyle: TextStyle(color: Colors.white),
          leadingDatesTextStyle: TextStyle(color: Colors.white24),
          trailingDatesTextStyle: TextStyle(color: Colors.white24),
          todayTextStyle: TextStyle(
            color: Colors.lightBlueAccent,
            fontWeight: FontWeight.bold,
          ),
        ),

        // 3. Selection Colors (The "Blue" Logic)
        selectionColor: Colors.blueAccent,
        startRangeSelectionColor: Colors.blueAccent,
        endRangeSelectionColor: Colors.blueAccent,
        rangeSelectionColor: Colors.blueAccent.withAlpha(
          100,
        ), // Subtle bridge color
        rangeTextStyle: const TextStyle(color: Colors.white),
      ),
    );
  }
}
