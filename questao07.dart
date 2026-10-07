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
  stdout.write('Digite o valor de X: ');
  double x = double.parse(stdin.readLineSync()!);

  stdout.write('Digite o número de termos: ');
  int n = int.parse(stdin.readLineSync()!);

  double soma = 0;

  List<int> padrao = [1, 2, 3, 4, 3, 2];

  for (int i = 0; i < n; i++) {
    int expoente = i + 2;

    int numeroFatorial = padrao[i % padrao.length];

    double termo =
        pow(x, expoente).toDouble() / fatorial(numeroFatorial);

    soma += termo;
  }

  print('\nS = ${soma.toStringAsFixed(2)}');
}