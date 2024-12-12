void main() {
  final testCases = [
    "ABC",
    "ABC DEF",
    "ABC  DEF",
    "ABC   DEF",
    "ABC                 DEF",
    "ABC                 DEF.",
    "Abc",
    "ab",
    "abc",
    "abc def.",
    "Ibc def.",
  ];

  const correct = "Abc def.";
  final normalizedCorrect = normalizeString(correct);

  for (final testCase in testCases) {
    final normalizedTestCase = normalizeString(testCase);
    final result = compareStrings(normalizedTestCase, normalizedCorrect);
    print("${result.replaceAll('1', '').isEmpty}: $result");
  }
}

String normalizeString(String input) {
  return input.toLowerCase().replaceAll(RegExp(r'\s+'), ' ').trim();
}

String compareStrings(String input, String correct) {
  final minLength = input.length < correct.length ? input.length : correct.length;
  final buffer = StringBuffer();

  for (int i = 0; i < minLength; i++) {
    buffer.write(input[i] == correct[i] ? "1" : "0");
  }

  // Add "0" for remaining characters in the longer string
  buffer.write("0" * (correct.length - minLength));

  return buffer.toString();
}
