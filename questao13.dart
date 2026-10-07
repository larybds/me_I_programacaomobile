import 'dart:io';

void main() {
  stdout.write('Digite a quantidade de números (N): ');
  int n = int.parse(stdin.readLineSync()!);

  List<int> numeros = [];

  for (int i = 0; i < n; i++) {
    stdout.write('Digite o ${i + 1}º número: ');
    int numero = int.parse(stdin.readLineSync()!);

    numeros.add(numero);
  }

  print('\n===== RESULTADO =====');

  List<int> jaExibidos = [];

  for (int numero in numeros) {
    if (!jaExibidos.contains(numero)) {
      int quantidade = 0;

      for (int elemento in numeros) {
        if (elemento == numero) {
          quantidade++;
        }
      }

      print('$numero - $quantidade');

      jaExibidos.add(numero);
    }
  }
}