import 'dart:io';

void main() {
  List<int> vetor1 = [];
  List<int> vetor2 = [];
  List<int> vetor3 = [];
  List<int> vetor4 = [];
  
  stdout.write('Digite o tamanho do vetor 1: ');
  int tamanho1 = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < tamanho1; i++) {
    stdout.write('Digite o ${i + 1}º elemento do vetor 1: ');
    vetor1.add(int.parse(stdin.readLineSync()!));
  }

  stdout.write('\nDigite o tamanho do vetor 2: ');
  int tamanho2 = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < tamanho2; i++) {
    stdout.write('Digite o ${i + 1}º elemento do vetor 2: ');
    vetor2.add(int.parse(stdin.readLineSync()!));
  }

  stdout.write('\nDigite o tamanho do vetor 3: ');
  int tamanho3 = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < tamanho3; i++) {
    stdout.write('Digite o ${i + 1}º elemento do vetor 3: ');
    vetor3.add(int.parse(stdin.readLineSync()!));
  }

  
  stdout.write('\nDigite o tamanho do vetor 4: ');
  int tamanho4 = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < tamanho4; i++) {
    stdout.write('Digite o ${i + 1}º elemento do vetor 4: ');
    vetor4.add(int.parse(stdin.readLineSync()!));
  }
  
  List<int> vetor5 = [];

  vetor5.addAll(vetor1);
  vetor5.addAll(vetor2);
  vetor5.addAll(vetor3);
  vetor5.addAll(vetor4);

    vetor5.sort();

    List<int> intersecao = [];

  for (int numero in vetor1) {
    if (vetor2.contains(numero) &&
        vetor3.contains(numero) &&
        vetor4.contains(numero) &&
        !intersecao.contains(numero)) {
      intersecao.add(numero);
    }
  }

    intersecao.sort();

  print('\n========== RESULTADOS ==========');

  print('Vetor 1: $vetor1');
  print('Vetor 2: $vetor2');
  print('Vetor 3: $vetor3');
  print('Vetor 4: $vetor4');

  print('\nVetor 5 ordenado: $vetor5');
  print('Interseção dos quatro vetores: $intersecao');
}