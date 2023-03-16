import 'package:dutch_utils/functions/regex/src/licensplate_regex.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Check international IBAN numbers', () {
    expect(DutchLicensePlateRegex.isValidLicensePlate('96FPDB'), true);
  });
}
