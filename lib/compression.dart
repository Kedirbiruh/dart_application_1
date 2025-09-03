String compress(String input) {
  if (input.isEmpty) return ""; 

  String komprimiert = "";
  int count =1;
  
  for (int position = 1; position <= input.length; position++) {
    String char = input[position - 1];

    if (position < input.length && input[position] == char) {
      count++;
    } else {
      if (count >= 3) {
        komprimiert += "$char.$count";
      } else {
        komprimiert += char * count;
      }
      count = 1;
    }
  }
  return komprimiert;
}



String decompress(String input) {

  RegExp regExp = RegExp(r'([A-Za-z])\.(\d+)');
  
  return input.replaceAllMapped(regExp, (match) {
    String char = match.group(1)!;
    int count = int.parse(match.group(2)!);
    return char * count;
  });
}
bool isvalid(String examine) {
  for (var i = 0; i < examine.length; i++) {
    String char = examine.substring(i, i + 1);
    if (int.tryParse(char) != null) {
      return false;
    }
  }
  return true;
}
