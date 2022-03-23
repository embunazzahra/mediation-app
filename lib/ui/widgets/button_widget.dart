import 'package:flutter/material.dart';
import 'package:mediation_app/shared/theme.dart';

//BELOM SELESE:")
class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 60, right: 20, left: 20),
        height: 63,
        child: TextButton(
          style: TextButton.styleFrom(
              backgroundColor: kLightPurpleColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(defaultRadius),
              )),
          child: Text(
            text,
            style:
                helveticaWhite.copyWith(fontWeight: medium, letterSpacing: 0.7),
          ),
          onPressed: () {
            Navigator.pushNamedAndRemoveUntil(
                context, '/reminders-page', (route) => false);
          },
        ));
  }
}
