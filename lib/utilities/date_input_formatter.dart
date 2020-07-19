import 'package:flutter/services.dart';

class DateInputFormatter extends TextInputFormatter {
  /// Creates a formatter for entry of date via
  /// the methods acquired by extending the [TextInputFormatter] class.
  ///
  /// The formatter adds a [/] after every second character to make
  /// input be in sync with the date standard.
  ///
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    var date = newValue.text;

    var buffer = new StringBuffer();

    for (int i = 0; i < date.length; i++) {
      buffer.write(date[i]);
      var nonZeroIndex = i + 1;
      if (nonZeroIndex % 2 == 0 && nonZeroIndex != date.length) {
        buffer.write('/');
      }
    }

    var string = buffer.toString();
    return newValue.copyWith(
      text: string,
      selection: new TextSelection.collapsed(offset: string.length),
    );
  }
}
