import 'dart:io';
void main() {
  print ('Ingrese los puntos para canjear:');
  int puntos = int.parse(stdin.readLineSync()!);
  if (puntos >= 100) {
    print('Canje aprobado');
  } else if (puntos < 100)
    print('Puntos insuficientes para canjear');

}