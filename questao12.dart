import 'dart:io';

void main() {
  stdout.write('Digite um número: ');
  String numero = stdin.readLineSync()!;

  String numeroInvertido = numero.split('').reversed.join('');

  print('Número invertido: $numeroInvertido');
}