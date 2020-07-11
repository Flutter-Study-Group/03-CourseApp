import 'package:flutter/material.dart';

import 'Payment.dart';
import 'courses.dart';
import 'first.dart';

final estiloTexto = TextStyle(fontSize: 20.0, color: Colors.white);

final liquidPages = [
  Container(
    color: Colors.pinkAccent,
    child: MyPage(),
  ),
  Container(color: Colors.blueAccent, child: mycourses()),
  Container(
    color: Colors.orangeAccent,
    child: Center(
      child: Credit(),
    ),
  )
];
