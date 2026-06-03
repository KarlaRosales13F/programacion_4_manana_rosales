import 'dart:io';

void main() {

  int compras = 1;
  int canjes = 0;

  int totalCanjes = 0;
  int clientes = 0;

  while (compras != 0) {

    print("Ingrese compras realizadas por el cliente (0 para finalizar):");
    compras = int.parse(stdin.readLineSync()!);

  
    if (compras == 0) {

      
      break;
    }

    print("Ingrese cantidad de canjes realizados:");
    canjes = int.parse(stdin.readLineSync()!);

    double canjesPorCompra = canjes / compras;

    totalCanjes += canjes;
    clientes++;

    print("Canjes por compra: ${canjesPorCompra.toStringAsFixed(2)}");

    
    if (canjesPorCompra < 0.3) {
      print("Fidelizacion baja");
    } else if (canjesPorCompra >= 0.3 && canjesPorCompra <= 0.6) {
      print("Fidelizacion normal");
    } else if (canjesPorCompra > 0.6) {
      print("Fidelizacion alta");
    }
  }

  if (clientes > 0) {

    double promedio = totalCanjes / clientes;

    print("\n===== RESULTADOS =====");
    print("Total de canjes realizados: $totalCanjes");
    print("Cantidad de clientes registrados: $clientes");
    print("Promedio de canjes por cliente: ${promedio.toStringAsFixed(2)}");

  } else {
    print("No se registraron clientes.");
  }
}