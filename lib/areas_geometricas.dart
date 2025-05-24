import 'utilidades.dart';
import 'constantes.dart';

void menuAreasGeometricas() {
  print('''
Cálculo de Áreas:
1. Círculo
2. Rectángulo
3. Triángulo
4. Cuadrado
''');

  String? opcion = solicitarCadena("Seleccione una opción:");

  switch (opcion) {
    case '1':
      double r = solicitarPositivo("Ingrese el radio:");
      print("Área del círculo: ${(PI * r * r).toStringAsFixed(2)}\n");
      break;
    case '2':
      double base = solicitarPositivo("Ingrese la base:");
      double altura = solicitarPositivo("Ingrese la altura:");
      print("Área del rectángulo: ${base * altura}\n");
      break;
    case '3':
      double base = solicitarPositivo("Ingrese la base:");
      double altura = solicitarPositivo("Ingrese la altura:");
      print("Área del triángulo: ${(base * altura / 2).toStringAsFixed(2)}\n");
      break;
    case '4':
      double lado = solicitarPositivo("Ingrese el lado:");
      print("Área del cuadrado: ${lado * lado}\n");
      break;
    default:
      print("Opción inválida.\n");
  }
}
