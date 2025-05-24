import 'dart:io';
import 'dart:math';

void main() {
  while (true) {
    print("Calculadora de Áreas");
    print("1. Calcular área de un Círculo");
    print("2. Calcular área de un Rectángulo");
    print("3. Calcular área de un Triángulo");
    print("4. Calcular área de un Cuadrado");
    print("5. Salir");

    stdout.write("Seleccione una opción: ");
    String? opcion = stdin.readLineSync();

    switch (opcion) {
      case '1':
        calcularAreaCirculo();
        break;
      case '2':
        calcularAreaRectangulo();
        break;
      case '3':
        calcularAreaTriangulo();
        break;
      case '4':
        calcularAreaCuadrado();
        break;
      case '5':
        print("¡Adiós!");
        return;
      default:
        print("Opción inválida. Intente de nuevo.");
    }
  }
}

void calcularAreaCirculo() {
  stdout.write("Ingrese el radio del círculo: ");
  String? radioStr = stdin.readLineSync();
  if (radioStr == null) {
    print("Entrada inválida.");
    return;
  }

  try {
    double radio = double.parse(radioStr);
    if (radio <= 0) {
      print("El radio debe ser mayor que cero.");
      return;
    }

    double area = pi * radio * radio;
    print("El área del círculo es: ${area.toStringAsFixed(2)}");
  } catch (e) {
    print("Entrada inválida. Ingrese un número válido.");
  }
}

void calcularAreaRectangulo() {
  stdout.write("Ingrese la base del rectángulo: ");
  String? baseStr = stdin.readLineSync();
  if (baseStr == null) {
    print("Entrada inválida.");
    return;
  }

  stdout.write("Ingrese la altura del rectángulo: ");
  String? alturaStr = stdin.readLineSync();
  if (alturaStr == null) {
    print("Entrada inválida.");
    return;
  }

  try {
    double base = double.parse(baseStr);
    double altura = double.parse(alturaStr);

    if (base <= 0 || altura <= 0) {
      print("La base y la altura deben ser mayores que cero.");
      return;
    }

    double area = base * altura;
    print("El área del rectángulo es: $area");
  } catch (e) {
    print("Entrada inválida. Ingrese números válidos.");
  }
}

void calcularAreaTriangulo() {
  stdout.write("Ingrese la base del triángulo: ");
  String? baseStr = stdin.readLineSync();
    if (baseStr == null) {
    print("Entrada inválida.");
    return;
  }

  stdout.write("Ingrese la altura del triángulo: ");
  String? alturaStr = stdin.readLineSync();
    if (alturaStr == null) {
    print("Entrada inválida.");
    return;
  }

  try {
    double base = double.parse(baseStr);
    double altura = double.parse(alturaStr);

    if (base <= 0 || altura <= 0) {
      print("La base y la altura deben ser mayores que cero.");
      return;
    }

    double area = (base * altura) / 2;
    print("El área del triángulo es: ${area.toStringAsFixed(2)}");
  } catch (e) {
    print("Entrada inválida. Ingrese números válidos.");
  }
}

void calcularAreaCuadrado() {
  stdout.write("Ingrese la longitud del lado del cuadrado: ");
  String? ladoStr = stdin.readLineSync();
    if (ladoStr == null) {
    print("Entrada inválida.");
    return;
  }

  try {
    double lado = double.parse(ladoStr);
    if (lado <= 0) {
      print("El lado debe ser mayor que cero.");
      return;
    }

    double area = lado * lado;
    print("El área del cuadrado es: $area");
  } catch (e) {
    print("Entrada inválida. Ingrese un número válido.");
  }
}
