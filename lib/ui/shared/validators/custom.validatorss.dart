class CustomValidators {
  static isEmail(String value) {
    RegExp regex = new RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");

    if(value.isEmpty ||
       !regex.hasMatch(value)) {
      return 'E-mail inválido';
    }
    return null;
  }
}