import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mediation_app/cubit/reminders_cubit.dart';
import 'package:mediation_app/ui/pages/reminders_page.dart';
import 'package:mediation_app/ui/pages/sign_up_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => RemindersCubit()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => SignUpPage(),
          '/reminders-page': (context) => RemindersPage(),
        },
      ),
    );
  }
}
