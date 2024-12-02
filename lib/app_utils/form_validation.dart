import 'package:clever_creator_ai/app_utils/app_strings.dart';

class FormValidation {
  static String? validatePassword(String? value) {
    
    RegExp regex =
        RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
    if (value!.isEmpty) {
      return AppStrings.plzEnterPswd;
    } else {
      if (!regex.hasMatch(value)) {
        return AppStrings.enterValPswd;
      } else {
        return null;
      }
    }
  }

  String? validateEmail(String? email) {
    if (email == null || email.isEmpty) {
      return AppStrings.plzEnterEmail;
    }

    RegExp emailRegex = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
    if (!emailRegex.hasMatch(email)) {
      return "Please enter a valid email address.";
    }

    return null;
  }
}
