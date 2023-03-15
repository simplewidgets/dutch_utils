import 'package:dutch_utils/dutch_utils.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Check if matches KvK numbers', () {
    expect(DutchRegex.matchesKvkNumber('a2183192'), false);
    expect(DutchRegex.matchesKvkNumber('3218312'), false);
    expect(DutchRegex.matchesKvkNumber('2183192E'), false);
    expect(DutchRegex.matchesKvkNumber('a218z192'), false);
    expect(DutchRegex.matchesKvkNumber('4311'), false);

    // Good KvK numbers
    expect(DutchRegex.matchesKvkNumber('12345678'), true);
    expect(DutchRegex.matchesKvkNumber('87331912'), true);
    expect(DutchRegex.matchesKvkNumber('93201238'), true);
    expect(DutchRegex.matchesKvkNumber('13291100'), true);
    expect(DutchRegex.matchesKvkNumber('43813992'), true);
  });

  test('Check if matches IBAN numbers', () {
    // Wrong IBANS
    expect(DutchRegex.matchesIban('NL9ABNA0417164300'), false);
    expect(DutchRegex.matchesIban('NL91ABA0417164300'), false);
    expect(DutchRegex.matchesIban('NL91ABNA041716300'), false);
    expect(DutchRegex.matchesIban('NL91ABNAB417164300'), false);
    expect(DutchRegex.matchesIban('NLX1ABNA0417164300'), false);
    expect(DutchRegex.matchesIban('NL91ABNA04171643E0'), false);
    expect(DutchRegex.matchesIban('NL91ABNA041716430E'), false);
    expect(DutchRegex.matchesIban('NL91INGB0417164300'), false);
    expect(DutchRegex.matchesIban('NL91ABNA041716430!'), false);
    expect(DutchRegex.matchesIban('NL91ABNA0#17164300'), false);

    // Good IBANS
    expect(DutchRegex.matchesIban('NL91ABNA0117164300'), true);
    expect(DutchRegex.matchesIban('NL31ABNA0117164300'), true);
    expect(DutchRegex.matchesIban('NL41ABNA0117164300'), true);
    expect(DutchRegex.matchesIban('NL91ABNA0167164300'), true);
    expect(DutchRegex.matchesIban('NL91ABNA0115164300'), true);
    expect(DutchRegex.matchesIban('NL91ABNA0117164300'), true);
    expect(DutchRegex.matchesIban('NL91 RABO0117164200'), true);
    expect(DutchRegex.matchesIban('NL91 INGB 0117124300'), true);
    expect(DutchRegex.matchesIban('NL 91 ASNB 0117164300'), true);
  });
}
