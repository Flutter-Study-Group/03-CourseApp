import 'package:course_app/screens/courses_screen.dart';
import 'package:course_app/screens/landing_screen.dart';
import 'package:course_app/screens/payment_screen.dart';
import 'package:course_app/utilities/constants.dart';
import 'package:flutter/material.dart';

void main() => runApp(CourseApp());

class CourseApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: Colors.white,
        textTheme: TextTheme(
          bodyText2: TextStyle(
            fontFamily: 'Poppins',
            color: Color(kDefaultHeadingColour),
          ),
          headline4: TextStyle(
            fontFamily: 'Poppins',
          ),
        ),
      ),
      initialRoute: LandingScreen.id,
      routes: {
        LandingScreen.id: (context) => LandingScreen(),
        CoursesScreen.id: (context) => CoursesScreen(),
        PaymentScreen.id: (context) => PaymentScreen(),
      },
    );
  }
}
