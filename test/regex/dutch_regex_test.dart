import 'package:dutch_utils/dutch_utils.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Check if matches KvK numbers', () {
    expect(DutchCommonRegex.matchesKvkNumber('a2183192'), false);
    expect(DutchCommonRegex.matchesKvkNumber('3218312'), false);
    expect(DutchCommonRegex.matchesKvkNumber('2183192E'), false);
    expect(DutchCommonRegex.matchesKvkNumber('a218z192'), false);
    expect(DutchCommonRegex.matchesKvkNumber('4311'), false);

    // Good KvK numbers
    expect(DutchCommonRegex.matchesKvkNumber('12345678'), true);
    expect(DutchCommonRegex.matchesKvkNumber('87331912'), true);
    expect(DutchCommonRegex.matchesKvkNumber('93201238'), true);
    expect(DutchCommonRegex.matchesKvkNumber('13291100'), true);
    expect(DutchCommonRegex.matchesKvkNumber('43813992'), true);
  });

  test('Check if matches IBAN numbers', () {
    // Wrong IBANS
    expect(DutchCommonRegex.matchesIban('NL9ABNA0417164300'), false);
    expect(DutchCommonRegex.matchesIban('NL91ABA0417164300'), false);
    expect(DutchCommonRegex.matchesIban('NL91ABNA041716300'), false);
    expect(DutchCommonRegex.matchesIban('NL91ABNAB417164300'), false);
    expect(DutchCommonRegex.matchesIban('NLX1ABNA0417164300'), false);
    expect(DutchCommonRegex.matchesIban('NL91ABNA04171643E0'), false);
    expect(DutchCommonRegex.matchesIban('NL91ABNA041716430E'), false);
    expect(DutchCommonRegex.matchesIban('NL91INGB0417164300'), false);
    expect(DutchCommonRegex.matchesIban('NL91ABNA041716430!'), false);
    expect(DutchCommonRegex.matchesIban('NL91ABNA0#17164300'), false);

    // Good IBANS
    expect(DutchCommonRegex.matchesIban('NL91ABNA0117164300'), true);
    expect(DutchCommonRegex.matchesIban('NL31ABNA0117164300'), true);
    expect(DutchCommonRegex.matchesIban('NL41ABNA0117164300'), true);
    expect(DutchCommonRegex.matchesIban('NL91ABNA0167164300'), true);
    expect(DutchCommonRegex.matchesIban('NL91ABNA0115164300'), true);
    expect(DutchCommonRegex.matchesIban('NL91ABNA0117164300'), true);
    expect(DutchCommonRegex.matchesIban('NL91 RABO0117164200'), true);
    expect(DutchCommonRegex.matchesIban('NL91 INGB 0117124300'), true);
    expect(DutchCommonRegex.matchesIban('NL 91 ASNB 0117164300'), true);
  });
}
