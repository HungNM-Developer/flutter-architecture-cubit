class RegexConstant {
  static const String emailRegexString =
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";

  static const String passwordRegexString =
      r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';

  static bool isEmailValid(String email) {
    return RegExp(emailRegexString).hasMatch(email);
  }

  static bool isPasswordValid(String password) {
    return RegExp(passwordRegexString).hasMatch(password);
  }
}
