import 'package:course_app/components/modified_button.dart';
import 'package:course_app/screens/courses_screen.dart';
import 'package:course_app/utilities/constants.dart';
import 'package:flutter/material.dart';

class LandingScreen extends StatelessWidget {
  static const String id = 'landing_screeen';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              width: double.infinity,
            ),
            Image.asset(
              'assets/images/bust-1.png',
              height: MediaQuery.of(context).size.height * 0.45,
            ),
            Text(
              'Hey Leslee,\nthere\'s a new course about\nFigma',
              style: kHeadingTextStyle,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 12.0,
            ),
            Text(
              'Find out how our new matching tool\ncan help you learn another way',
              style: TextStyle(
                color: Colors.black54,
                fontSize: 16.0,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 40.0,
            ),
            ModifiedButton(
              buttonChild: Text(
                'Discover the course',
                style: kDefaultButtonTextStyle,
              ),
              onPressed: () {
                Navigator.pushReplacementNamed(context, CoursesScreen.id);
              },
            ),
            SizedBox(
              height: 20.0,
            ),
            GestureDetector(
              onTap: () {
                Navigator.popUntil(
                  context,
                  (route) => Navigator.canPop(context),
                );
              },
              child: Text(
                'Not now',
                style: TextStyle(
                  color: Colors.black45,
                  fontSize: 16.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
