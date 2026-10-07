import 'dart:io';
import 'dart:math';

void main() {
  Random random = Random();

  int numeroSecreto = random.nextInt(100) + 1;

  int menor = 1;
  int maior = 100;

  print('=== JOGO DE ADIVINHAÇÃO ===');
  print('Tente descobrir o número entre 1 e 100!');

  while (true) {
    stdout.write('\nDigite seu palpite: ');

    String? entrada = stdin.readLineSync();
    int? tentativa = int.tryParse(entrada ?? '');

    if (tentativa == null) {
      print('Entrada inválida! Digite apenas números.');
      continue;
    }

    if (tentativa < menor || tentativa > maior) {
      print('Digite um número entre $menor e $maior.');
      continue;
    }

    if (tentativa == numeroSecreto) {
      print('\nParabéns! Você acertou!');
      print('O número era $numeroSecreto.');
      break;
    }

    if (tentativa < numeroSecreto) {
      menor = tentativa + 1;
    }

    else {
      maior = tentativa - 1;
    }

    print('O número está entre $menor e $maior.');
  }
}