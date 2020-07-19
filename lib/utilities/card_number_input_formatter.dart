import 'package:flutter/services.dart';

class CardNumberInputFormatter extends TextInputFormatter {
  /// Creates a formatter for entry of credit card number via
  /// the methods acquired by extending the [TextInputFormatter] class.
  ///
  /// The formatter adds a space after every forth character to make
  /// input be in sync with the standard credit card number
  ///
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    var text = newValue.text;

    var buffer = new StringBuffer();
    for (int i = 0; i < text.length; i++) {
      buffer.write(text[i]);
      var nonZeroIndex = i + 1;
      if (nonZeroIndex % 4 == 0 && nonZeroIndex != text.length) {
        buffer.write('  ');
      }
    }

    var string = buffer.toString();
    return newValue.copyWith(
      text: string,
      selection: new TextSelection.collapsed(offset: string.length),
    );
  }
}
