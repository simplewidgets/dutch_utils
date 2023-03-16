import 'package:dutch_utils/dutch_utils.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Check if matches zipcode', () {
    expect(DutchCommonRegex.matchesZipCode('273193'), false);
    expect(DutchCommonRegex.matchesZipCode('7833##'), false);
    expect(DutchCommonRegex.matchesZipCode('8922'), false);
    expect(DutchCommonRegex.matchesZipCode('A12912'), false);
    expect(DutchCommonRegex.matchesZipCode('AA2293'), false);
    expect(DutchCommonRegex.matchesZipCode('3913D'), false);
    expect(DutchCommonRegex.matchesZipCode('3913DAD'), false);

    // Good KvK numbers
    expect(DutchCommonRegex.matchesZipCode('6711Ps'), true);
    expect(DutchCommonRegex.matchesZipCode('3902JR'), true);
    expect(DutchCommonRegex.matchesZipCode('1200 KB'), true);
    expect(DutchCommonRegex.matchesZipCode('6713GP'), true);
    expect(DutchCommonRegex.matchesZipCode('3829sd'), true);
  });

  test('Check if matches KvK numbers', () {
    expect(DutchCommonRegex.matchesKvkNumber('a2183192'), false);
    expect(DutchCommonRegex.matchesKvkNumber('3218312'), false);
    expect(DutchCommonRegex.matchesKvkNumber('2183192E'), false);
    expect(DutchCommonRegex.matchesKvkNumber('a218z192'), false);
    expect(DutchCommonRegex.matchesKvkNumber('4311'), false);
    expect(DutchCommonRegex.matchesKvkNumber('43112812931'), false);

    // Good KvK numbers
    expect(DutchCommonRegex.matchesKvkNumber('12345678'), true);
    expect(DutchCommonRegex.matchesKvkNumber('87331912'), true);
    expect(DutchCommonRegex.matchesKvkNumber('93201238'), true);
    expect(DutchCommonRegex.matchesKvkNumber('13291100'), true);
    expect(DutchCommonRegex.matchesKvkNumber('43813992'), true);
  });

  test('Check Dutch IBAN numbers', () {
    // Wrong IBANS
    expect(DutchCommonRegex.matchesIban('NL9ABNA0417164300'), false);
    expect(DutchCommonRegex.matchesIban('NL91ABA0417164300'), false);
    expect(DutchCommonRegex.matchesIban('NL91ABNA041716300'), false);
    expect(DutchCommonRegex.matchesIban('NL91ABNAB417164300'), false);
    expect(DutchCommonRegex.matchesIban('NLX1ABNA0417164300'), false);
    expect(DutchCommonRegex.matchesIban('NL91ABNA04171643E0'), false);
    expect(DutchCommonRegex.matchesIban('NL91ABNA041716430E'), false);
    expect(DutchCommonRegex.matchesIban('NL91ABNA041716430!'), false);
    expect(DutchCommonRegex.matchesIban('NL91ABNA0#17164300'), false);
    expect(DutchCommonRegex.matchesIban('NL91ABNA041716430032'), false);

    // Good IBANS
    expect(DutchCommonRegex.matchesIban('NL91ABNA0117164300'), true);
    expect(DutchCommonRegex.matchesIban('NL31ABNA0117164300'), true);
    expect(DutchCommonRegex.matchesIban('NL91ABNA0117164300'), true);
    expect(DutchCommonRegex.matchesIban('NL91 RABO0117164200'), true);
    expect(DutchCommonRegex.matchesIban('NL91 INGB 0117124300'), true);
    expect(DutchCommonRegex.matchesIban('NL 91 ASNB 0117164300'), true);
  });

  test('Check international IBAN numbers', () {
    // Wrong IBANS
    expect(
        DutchCommonRegex.matchesIban('AT61 1904 3002 3457 32',
            allowInternational: true),
        false);
    expect(
        DutchCommonRegex.matchesIban('DE89 3704 0044 0532 030 00',
            allowInternational: true),
        false);

    // Good IBANS
    expect(
        DutchCommonRegex.matchesIban('MT84 MALT 0110 0001 2345 MTLC AST0 01S',
            allowInternational: true),
        true);
    expect(
        DutchCommonRegex.matchesIban('DE89 3704 0044 0532 0130 00',
            allowInternational: true),
        true);
    expect(DutchCommonRegex.matchesIban('NL91ABNA0117164300'), true);
    expect(DutchCommonRegex.matchesIban('NL91 RABO0117164200'), true);
    expect(DutchCommonRegex.matchesIban('NL91 INGB 0117124300'), true);
    expect(DutchCommonRegex.matchesIban('NL 91 ASNB 0117164300'), true);
  });
}
