import 'package:flutter/material.dart';
import 'package:mediation_app/cubit/reminders_cubit.dart';
import 'package:mediation_app/shared/theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DayWidget extends StatelessWidget {
  DayWidget({Key? key, required this.day}) : super(key: key);
  String day;

  @override
  Widget build(BuildContext context) {
    Widget dayButtonStyle(String day) {
      bool yes = context.watch<RemindersCubit>().isSelected(day);
      return Container(
        width: 40.75,
        height: 40.75,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
              color: yes ? kLightGreyColor : kDarkGreyColor, width: 2),
          color: yes ? kWhiteBackgroundColor : kDarkGreyColor,
        ),
        child: Center(
            child: Text(day, style: yes ? helveticaBoldGrey : helveticaWhite)),
      );
    }

    return GestureDetector(
        onTap: () {
          context.read<RemindersCubit>().selectDay(day);
        },
        child: dayButtonStyle(day));
  }
}
