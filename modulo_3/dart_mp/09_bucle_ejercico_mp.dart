import 'dart:io';

void main() {
  print('Ingrese los puntos del cliente para ver su tabla de bonificaciones:');
  int puntos = int.parse(stdin.readLineSync()!);

  for (int i = 1; i <= 10; i++) {
    print('$puntos x $i = ${puntos * i} puntos acumulados');
  }
}