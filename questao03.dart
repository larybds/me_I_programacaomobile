import 'dart:io';

void main() {
  stdout.write('Digite o número de termos: ');
  int n = int.parse(stdin.readLineSync()!);

  int primeira = 1;
  int segunda = 5;
  int terceira = 100;

  int contador = 0;

  stdout.write('S = ');

  while (contador < n) {
    // Primeira sequência: 1, 2, 4, 8, 16...
    if (contador < n) {
      stdout.write('$primeira ');
      primeira *= 2;
      contador++;
    }

    // Segunda sequência: 5, 10, 15, 20...
    if (contador < n) {
      stdout.write('$segunda ');
      segunda += 5;
      contador++;
    }

    // Terceira sequência: 100, 90, 80, 70...
    if (contador < n) {
      stdout.write('$terceira ');
      terceira -= 10;
      contador++;
    }
  }

  print('');
}