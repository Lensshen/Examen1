import 'utilidades.dart';

void fibonnaci() {
  final n = solicitarEnteroMayorQue("Ingrese la cantidad de términos:", 0);
  List<int> secuencia = [];

  int a = 0, b = 1;

  for (int i = 0; i < n; i++) {
    secuencia.add(a);
    int temp = a + b;
    a = b;
    b = temp;
  }

  print("Secuencia de Fibonacci ($n términos): $secuencia\n");
}
