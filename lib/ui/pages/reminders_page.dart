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
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Text.rich(TextSpan(children: [
            TextSpan(
              text: 'Which day would you\nlike to meditate?\n\n',
              style: helveticaBlack.copyWith(
                  fontSize: 24, fontWeight: bold, height: 1.5),
            ),
            TextSpan(
              text:
                  'Every day is best, but we recommend picking\nat least five.',
              style: helveticaLightGrey.copyWith(
                  fontSize: 16,
                  fontWeight: bold,
                  letterSpacing: 0.7,
                  height: 1.5),
            ),
          ])),
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
