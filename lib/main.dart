import 'package:flutter/material.dart';
import 'package:mediation_app/ui/pages/sign_up_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SignUpPage(),
      },
    );
  }
}
