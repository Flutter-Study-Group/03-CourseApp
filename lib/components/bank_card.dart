import 'dart:math';

import 'package:course_app/components/custom_circle_clipper.dart';
import 'package:course_app/utilities/constants.dart';
import 'package:flutter/material.dart';

class BankCard extends StatelessWidget {
  /// Widget to create a bank credit card using the material components.
  /// The Widget is set to always take 30% of the available screen height
  /// and added [15 points] of margin around it.
  ///
  /// The properties [cardNumber], [cardHolder], [cardDate] cannot be null
  ///
  const BankCard({
    @required this.cardNumber,
    @required this.cardHolderName,
    @required this.cardDate,
  });

  final String cardNumber;
  final String cardHolderName;
  final String cardDate;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.3,
      margin: EdgeInsets.symmetric(vertical: 15.0),
      decoration: BoxDecoration(
        color: Color(0xff2B3449),
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Stack(
        children: <Widget>[
          ClipPath(
            clipper: CustomCircleClipper(),
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                color: Color(kDefaultHeadingColour),
                borderRadius: BorderRadius.circular(12.0),
              ),
            ),
          ),
          Positioned(
            top: 30.0,
            right: 25.0,
            child: Image.asset('assets/images/mc_symbol.png'),
          ),
          Center(
            child: Text(
              this.cardNumber,
              style: kCardTextStyle,
            ),
          ),
          Positioned(
            bottom: 20.0,
            left: 30.0,
            child: Text(
              this.cardHolderName.toUpperCase(),
              style: kCardTextStyle.copyWith(
                fontSize: 20.0,
              ),
            ),
          ),
          Positioned(
            bottom: 20.0,
            right: 25.0,
            child: Text(
              this.cardDate,
              style: kCardTextStyle.copyWith(
                fontSize: 20.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
