/// This class contains common regex for Dutch language
/// Like: KvK number, IBAN number, LicensPlate, etc.
class DutchCommonRegex {
  /// Checks if provided KVK number is valid (8 digits)
  /// Does not actually check if the number is registered
  static bool matchesKvkNumber(String value) {
    return RegExp(r'^[0-9]{8}$').hasMatch(value);
  }

  /// Checks if provided IBAN is a valid
  /// Does not actually check if the number is registered
  static bool matchesBtwNumber(String value) {
    return RegExp(r'^[A-Za-z]{2}[0-9]{9}[A-Za-z][0-9]{2}$').hasMatch(value);
  }

  /// Checks if provided (mobile) phone number is valid
  static bool matchesPhoneMobile(String value) {
    return RegExp(
            r'(^(\(?(0031|0|\+31)\)?){1})( ?-?(6){1}\)?)(( ?|-)?[1-9]( ?|-)?){1}(( ?|-)?[0-9]( ?|-)?){7}$')
        .hasMatch(value);
  }

  // static bool matchesPhoneFixedThreeDigits(String value) {
  //   return RegExp(
  //           r'(^(\(?(0031|0|\+31)\)?){1})( ?-?([0-9]){3}\)?)(( ?|-)?[0-9]( ?|-)?){6}$')
  //       .hasMatch(value);
  // }

  // // phoneFixedFourDigits: /(^(\(?(0031|0|\+31)\)?){1})( ?-?([0-9]){2}\)?)(( ?|-)?[0-9]( ?|-)?){7}$/,
  // static bool matchesPhoneFixedFourDigits(String value) {
  //   return RegExp(
  //           r'(^(\(?(0031|0|\+31)\)?){1})( ?-?([0-9]){2}\)?)(( ?|-)?[0-9]( ?|-)?){7}$')
  //       .hasMatch(value);
  // }

  // // phoneFixedExceptions: /^( ?\(?((0)|(\+31)|(0031))\)? ?){1}?(| |-| ?\([0-9]*?\) ?)(800|900|906|909){1}.*$/,
  // static bool matchesPhoneFixedExceptions(String value) {
  //   return RegExp(
  //           r'^( ?\(?((0)|(\+31)|(0031))\)? ?){1}?(| |-| ?\([0-9]*?\) ?)(800|900|906|909){1}.*$')
  //       .hasMatch(value);
  // }

  // // phoneFixedMobileException: /^( ?\(?((0)|(\+31)|(0031))\)? ?){1}?(| |-| ?\([0-9]*?\) ?)(800|900|906|909|6){1}.*$/,
  // static bool matchesPhoneFixedMobileException(String value) {
  //   return RegExp(
  //           r'^( ?\(?((0)|(\+31)|(0031))\)? ?){1}?(| |-| ?\([0-9]*?\) ?)(800|900|906|909|6){1}.*$')
  //       .hasMatch(value);
  // }

  /// Check if its a valid postal code
  static bool matchesZipCode(String value) {
    return RegExp(r'^[1-9][0-9]{3}[ -\\.]?[A-Za-z]{2}$').hasMatch(value);
  }

  /// Check if its a valid housnumber
  static bool matchesHouseNumber(String value) {
    return RegExp(r'^[0-9]{0,5}$').hasMatch(value);
  }

  /// Check if its a valid housnumber extension
  static bool matchesHouseNumberExtension(String value) {
    return RegExp(r'^(?!\s|-)(((?!\s{2})[A-Za-z0-9\s-])*)$').hasMatch(value);
  }

  /// Checks if provided IBAN is a valid
  /// Does not actually check if the IBAN is registered
  /// Set allowInternational to true to allow international IBANs
  static bool matchesIban(String value, {bool allowInternational = false}) {
    if (allowInternational) {
      return RegExp(
              r'/^AL\d{10}[0-9A-Z]{16}$|^AD\d{10}[0-9A-Z]{12}$|^AT\d{18}$|^BH\d{2}[A-Z]{4}[0-9A-Z]{14}$|^BE\d{14}$|^BA\d{18}$|^BG\d{2}[A-Z]{4}\d{6}[0-9A-Z]{8}$|^HR\d{19}$|^CY\d{10}[0-9A-Z]{16}$|^CZ\d{22}$|^DK\d{16}$|^FO\d{16}$|^GL\d{16}$|^DO\d{2}[0-9A-Z]{4}\d{20}$|^EE\d{18}$|^FI\d{16}$|^FR\d{12}[0-9A-Z]{11}\d{2}$|^GE\d{2}[A-Z]{2}\d{16}$|^DE\d{20}$|^GI\d{2}[A-Z]{4}[0-9A-Z]{15}$|^GR\d{9}[0-9A-Z]{16}$|^HU\d{26}$|^IS\d{24}$|^IE\d{2}[A-Z]{4}\d{14}$|^IL\d{21}$|^IT\d{2}[A-Z]\d{10}[0-9A-Z]{12}$|^[A-Z]{2}\d{5}[0-9A-Z]{13}$|^KW\d{2}[A-Z]{4}22!$|^LV\d{2}[A-Z]{4}[0-9A-Z]{13}$|^LB\d{6}[0-9A-Z]{20}$|^LI\d{7}[0-9A-Z]{12}$|^LT\d{18}$|^LU\d{5}[0-9A-Z]{13}$|^MK\d{5}[0-9A-Z]{10}\d{2}$|^MT\d{2}[A-Z]{4}\d{5}[0-9A-Z]{18}$|^MR13\d{23}$|^MU\d{2}[A-Z]{4}\d{19}[A-Z]{3}$|^MC\d{12}[0-9A-Z]{11}\d{2}$|^ME\d{20}$|^NL\d{2}[A-Z]{4}\d{10}$|^NO\d{13}$|^PL\d{10}[0-9A-Z]{,16}n$|^PT\d{23}$|^RO\d{2}[A-Z]{4}[0-9A-Z]{16}$|^SM\d{2}[A-Z]\d{10}[0-9A-Z]{12}$|^SA\d{4}[0-9A-Z]{18}$|^RS\d{20}$|^SK\d{22}$|^SI\d{17}$|^ES\d{22}$|^SE\d{22}$|^CH\d{7}[0-9A-Z]{12}$|^TN59\d{20}$|^TR\d{7}[0-9A-Z]{17}$|^AE\d{21}$|^GB\d{2}[A-Z]{4}\d{14}$/')
          .hasMatch(value.replaceAll(' ', '').toUpperCase());
    } else {
      return RegExp(r'^NL[0-9]{2}[A-z0-9]{4}[0-9]{10}$')
          .hasMatch(value.replaceAll(' ', '').toUpperCase());
    }
  }

  // static bool ibanMod97Check(String value) {
  //   // Check if IBAN passed the MOD97 algorithm
  //   // Which means that the IBAN is valid
  //   // Example IBAN: NL91ABNA0417164300

  //   // Move the four initial characters to the end of the string.
  //   // Example: NL91ABNA0417164300 becomes ABNA0417164300NL91.

  //   // Replace each letter in the string with two digits,
  //   // thereby expanding the string, where A = 10, B = 11, ..., Z = 35.

  //   // Interpret the string as a decimal integer and compute the remainder
  //   // of that number on division by 97.

  //   // If the remainder is 1, the check digit test is passed and the IBAN
  //   // might be valid.

  //   // Example: ABNA0417164300NL91 becomes 1011129810417164300314091
  //   // 1011129810417164300314091 mod 97 = 1

  //   String iban = value.replaceAll(' ', '').toUpperCase();
  //   String modifiedIban = iban.substring(4) + iban.substring(0, 4);
  //   String numericIban = '';

  //   for (int i = 0; i < modifiedIban.length; i++) {
  //     numericIban += modifiedIban.codeUnitAt(i).toString();
  //   }

  //   return int.parse(numericIban) % 97 == 1;
  // }

  /// Check if provided Licenseplate is valid.
  static bool matchesLicensPlate(String value) {
    return RegExp(
            r'/^((([0-9]{3}(?![0-9]))|([a-z]{3}(?![a-z])))|(([0-9]{1,2})|([a-z]{1,2}))|-){6,}/gim')
        .hasMatch(value);
  }

  /// Check if provided passport is valid.
  static bool matchesPassport(String value) {
    return RegExp(r'^[a-np-z]{2}[a-np-z0-9]{6}[0-9]$').hasMatch(value);
  }

  /// Check if provided email is valid.
  static bool matchesEmail(String value) {
    return RegExp(
            r'^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
        .hasMatch(value);
  }
}
