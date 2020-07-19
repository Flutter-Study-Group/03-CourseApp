import 'package:flutter/material.dart';

class ModifiedButton extends StatelessWidget {
  /// Widget with [RaisedButton] widget at its core, wrapped with decorations
  ///
  final Function onPressed;
  final Widget buttonChild;
  final EdgeInsets padding;

  ModifiedButton({this.onPressed, this.buttonChild, this.padding});

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      onPressed: this.onPressed,
      child: this.buttonChild,
      color: Color(0xff07122A),
      padding: this.padding != null
          ? this.padding
          : EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.18,
              vertical: MediaQuery.of(context).size.width * 0.05),
    );
  }
}
