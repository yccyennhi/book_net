import 'package:book_net/views/base_widgets/text_field/validate/name_validator.dart';
import 'package:book_net/views/base_widgets/text_field/validate/white_space_validator.dart';
import 'package:form_field_validator/form_field_validator.dart';

class ValidateConfigs {
  //Server apiUrl

  static final emailValidator = MultiValidator([
    RequiredValidator(errorText: 'E-mail is required'),
    EmailValidator(errorText: 'Invalid E-mail'),
  ]);

  static final firstNameValidator = MultiValidator([
    RequiredValidator(errorText: 'First name is required'),
    NameValidator(errorText: 'Invalid name')
  ]);

  static final lastNameValidator = MultiValidator([
    RequiredValidator(errorText: 'Last name is required'),
    NameValidator(errorText: 'Invalid name')
  ]);

  static final passwordValidator = MultiValidator([
    RequiredValidator(errorText: 'Password is required'),
    MinLengthValidator(8, errorText: 'Password must be at least 8 digits long'),
    PatternValidator(r'(?=.*?[#?!@$%^&*.\|+_/-])',
        errorText: 'Passwords must have at least one special character'),
    WhiteSpaceValidator(errorText: "Password must not have whitespace")
  ]);

  //Local host server apiUrl
  //static const apiUrl = "http://10.0.2.2:3000";
}
