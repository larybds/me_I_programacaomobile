import 'dart:io';

List<int> lerVetor(int tamanho, String nome) {
  List<int> vetor = [];

  print('\nDigite os elementos do $nome:');

  for (int i = 0; i < tamanho; i++) {
    stdout.write('${i + 1}º elemento: ');
    int numero = int.parse(stdin.readLineSync()!);

    vetor.add(numero);
  }

  return vetor;
}

List<int> somarVetores(List<int> vetor1, List<int> vetor2) {
  List<int> vetor3 = [];

  for (int i = 0; i < vetor1.length; i++) {
    vetor3.add(vetor1[i] + vetor2[i]);
  }

  return vetor3;
}

int somarElementos(List<int> vetor) {
  int soma = 0;

  for (int numero in vetor) {
    soma += numero;
  }

  return soma;
}


void imprimirVetor(String nome, List<int> vetor) {
  print('$nome: $vetor');
}

void main() {
  print('===== SOMA DE VETORES =====');

  stdout.write('Digite o tamanho dos vetores: ');
  int tamanho = int.parse(stdin.readLineSync()!);

  List<int> vetor1 = lerVetor(tamanho, 'Vetor 1');
  List<int> vetor2 = lerVetor(tamanho, 'Vetor 2');

  List<int> vetor3 = somarVetores(vetor1, vetor2);

  int somaTotal = somarElementos(vetor3);

  print('\n========== RESULTADOS ==========');

  imprimirVetor('Vetor 1', vetor1);
  imprimirVetor('Vetor 2', vetor2);
  imprimirVetor('Vetor 3', vetor3);

  print('Soma de todos os elementos do Vetor 3: $somaTotal');
}