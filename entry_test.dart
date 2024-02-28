import 'dart:io';

int countVietnameseText(String inputStr) {
  Map<String, String> telexMapping = {
    'aw': 'ă',
    'aa': 'â',
    'dd': 'đ',
    'ee': 'ê',
    'oo': 'ô',
    'ow': 'ơ',
    'w': 'ư',
  };
  int count = 0;
  RegExp telexPattern = RegExp(telexMapping.keys.join('|'));

  Iterable<Match> matches = telexPattern.allMatches(inputStr);

  for (Match match in matches) {
    count++;
  }
  return count;
}

void main() {

  //String inputStr = 'hfdawhwhcoomdd';
  print("Nhập chuỗi chữ cái Latin:");
  String inputStr = stdin.readLineSync() ?? "";
  int result = countVietnameseText(inputStr);
  print('Số chữ cái tiếng Việt: $result');
}



