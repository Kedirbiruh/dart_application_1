import 'dart:io';
import '../lib/compression.dart';

void main() {
  stdout.write('Gib einen String zum komprimieren ein:');
  String input = stdin.readLineSync() ?? "";
  if (!isvalid(input)) {
    print('Diesen String kann nicht komprimiert werden:');
    return;
  }
  String result = compress(input);
  print('Komprimiert: $result');
}

