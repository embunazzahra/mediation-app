import 'package:flutter/material.dart';
import 'package:mediation_app/shared/theme.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget background() {
      return Stack(
        children: [
          Container(
            width: double.infinity,
            height: 504,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/cream.png')),
            ),
          ),
          Center(
            child: Container(
              width: 332,
              height: 243,
              margin: EdgeInsets.only(top: 150),
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/sitting.png')),
              ),
            ),
          ),
        ],
      );
    }

    Widget signUpText() {
      return Column(
        children: [
          Text(
            'We are what we do',
            style: helveticaBlack.copyWith(fontSize: 20, fontWeight: bold),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            'Thousand of people are using silent moon\nfor smalls meditation',
            style: helveticaLightGrey.copyWith(
                fontSize: 16, fontWeight: bold, height: 1.65),
            textAlign: TextAlign.center,
          )
        ],
      );
    }

    Widget signUpButton() {
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
              'SIGN UP',
              style: helveticaWhite.copyWith(
                  fontWeight: medium, letterSpacing: 0.7),
            ),
            onPressed: () {},
          ));
    }

    Widget logInText() {
      return GestureDetector(
          onTap: () {},
          child: Container(
            margin: EdgeInsets.only(top: 20, bottom: 95),
            child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  children: [
                    TextSpan(
                        text: 'ALREADY HAVE AN ACCOUNT? ',
                        style: helveticaBoldGrey.copyWith(
                            fontWeight: light, fontSize: 12)),
                    TextSpan(
                        text: 'LOG IN',
                        style: helveticaPurple.copyWith(
                            fontWeight: light, fontSize: 12)),
                  ],
                )),
          ));
    }

    return Scaffold(
      backgroundColor: kWhiteBackgroundColor,
      body: Center(
        child: ListView(
          children: [
            background(),
            signUpText(),
            signUpButton(),
            logInText(),
          ],
        ),
      ),
    );
  }
}
