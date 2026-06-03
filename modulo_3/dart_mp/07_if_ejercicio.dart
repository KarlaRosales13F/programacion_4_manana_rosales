import 'dart:io';
void main() {
  print ('Ingrese los puntos del cliente:');
  int puntos = int.parse(stdin.readLineSync()!);
  if (puntos > 0) {
    print('El cliente tiene puntos activos');
  } else if (puntos < 0) {
    print('El saldo de puntos es invalido');
  } else {
    print('El cliente no tiene puntos acumulados');
  }
}