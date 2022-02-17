import 'package:flutter/material.dart';
import 'package:mediation_app/shared/theme.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteBackgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 504,
                  decoration: BoxDecoration(
                    image:
                        DecorationImage(image: AssetImage('assets/cream.png')),
                  ),
                ),
                Center(
                  child: Container(
                    width: 332,
                    height: 243,
                    margin: EdgeInsets.only(top: 150),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/sitting.png')),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}