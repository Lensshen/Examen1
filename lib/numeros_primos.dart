void main() {
  const numero = 20;

  print('numeros primos hasta $numero: ${encontrarPrimos(numero)}');
}

List<int> encontrarPrimos(int limite) {
  if (limite < 2) {
    return [];
  }

  List<bool> esPrimo = List.filled(limite + 1, true);
  esPrimo[0] = esPrimo[1] = false;

  for (int p = 2; p * p <= limite; p++) {
    if (esPrimo[p]) {
      for (int i = p * p; i <= limite; i += p) {
        esPrimo[i] = false;
      }
    }
  }

  List<int> primos = [];
  for (int p = 2; p <= limite; p++) {
    if (esPrimo[p]) {
      primos.add(p);
    }
  }
  return primos;
}
