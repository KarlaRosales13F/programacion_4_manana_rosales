import 'dart:io';

void main() {

  int puntos = 1;
  int totalPuntos = 0;
  int clientes = 0;

  while (true) {

    print("Ingrese puntos acumulados del cliente (0 para finalizar):");
    puntos = int.parse(stdin.readLineSync()!);

    if (puntos == 0) {
      break;
    }

    totalPuntos += puntos;
    clientes++;

    if (puntos < 200) {
      print("Nivel Bronce");
    } else if (puntos >= 200 && puntos <= 800) {
      print("Nivel Oro");
    } else {
      print("Nivel Platino");
    }
  }

  if (clientes > 0) {
    double promedio = totalPuntos / clientes;

    print("Resultado");
    print("Cantidad de clientes registrados: $clientes");
    print("Total de puntos acumulados: $totalPuntos");
    print("Promedio de puntos por cliente: $promedio");
  } else {
    print("No se registraron clientes.");
  }
}