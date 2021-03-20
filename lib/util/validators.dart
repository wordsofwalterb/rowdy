class FFValidators {
  static final RegExp _emailRegExp = RegExp(
    r'^[a-zA-Z0-9.!#$%&’*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$',
  );
  static final RegExp _passwordRegExp = RegExp(
    r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$',
  );

  static final RegExp _emailUTSARegExp = RegExp(
    r'^[a-zA-Z0-9.!#$%&’*+/=?^_`{|}~-]+@utsa.edu',
  );

  static bool isValidEmail(String email) {
    return _emailRegExp.hasMatch(email);
  }

  static bool isValidPassword(String password) {
    return (password.length >= 8);
  }

  static bool isValidFirstName(String firstName) {
    if (firstName != '') return true;
    return false;
  }

  static bool isValidLastName(String lastName) {
    if (lastName != '') return true;
    return false;
  }

  static bool isValidUTSAEmail(String email) {
    return _emailUTSARegExp.hasMatch(email);
  }

  static String? emailValidator(String? email) {
    if (email == null || email == '') {
      return 'Email is empty';
    } else if (!isValidEmail(email)) {
      return 'The email is not formated properly';
    } else if (!isValidUTSAEmail(email)) {
      return 'Not a proper UTSA email';
    }
  }

  static String? firstNameValidator(String? name) {
    if (name == null || name == '') {
      return 'First name is empty';
    } else if (!isValidFirstName(name)) {
      return 'First name cannot be empty';
    }
  }

  static String? lastNameValidator(String? name) {
    if (name == null || name == '') {
      return 'Last name is empty';
    } else if (!isValidLastName(name)) {
      return 'Last name cannot be empty';
    }
  }

  static String? passwordValidator(String? password) {
    if (password == null || password == '') {
      return 'Password cannot be empty';
    } else if (!isValidPassword(password)) {
      return 'Password must be 8 characters or longer.';
    }
  }
}
