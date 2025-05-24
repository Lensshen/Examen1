import 'utilidades.dart';

void suma() {
  final a = solicitarNumero("Ingrese el primer número:");
  final b = solicitarNumero("Ingrese el segundo número:");
  print("Resultado: $a + $b = ${a + b}\n");
}

void resta() {
  final a = solicitarNumero("Ingrese el primer número:");
  final b = solicitarNumero("Ingrese el segundo número:");
  print("Resultado: $a - $b = ${a - b}\n");
}

void multiplicacion() {
  final a = solicitarNumero("Ingrese el primer número:");
  final b = solicitarNumero("Ingrese el segundo número:");
  print("Resultado: $a * $b = ${a * b}\n");
}

void division() {
  final a = solicitarNumero("Ingrese el dividendo:");
  final b = solicitarNumeroDistintoDeCero("Ingrese el divisor:");
  print("Resultado: $a / $b = ${a / b}\n");
}
