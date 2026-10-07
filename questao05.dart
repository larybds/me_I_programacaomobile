import 'dart:io';

void main() {
  stdout.write('Digite a quantidade de recém-nascidos: ');
  int n = int.parse(stdin.readLineSync()!);

  int baixoPeso = 0;
  int normal = 0;
  int altoPeso = 0;

  double maiorPesoFeminino = -1;
  String nomeMaiorPesoFeminino = '';

  for (int i = 1; i <= n; i++) {
    print('\n--- Recém-nascido $i ---');

    stdout.write('Nome: ');
    String nome = stdin.readLineSync()!;

    stdout.write('Sexo (M/F): ');
    String sexo = stdin.readLineSync()!.toUpperCase();

    stdout.write('Peso em kg: ');
    double peso = double.parse(stdin.readLineSync()!);

    String classificacao;

    if (peso >= 0 && peso <= 2) {
      classificacao = 'Baixo Peso';
      baixoPeso++;
    } else if (peso > 2 && peso <= 4) {
      classificacao = 'Normal';
      normal++;
    } else {
      classificacao = 'Alto Peso';
      altoPeso++;
    }

    if (sexo == 'F' && peso > maiorPesoFeminino) {
      maiorPesoFeminino = peso;
      nomeMaiorPesoFeminino = nome;
    }


    print('\nNome: $nome');
    print('Sexo: $sexo');
    print('Classificação: $classificacao');
  }

  double percentualBaixo = (baixoPeso / n) * 100;
  double percentualNormal = (normal / n) * 100;
  double percentualAlto = (altoPeso / n) * 100;

  print('\n===== RESULTADOS =====');

  if (nomeMaiorPesoFeminino.isNotEmpty) {
    print(
        'Recém-nascida do sexo feminino com maior peso: $nomeMaiorPesoFeminino');
  } else {
    print('Não houve recém-nascidos do sexo feminino.');
  }

  print(
      'Percentual de Baixo Peso: ${percentualBaixo.toStringAsFixed(2)}%');

  print(
      'Percentual de Peso Normal: ${percentualNormal.toStringAsFixed(2)}%');

  print(
      'Percentual de Alto Peso: ${percentualAlto.toStringAsFixed(2)}%');
}