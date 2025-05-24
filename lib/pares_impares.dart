import 'dart:io';

void main() {
  try {
    stdout.write('Ingrese el rango inicial: ');
    final String? startInput = stdin.readLineSync();
    if (startInput == null) {
      print('Entrada inválida.  El rango inicial no puede ser nulo.');
      return;
    }
    final int start = int.tryParse(startInput) ?? (throw FormatException('Rango inicial inválido'));

    stdout.write('Ingrese el rango final: ');
    final String? endInput = stdin.readLineSync();
    if (endInput == null) {
      print('Entrada inválida. El rango final no puede ser nulo.');
      return;
    }
    final int end = int.tryParse(endInput) ?? (throw FormatException('Rango final inválido'));

    if (start > end) {
      print('El rango inicial debe ser menor o igual que el rango final.');
      return;
    }

    List<int> evenNumbers = [];
    List<int> oddNumbers = [];

    for (int i = start; i <= end; i++) {
      if (i % 2 == 0) {
        evenNumbers.add(i);
      } else {
        oddNumbers.add(i);
      }
    }

    print('\nNúmeros pares en el rango [$start, $end]:');
    print(evenNumbers);
    print('Total de números pares: ${evenNumbers.length}');

    print('\nNúmeros impares en el rango [$start, $end]:');
    print(oddNumbers);
    print('Total de números impares: ${oddNumbers.length}');
  } catch (e) {
    print('Error: ${e}');
  }
}
