import 'package:courseapp/constants.dart';
import 'package:flutter/material.dart';

class StatCard extends StatelessWidget {
  final value;
  final title;
  final color;

  StatCard({this.value, this.title, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 150,
      decoration: BoxDecoration(
          color: color, borderRadius: BorderRadius.all(Radius.circular(12))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "$value",
            style: textStyle.copyWith(
                color: Colors.black, fontSize: 46, fontWeight: FontWeight.w800),
          ),
          Text(
            title,
            style: textStyle.copyWith(
              color: Colors.black,
              fontSize: 16,
            ),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
