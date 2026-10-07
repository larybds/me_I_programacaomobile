import 'dart:io';

void main() {
  int totalCandidatos = 0;
  int totalMasculino = 0;
  int totalFeminino = 0;

  int menorPontuacaoMasculino = 5001;
  String nomeMenorPontuacaoMasculino = '';

  int maiorPontuacaoMasculinoSI = -1;
  String codigoMaiorPontuacaoMasculinoSI = '';

  while (true) {
    print('\n===== CADASTRO DO CANDIDATO =====');

    stdout.write('Código: ');
    String codigo = stdin.readLineSync()!;

    if (codigo == '0000') {
      break;
    }

    stdout.write('Curso (CC/SI): ');
    String curso = stdin.readLineSync()!.toUpperCase();

    stdout.write('Nome: ');
    String nome = stdin.readLineSync()!;

    stdout.write('Sexo (M/F): ');
    String sexo = stdin.readLineSync()!.toUpperCase();

    stdout.write('Pontuação (0 a 5000): ');
    int pontuacao = int.parse(stdin.readLineSync()!);

    totalCandidatos++;

    if (sexo == 'M') {
      totalMasculino++;
    } else if (sexo == 'F') {
      totalFeminino++;
    }


    if (curso == 'CC' && pontuacao > 2500) {
      print('\n>>> Candidato de CC com mais de 2500 pontos:');
      print('Código: $codigo');
      print('Nome: $nome');
      print('Pontuação: $pontuacao');
    }

    if (sexo == 'M' && pontuacao < menorPontuacaoMasculino) {
      menorPontuacaoMasculino = pontuacao;
      nomeMenorPontuacaoMasculino = nome;
    }

  
    if (sexo == 'M' &&
        curso == 'SI' &&
        pontuacao > maiorPontuacaoMasculinoSI) {
      maiorPontuacaoMasculinoSI = pontuacao;
      codigoMaiorPontuacaoMasculinoSI = codigo;
    }
  }

  print('\n========== RESULTADOS ==========');

  if (nomeMenorPontuacaoMasculino.isNotEmpty) {
    print(
        'Homem com menor pontuação geral: $nomeMenorPontuacaoMasculino');
  } else {
    print('Não houve candidatos do sexo masculino.');
  }

  if (codigoMaiorPontuacaoMasculinoSI.isNotEmpty) {
    print(
        'Código do homem com maior pontuação em SI: '
        '$codigoMaiorPontuacaoMasculinoSI');
  } else {
    print('Não houve candidato masculino no curso de SI.');
  }

  if (totalCandidatos > 0) {
    double percentualMasculino =
        (totalMasculino / totalCandidatos) * 100;

    double percentualFeminino =
        (totalFeminino / totalCandidatos) * 100;

    print(
        'Percentual de candidatos masculinos: '
        '${percentualMasculino.toStringAsFixed(2)}%');

    print(
        'Percentual de candidatas femininas: '
        '${percentualFeminino.toStringAsFixed(2)}%');
  } else {
    print('Nenhum candidato foi cadastrado.');
  }
}