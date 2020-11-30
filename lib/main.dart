import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'splash_page.dart';

void main() {
  runApp(CoursesApp());
}

class CoursesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return MaterialApp(
      title: 'Courses',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        scaffoldBackgroundColor: const Color(0xffE5E5E5),
        textTheme: GoogleFonts.poppinsTextTheme(
          textTheme,
        ).apply(
          bodyColor: const Color(0xff07122A),
          displayColor: const Color(0xff07122A),
        ),
      ),
      home: const SplashPage(),
    );
  }
}
