import 'utilidades.dart';
import 'dart:math';

void numerosPrimosEnRango() {
  final inicio = solicitarEntero("Ingrese el valor inicial del rango:");
  final fin = solicitarEnteroMayorOIgual(
    "Ingrese el valor final del rango:",
    inicio,
  );

  List<int> primos = [];

  for (int i = inicio; i <= fin; i++) {
    if (esPrimo(i)) primos.add(i);
  }

  print("Números primos en el rango [$inicio, $fin]: $primos");
  print("Cantidad total: ${primos.length}\n");
}

bool esPrimo(int n) {
  if (n <= 1) return false;
  if (n == 2) return true;
  if (n % 2 == 0) return false;

  int raiz = sqrt(n).toInt();
  for (int i = 3; i <= raiz; i += 2) {
    if (n % i == 0) return false;
  }
  return true;
}
