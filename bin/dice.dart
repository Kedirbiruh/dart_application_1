import 'dart:io';
import 'dart:math';

void main() {
  var random = Random();
  List<int> wuerfe = [];

  int? maxWuerfe;
  do {
    stdout.write('Gib die maximal Anzal der Würfe ein (Zahl > 0):');
    maxWuerfe = int.tryParse(stdin.readLineSync() ?? '');
    if (maxWuerfe == null || maxWuerfe <= 0) {
      print('Ungültige Eingabe: Gib eine Zahl größer als 0.');
    }
  } while (maxWuerfe == null || maxWuerfe <= 0);

  int vorherigerWuerf = 0;
  int Wurfzaeler = 0;
  int anzahlSechsen = 0;
  bool zweiSechsen = false;

  while (Wurfzaeler < maxWuerfe) {
    int wurf = random.nextInt(6) + 1;
    wuerfe.add(wurf);
    Wurfzaeler++;
    print('Wurf $Wurfzaeler: $wurf');

    if (wurf == 6) {
      anzahlSechsen++;
    }

    if (wurf == 6 && vorherigerWuerf == 6) {
      zweiSechsen = true;
      break;
    }

    vorherigerWuerf = wurf;
  }

  print('Alle Wuerfelergebnisse: $wuerfe');
  print('Anzal aller Sechsen: $anzahlSechsen');

  if (zweiSechsen) {
    print('Zwei 6er hintereinander nach $Wurfzaeler würfen!');
  } else {
    print(
      'Limit erreicht: $Wurfzaeler Würfe durchgeführt, ohne zwei 6er hintereinander.',
    );
  }
}
