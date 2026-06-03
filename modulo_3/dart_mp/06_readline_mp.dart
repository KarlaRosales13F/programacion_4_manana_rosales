import 'dart:io';

void main() {
  print('Ingrese el nombre del cliente:');  // Imprime sin salto de línea

  String? cliente = stdin.readLineSync();   // Lee una línea de entrada

  print('Bienvenido a Loyaltee, $cliente');      

  print('Ingrese los puntos acumulados:');
  int puntos = int.parse(stdin.readLineSync()!);  
  print('puntos: $puntos');

  print('Ingrese el porcentaje de descuento:')
  double descuento = double.parse(stdin.readLineSync()!);
  print('descuento: $descuento');

  


}