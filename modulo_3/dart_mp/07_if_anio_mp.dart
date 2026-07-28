import 'dart:io';

void main() {
    print('Ingrese los puntos del cliente: ');
  int puntos = int.parse(stdin.readLineSync()!);

  if ((puntos >= 1000 && puntos < 3000) || (puntos >= 5000)) {
    print('El cliente califica para nivel Platino');
  } else {
    print('El cliente no califica para nivel Platino');
  }
}