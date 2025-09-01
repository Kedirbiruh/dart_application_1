import 'dart:developer';
import 'dart:io';

void main() {
  stdout.write("Gib eine Zahl ein:");
  int max = int.parse(stdin.readLineSync()!);
  int anzahlTeiler = 0;

  List<int> primzahlen = [];

  for (int zahl = 2; zahl <= max; zahl++) {
    int anzahlTeiler = 0;

    for (int teiler = 1; teiler <= zahl; teiler++) {
      if (zahl % teiler == 0) {
        anzahlTeiler++;
      }
    }

    if (anzahlTeiler == 2) {
      print('Primzal erkannt');
      primzahlen.add(zahl);
    }
  }
  print("Primzahlen bis $max: $primzahlen:");
}
