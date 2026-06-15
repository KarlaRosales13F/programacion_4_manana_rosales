import 'dart:io';
void main() {
    int cant = 1;
    int total= 0;

    while (cant != 0) {
    print('Ingresa los puntos del cliente');
    cant = int.parse(stdin.readLineSync()!);
    total = cant + total;
  }

  if ( cant < 500) {
    print('Acumulacion baja');
  } else {
    print('Acumulacion Adecuada');
  } 

  print ('Total puntos ingresados $total');


}