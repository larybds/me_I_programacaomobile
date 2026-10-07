import 'dart:io';

void main() {
  List<int> vetor1 = [];
  List<int> vetor2 = [];

  stdout.write('Digite o tamanho do primeiro vetor: ');
  int tamanho1 = int.parse(stdin.readLineSync()!);

  print('\nDigite os elementos do primeiro vetor em ordem:');

  for (int i = 0; i < tamanho1; i++) {
    stdout.write('${i + 1}º elemento: ');
    int numero = int.parse(stdin.readLineSync()!);

    vetor1.add(numero);
  }

  stdout.write('\nDigite o tamanho do segundo vetor: ');
  int tamanho2 = int.parse(stdin.readLineSync()!);

  print('\nDigite os elementos do segundo vetor em ordem:');

  for (int i = 0; i < tamanho2; i++) {
    stdout.write('${i + 1}º elemento: ');
    int numero = int.parse(stdin.readLineSync()!);

    vetor2.add(numero);
  }

  List<int> vetor3 = [];

  vetor3.addAll(vetor1);
  vetor3.addAll(vetor2);

  vetor3.sort();

  print('\n===== RESULTADO =====');

  print('Vetor 1: $vetor1');
  print('Vetor 2: $vetor2');
  print('Vetor 3 ordenado: $vetor3');
}