/// This class contains common regex for Dutch language
/// Like: KvK number, IBAN number, LicensPlate, etc.
class DutchRegex {
  // alpha: '[a-zA-Z .-]+',
  static bool matchesAlpha(String value) {
    return RegExp(r'[a-zA-Z .-]+').hasMatch(value);
  }

  // sameChars: /^(?!.*(.)\1\1+)/i,
  static bool matchesSameChars(String value) {
    return RegExp(r'^(?!.*(.)\1\1+)', caseSensitive: false).hasMatch(value);
  }

  //date: /^(?:(?:(?:[0]?[1-9]|1[0-9]|2[0-8])-(?:(0)?[1-9]|1[0-2])|(?:29|30)-(?:(0)?[13-9]|1[0-2])|31-(?:(0)?[13578]|1[02]))-[1-9]\d{3}|29-(0)?2-(?:[1-9]\d(?:0[48]|[2468][048]|[13579][26])|(?:[2468][048]|[13579][26])00))$/,
  static bool matchedDate(String value) {
    return RegExp(
            r'^(?:(?:(?:[0]?[1-9]|1[0-9]|2[0-8])-(?:(0)?[1-9]|1[0-2])|(?:29|30)-(?:(0)?[13-9]|1[0-2])|31-(?:(0)?[13578]|1[02]))-[1-9]\d{3}|29-(0)?2-(?:[1-9]\d(?:0[48]|[2468][048]|[13579][26])|(?:[2468][048]|[13579][26])00))$')
        .hasMatch(value);
  }

  // kvkNumber: /^[0-9]{8}$/,
  static bool matchesKvkNumber(String value) {
    return RegExp(r'^[0-9]{8}$').hasMatch(value);
  }

  /// Checks if provided IBAN is a valid
  static bool matchesBtwNumber(String value) {
    return RegExp(r'^[A-Za-z]{2}[0-9]{9}[A-Za-z][0-9]{2}$').hasMatch(value);
  }

  /// Chechs if provided (mobile) phone number is valid
  static bool matchesPhoneMobile(String value) {
    return RegExp(
            r'(^(\(?(0031|0|\+31)\)?){1})( ?-?(6){1}\)?)(( ?|-)?[1-9]( ?|-)?){1}(( ?|-)?[0-9]( ?|-)?){7}$')
        .hasMatch(value);
  }

  // phoneFixedThreeDigits: /(^(\(?(0031|0|\+31)\)?){1})( ?-?([0-9]){3}\)?)(( ?|-)?[0-9]( ?|-)?){6}$/,
  static bool matchesPhoneFixedThreeDigits(String value) {
    return RegExp(
            r'(^(\(?(0031|0|\+31)\)?){1})( ?-?([0-9]){3}\)?)(( ?|-)?[0-9]( ?|-)?){6}$')
        .hasMatch(value);
  }

  // phoneFixedFourDigits: /(^(\(?(0031|0|\+31)\)?){1})( ?-?([0-9]){2}\)?)(( ?|-)?[0-9]( ?|-)?){7}$/,
  static bool matchesPhoneFixedFourDigits(String value) {
    return RegExp(
            r'(^(\(?(0031|0|\+31)\)?){1})( ?-?([0-9]){2}\)?)(( ?|-)?[0-9]( ?|-)?){7}$')
        .hasMatch(value);
  }

  // phoneFixedExceptions: /^( ?\(?((0)|(\+31)|(0031))\)? ?){1}?(| |-| ?\([0-9]*?\) ?)(800|900|906|909){1}.*$/,
  static bool matchesPhoneFixedExceptions(String value) {
    return RegExp(
            r'^( ?\(?((0)|(\+31)|(0031))\)? ?){1}?(| |-| ?\([0-9]*?\) ?)(800|900|906|909){1}.*$')
        .hasMatch(value);
  }

  // phoneFixedMobileException: /^( ?\(?((0)|(\+31)|(0031))\)? ?){1}?(| |-| ?\([0-9]*?\) ?)(800|900|906|909|6){1}.*$/,
  static bool matchesPhoneFixedMobileException(String value) {
    return RegExp(
            r'^( ?\(?((0)|(\+31)|(0031))\)? ?){1}?(| |-| ?\([0-9]*?\) ?)(800|900|906|909|6){1}.*$')
        .hasMatch(value);
  }

  // zipCode: /^[1-9][0-9]{3}[ -\\.]?[A-Za-z]{2}$/,
  static bool matchesZipCode(String value) {
    return RegExp(r'^[1-9][0-9]{3}[ -\\.]?[A-Za-z]{2}$').hasMatch(value);
  }

  // houseNumber: /^[0-9]{0,5}$/,
  static bool matchesHouseNumber(String value) {
    return RegExp(r'^[0-9]{0,5}$').hasMatch(value);
  }

  // houseNumberExtension: /^(?!\s|-)(((?!\s{2})[A-Za-z0-9\s-])*)$/,
  static bool matchesHouseNumberExtension(String value) {
    return RegExp(r'^(?!\s|-)(((?!\s{2})[A-Za-z0-9\s-])*)$').hasMatch(value);
  }

  // iban: /^([A-Z]{2})(\d{2})([A-Z\d]+)$/,
  static bool matchesIban(String value) {
    if (value.replaceAll(' ', '').length != 18) {
      return false;
    }
    return RegExp(r'^([A-Z]{2})(\d{2})([A-Z\d]+)$').hasMatch(value);
  }

  static bool matchesLicensPlate(String value) {
    return RegExp(
            r'/^((([0-9]{3}(?![0-9]))|([a-z]{3}(?![a-z])))|(([0-9]{1,2})|([a-z]{1,2}))|-){6,}/gim')
        .hasMatch(value);
  }

  // driversLicense: /^(?!0{10})([0-9]{10})$/i,
  static bool matchesDriversLicense(String value) {
    return RegExp(r'^(?!0{10})([0-9]{10})$').hasMatch(value);
  }

  // identityCard: /^[a-zA-Z]{2}(?!0{7})([a-zA-Z0-9]{6}[0-9]{1})$/i,
  static bool matchesIdentityCard(String value) {
    return RegExp(r'^[a-zA-Z]{2}(?!0{7})([a-zA-Z0-9]{6}[0-9]{1})$')
        .hasMatch(value);
  }

  // passport: /^[a-np-z]{2}[a-np-z0-9]{6}[0-9]$/i,
  static bool matchesPassport(String value) {
    return RegExp(r'^[a-np-z]{2}[a-np-z0-9]{6}[0-9]$').hasMatch(value);
  }

  // email: /^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/
  static bool matchesEmail(String value) {
    return RegExp(
            r'^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
        .hasMatch(value);
  }
}
