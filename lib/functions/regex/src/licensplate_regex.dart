class DutchLicensePlateRegex {
  static List<String> getAllLicensePlates(String value) {
    List<String> result = [];

    String newValue = value.replaceAll('-', '').toUpperCase();

    // 1     XX-99-99    (since 1951)
    RegExp(r'([A-Z]{2})(\d{2})(\d{2})').allMatches(newValue).forEach((element) {
      result.add(element.group(0)!);
    });

    // 2     99-99-XX    (since 1965)
    RegExp(r'(\d{2})(\d{2})([A-Z]{2})').allMatches(newValue).forEach((element) {
      result.add(element.group(0)!);
    });
    // 3     99-XX-99    (since 1973)
    RegExp(r'(\d{2})([A-Z]{2})(\d{2})').allMatches(newValue).forEach((element) {
      result.add(element.group(0)!);
    });
    // 4     XX-99-XX    (since 1978)
    RegExp(r'([A-Z]{2})(\d{2})([A-Z]{2})')
        .allMatches(newValue)
        .forEach((element) {
      result.add(element.group(0)!);
    });
    // 5     XX-XX-99    (since 1991)
    RegExp(r'([A-Z]{2})([A-Z]{2})(\d{2})')
        .allMatches(newValue)
        .forEach((element) {
      result.add(element.group(0)!);
    });
    // 6     99-XX-XX    (since 1999)
    RegExp(r'(\d{2})([A-Z]{2})([A-Z]{2})')
        .allMatches(newValue)
        .forEach((element) {
      result.add(element.group(0)!);
    });
    // 7     99-XXX-9    (since 2005)
    RegExp(r'(\d{2})([A-Z]{3})(\d{1})').allMatches(newValue).forEach((element) {
      result.add(element.group(0)!);
    });
    // 8     9-XXX-99    (since 2009)
    RegExp(r'(\d{1})([A-Z]{3})(\d{2})').allMatches(newValue).forEach((element) {
      result.add(element.group(0)!);
    });
    // 9     XX-999-X    (since 2006)
    RegExp(r'([A-Z]{2})(\d{3})([A-Z]{1})')
        .allMatches(newValue)
        .forEach((element) {
      result.add(element.group(0)!);
    });
    // 10    X-999-XX    (since 2008)
    RegExp(r'([A-Z]{1})(\d{3})([A-Z]{2})')
        .allMatches(newValue)
        .forEach((element) {
      result.add(element.group(0)!);
    });
    // 11    XXX-99-X    (since 2015)
    RegExp(r'([A-Z]{3})(\d{2})([A-Z]{1})')
        .allMatches(newValue)
        .forEach((element) {
      result.add(element.group(0)!);
    });
    // 12    X-99-XXX
    RegExp(r'([A-Z]{1})(\d{2})([A-Z]{3})')
        .allMatches(newValue)
        .forEach((element) {
      result.add(element.group(0)!);
    });
    // 13    9-XX-999
    RegExp(r'(\d{1})([A-Z]{2})(\d{3})').allMatches(newValue).forEach((element) {
      result.add(element.group(0)!);
    });
    // 14    999-XX-9
    RegExp(r'(\d{3})([A-Z]{2})(\d{1})').allMatches(newValue).forEach((element) {
      result.add(element.group(0)!);
    });
    // 15    999-99-X
    RegExp(r'(\d{3})(\d{2})([A-Z]{1})').allMatches(newValue).forEach((element) {
      result.add(element.group(0)!);
    });
    // 16    XXX-99-9
    RegExp(r'([A-Z]{3})(\d{2})(\d{1})').allMatches(newValue).forEach((element) {
      result.add(element.group(0)!);
    });
    // 17    XXX-XX-9
    RegExp(r'([A-Z]{3})([A-Z]{2})(\d{1})')
        .allMatches(newValue)
        .forEach((element) {
      result.add(element.group(0)!);
    });

    return result;
  }

  static bool isValidLicensePlate(String input) {
    String value = input.replaceAll('-', '').replaceAll(' ', '').toUpperCase();
    if (value.length < 6 || value.length > 8) return false;

    List<String> foundLicensePlates = getAllLicensePlates(value);

    if (foundLicensePlates.isEmpty) return false;

    return true;
  }
}
