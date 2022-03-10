import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mediation_app/cubit/reminders_cubit.dart';
import 'package:mediation_app/shared/theme.dart';

class RemindersPage extends StatelessWidget {
  const RemindersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BlocBuilder<RemindersCubit, List<String>>(
            builder: (context, state) {
          Widget buttonStyle(String day) {
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
                  child: Text(day,
                      style: yes ? helveticaBoldGrey : helveticaWhite)),
            );
          }

          return GestureDetector(
              onTap: () {
                context.read<RemindersCubit>().selectDay('SU');
              },
              child: buttonStyle('SU'));
        }),
      ),
    );
  }
}
