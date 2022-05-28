import 'package:form_field_validator/form_field_validator.dart';

class WhiteSpaceValidator extends TextFieldValidator {
  // pass the error text to the super constructor
  WhiteSpaceValidator({required String errorText}) : super(errorText);

  // return false if you want the validator to return error
  // message when the value is empty.
  @override
  bool get ignoreEmptyValues => true;

  @override
  bool isValid(String? value) {
    // return true if the value is valid according the your condition
    return !hasMatch(r' ', value!);
  }
}
