import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mediation_app/cubit/reminders_cubit.dart';
import 'package:mediation_app/shared/theme.dart';
import 'package:mediation_app/ui/widgets/day_widget.dart';

class RemindersPage extends StatelessWidget {
  const RemindersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(
      children: [
        Text(
          'Every day is best, but we recommend picking at least five.',
          style: helveticaBoldGrey.copyWith(fontSize: 16),
        ),
        //day to meditate
        BlocBuilder<RemindersCubit, List<String>>(builder: (context, state) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              DayWidget(day: 'SU'),
              DayWidget(day: 'M'),
              DayWidget(day: 'T'),
              DayWidget(day: 'W'),
              DayWidget(day: 'TH'),
              DayWidget(day: 'F'),
              DayWidget(day: 'S'),
            ],
          );
        }),
      ],
    )));
  }
}
