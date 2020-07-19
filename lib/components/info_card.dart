import 'package:flutter/material.dart';

class InfoCard extends StatelessWidget {
  /// A Widget to create a container widget with centered text
  ///
  ///
  InfoCard({this.cardTitle = '', this.cardSubTitle = ''});

  final String cardTitle;
  final String cardSubTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 145.0,
      width: 145.0,
      margin: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Color(0xffF5F5F7),
        borderRadius: BorderRadius.circular(18.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            this.cardTitle,
            style: TextStyle(
              fontSize: 48.0,
              fontWeight: FontWeight.w700,
            ),
          ),
          Text(
            this.cardSubTitle,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16.0),
          ),
        ],
      ),
    );
  }
}
