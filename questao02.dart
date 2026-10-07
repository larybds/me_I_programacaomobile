import 'dart:io';
import 'dart:math';

int fatorial(int n) {
  int resultado = 1;

  for (int i = 1; i <= n; i++) {
    resultado *= i;
  }

  return resultado;
}

void main() {
  stdout.write('Digite o número de termos: ');
  int n = int.parse(stdin.readLineSync()!);

  double soma = 0;

  for (int i = 1; i <= n; i++) {
    int base = 2 * i + 1;
    int numeroFatorial = 4 * i;
    int denominador = 5 * i;

    int expoente = fatorial(numeroFatorial);

    double termo = pow(base, expoente).toDouble() / denominador;

    // Sinais apresentados na série do exercício
    if (i == 4 || i == 6) {
      soma -= termo;
    } else {
      soma += termo;
    }
  }

  print('S = $soma');
}