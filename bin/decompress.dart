import 'dart:io';
import '../lib/compression.dart';

void main() {
  stdout.write('Gib einen komprimierten String ein:');
  String input = stdin.readLineSync() ?? '';
  String result = decompress(input);
  print('Dekompprimiert: $result');

}


