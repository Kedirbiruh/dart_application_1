import 'dart:io';
import '../lib/compression.dart';

void main() {
  stdout.write('Gib einen String zum komprimieren ein:');
  String input = stdin.readLineSync() ?? "";

  String result = compress(input);
  print('Komprimiert: $result');

}