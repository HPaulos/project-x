import 'package:flutter/services.dart';

class PhoneNumberInputFormatte extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    TextEditingValue text;

    if (newValue.text != null) {
      if (newValue.text.length > oldValue.text.length &&
          [2, 5, 8].contains(newValue.text.length)) {
        var newString = newValue.text + ' ';
        text = TextEditingValue(
          text: newString,
          selection: TextSelection.collapsed(offset: newString.length),
        );
      } else if (newValue.text.length < oldValue.text.length &&
          [3, 6, 9].contains(newValue.text.length)) {
        var newString = newValue.text.substring(0, newValue.text.length - 1);
        text = TextEditingValue(
          text: newString,
          selection: TextSelection.collapsed(offset: newString.length),
        );
      } else if (newValue.text.length > 11) {
        text = oldValue;
      } else {
        text = newValue;
      }

    } else {
      text = newValue;
    }

    return text;
  }
}
