import 'utilidades.dart';

void clasificarParesImpares() {
  final inicio = solicitarEntero("Ingrese el valor inicial del rango:");
  final fin = solicitarEnteroMayorOIgual(
    "Ingrese el valor final del rango:",
    inicio,
  );

  List<int> pares = [];
  List<int> impares = [];

  for (int i = inicio; i <= fin; i++) {
    (i % 2 == 0) ? pares.add(i) : impares.add(i);
  }

  print("Pares: $pares (Total: ${pares.length})");
  print("Impares: $impares (Total: ${impares.length})\n");
}
