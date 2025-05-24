import 'dart:io';
import 'fibonacci.dart';
import 'utilidades.dart';
import 'menu_helper.dart';
import 'numeros_primos.dart';
import 'pares_impares.dart';
import 'operaciones_basicas.dart';
import 'validaciones.dart';
import 'areas_geometricas.dart';

void main() {
  while (true) {
    printMenuPrincipal();
    String? opcion = stdin.readLineSync();

    switch (opcion) {
      case '1':
        suma();
        break;
      case '2':
        resta();
        break;
      case '3':
        multiplicacion();
        break;
      case '4':
        division();
        break;
      case '5':
        numerosPrimosEnRango();
        break;
      case '6':
        clasificarParesImpares();
        break;
      case '7':
        fibonnaci();
        break;
      case '8':
        menuAreasGeometricas();
        break;
      case '9':
        print("Gracias por usar la calculadora. ¡Hasta pronto!");
        return;
      default:
        print("Opción inválida. Intente nuevamente.\n");
    }
  }
}
