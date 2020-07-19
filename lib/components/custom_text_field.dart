import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({
    @required this.placeholder,
    this.cursorColor = Colors.black,
    this.placeholderColor = Colors.black,
    this.focusedOutlineBorder = Colors.black,
    this.padding = const EdgeInsets.symmetric(vertical: 8.0),
    this.width = 200.0,
    this.onChanged,
    this.isPassword = false,
    this.keyboardType,
    this.minLines = 1,
    this.maxLines = 1,
    this.controller,
  });

  final String placeholder;
  final Color cursorColor;
  final Color placeholderColor;
  final Color focusedOutlineBorder;
  final EdgeInsets padding;
  final double width;
  final bool isPassword;
  final ValueChanged<String> onChanged;
  final TextInputType keyboardType;
  final TextEditingController controller;
  final int minLines;
  final int maxLines;
  

  @override
  Widget build(BuildContext context) {
    return Container(
      width: this.width,
      padding: this.padding,
      child: TextFormField(
        minLines: this.minLines,
        maxLines: this.maxLines,
        obscureText: this.isPassword,
        cursorColor: this.cursorColor,
        decoration: InputDecoration(
          labelText: this.placeholder,
          floatingLabelBehavior: FloatingLabelBehavior.auto,
          labelStyle: TextStyle(
            color: this.placeholderColor,
            fontSize: 14.0,
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xff8698A8),
            ),
            borderRadius: BorderRadius.circular(10.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: this.focusedOutlineBorder,
              width: 3.0,
            ),
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
        onChanged: this.onChanged,
        controller: this.controller,
      ),
    );
  }
}
