void main() {
  final testCase = [
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

  final correct = "Abc def.";
  
  for(int i = 0; i<testCase.length; i++){
    final textChuanHoa = chuanHoaChuoi(testCase[i]);
    
    final result = checkAnswer(textChuanHoa, correct.toLowerCase().trim());
    print("${result.replaceAll("1","").isEmpty}: "+result);
  }
}

String chuanHoaChuoi(String a){
  return a.toLowerCase().replaceAll(RegExp(r'\s+'), ' ').trim();
}

String checkAnswer(String answer, String correct) {
  final buffer = StringBuffer();
  final length = correct.length;

  for (int i = 0; i < length; i++) {
    // Nếu vượt ngoài độ dài test case, coi như sai
    if (i >= answer.length || answer[i] != correct[i]) {
      buffer.write("0");
    } else {
      buffer.write("1");
    }
  }

  return buffer.toString();
}
