import 'dart:io';

void main() {
  int totalHomens = 0;
  int totalMulheres = 0;

  int homensComExperiencia = 0;
  int somaIdadeHomensExperiencia = 0;

  int homensAcima45 = 0;

  int mulheresMenor30Experiencia = 0;

  int menorIdadeMulherExperiencia = 999;
  String nomeMulherMaisJovemExperiencia = '';

  while (true) {
    print('\n===== CADASTRO DO CANDIDATO =====');

    stdout.write('Nome: ');
    String nome = stdin.readLineSync()!;

    if (nome.toUpperCase() == 'FIM') {
      break;
    }

    stdout.write('Sexo (M/F): ');
    String sexo = stdin.readLineSync()!.toUpperCase();

    stdout.write('Idade: ');
    int idade = int.parse(stdin.readLineSync()!);

    stdout.write('Possui experiência? (S/N): ');
    String experiencia = stdin.readLineSync()!.toUpperCase();

    // Candidatos masculinos
    if (sexo == 'M') {
      totalHomens++;

      if (experiencia == 'S') {
        homensComExperiencia++;
        somaIdadeHomensExperiencia += idade;
      }

      if (idade > 45) {
        homensAcima45++;
      }
    }

    // Candidatas femininas
    else if (sexo == 'F') {
      totalMulheres++;

      if (idade < 30 && experiencia == 'S') {
        mulheresMenor30Experiencia++;
      }

      if (experiencia == 'S' &&
          idade < menorIdadeMulherExperiencia) {
        menorIdadeMulherExperiencia = idade;
        nomeMulherMaisJovemExperiencia = nome;
      }
    }
  }

  print('\n========== RESULTADOS ==========');

  // A
  print('Número de candidatos masculinos: $totalHomens');
  print('Número de candidatas femininas: $totalMulheres');

  // B
  if (homensComExperiencia > 0) {
    double mediaIdade =
        somaIdadeHomensExperiencia / homensComExperiencia;

    print(
        'Idade média dos homens com experiência: '
        '${mediaIdade.toStringAsFixed(2)}');
  } else {
    print('Não houve homens com experiência.');
  }

  // C
  if (totalHomens > 0) {
    double percentualHomens45 =
        (homensAcima45 / totalHomens) * 100;

    print(
        'Percentual de homens com mais de 45 anos: '
        '${percentualHomens45.toStringAsFixed(2)}%');
  } else {
    print('Não houve candidatos masculinos.');
  }

  // D
  print(
      'Mulheres com menos de 30 anos e experiência: '
      '$mulheresMenor30Experiencia');

  // E
  if (nomeMulherMaisJovemExperiencia.isNotEmpty) {
    print(
        'Candidata mais jovem com experiência: '
        '$nomeMulherMaisJovemExperiencia');
  } else {
    print('Não houve mulheres com experiência.');
  }
}