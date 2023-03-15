import 'package:intl/intl.dart';

class EuroFormatter {
  /// Converts an amount (int) to a euro amount string
  static String stringToEuro(int amount) {
    double x = amount.toDouble();

    var f = NumberFormat("###,###,###,###,###,###,###,###,###,###,##0");

    return f.format(x).toString().replaceAll(',', '.');
  }

  /// Converts an amount in cents to a euro amount with decimals
  static String stringToCent(int amount, {bool fromEuro = false}) {
    double x = amount.toDouble();

    if (fromEuro) {
      x = x / 100;
    }

    var f = NumberFormat("###,###,###,###,###,###,###,###,###,##0.00");

    List<String> g = f.format(x).toString().split('.');
    String h = g[0].replaceAll(',', '.');

    return '$h,${g[1]}';
  }
}
