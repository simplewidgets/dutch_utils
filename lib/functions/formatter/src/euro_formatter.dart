import 'package:intl/intl.dart';

class EuroFormatter {
  /// Converts an amount (int) to a euro amount string
  static String stringFromEuro(int amount, {bool hideEuroSign = false}) {
    double x = amount.toDouble();

    var f = NumberFormat("###,###,###,###,###,###,###,###,###,###,##0");

    if (hideEuroSign) {
      return f.format(x).toString().replaceAll(',', '.');
    } else {
      return '€ ${f.format(x).toString().replaceAll(',', '.')}';
    }
  }

  /// Converts an amount in cents to a euro amount with decimals
  static String stringFromCent(
    int amount, {
    bool fromEuro = true,
    bool hideEuroSign = false,
  }) {
    double x = amount.toDouble();

    if (fromEuro) {
      x = x / 100;
    }

    var f = NumberFormat("###,###,###,###,###,###,###,###,###,##0.00");

    List<String> g = f.format(x).toString().split('.');
    String h = g[0].replaceAll(',', '.');

    if (hideEuroSign) {
      return '$h,${g[1]}';
    } else {
      return '€ $h,${g[1]}';
    }
  }
}
