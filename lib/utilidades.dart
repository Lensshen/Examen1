import 'dart:io';

double solicitarNumero(String mensaje) {
  stdout.write("$mensaje ");
  return double.parse(stdin.readLineSync()!);
}

double solicitarNumeroDistintoDeCero(String mensaje) {
  double num;
  do {
    stdout.write("$mensaje ");
    num = double.parse(stdin.readLineSync()!);
    if (num == 0) print("El número no puede ser cero.");
  } while (num == 0);
  return num;
}

int solicitarEntero(String mensaje) {
  stdout.write("$mensaje ");
  return int.parse(stdin.readLineSync()!);
}

int solicitarEnteroMayorQue(String mensaje, int limite) {
  int num;
  do {
    num = solicitarEntero(mensaje);
    if (num <= limite) print("Debe ser mayor que $limite.");
  } while (num <= limite);
  return num;
}

int solicitarEnteroMayorOIgual(String mensaje, int minimo) {
  int num;
  do {
    num = solicitarEntero(mensaje);
    if (num < minimo) print("Debe ser mayor o igual a $minimo.");
  } while (num < minimo);
  return num;
}

double solicitarPositivo(String mensaje) {
  double valor;
  do {
    valor = solicitarNumero(mensaje);
    if (valor <= 0) print("El número debe ser mayor que cero.");
  } while (valor <= 0);
  return valor;
}

String solicitarCadena(String mensaje) {
  stdout.write("$mensaje ");
  return stdin.readLineSync()!;
}
