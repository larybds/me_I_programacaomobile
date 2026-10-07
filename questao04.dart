import 'dart:io';

void main() {
  int totalAlunos = 0;
  int totalAprovados = 0;

  double somaMedias = 0;

  int totalFeminino = 0;
  double somaMediasFeminino = 0;

  double maiorMediaMasculino = -1;
  double maiorMediaFeminino = -1;

  String matriculaMaiorMasculino = '';
  String matriculaMaiorFeminino = '';

  while (true) {
    print('\n--- Cadastro de aluno ---');

    stdout.write('Matrícula: ');
    String matricula = stdin.readLineSync()!;

    if (matricula == '00000') {
      break;
    }

    stdout.write('Nome: ');
    String nome = stdin.readLineSync()!;

    stdout.write('Sexo (M/F): ');
    String sexo = stdin.readLineSync()!.toUpperCase();

    stdout.write('Nota 1: ');
    double nota1 = double.parse(stdin.readLineSync()!);

    stdout.write('Nota 2: ');
    double nota2 = double.parse(stdin.readLineSync()!);

    stdout.write('Nota 3: ');
    double nota3 = double.parse(stdin.readLineSync()!);

    stdout.write('Número de faltas: ');
    int faltas = int.parse(stdin.readLineSync()!);

    double media = (nota1 + nota2 + nota3) / 3;

    totalAlunos++;
    somaMedias += media;
  
    if (sexo == 'F') {
      totalFeminino++;
      somaMediasFeminino += media;
    }

    bool aprovado = media >= 7.0 && faltas <= 18;

    if (aprovado) {
      totalAprovados++;

      if (sexo == 'M' && media > maiorMediaMasculino) {
        maiorMediaMasculino = media;
        matriculaMaiorMasculino = matricula;
      }

      if (sexo == 'F' && media > maiorMediaFeminino) {
        maiorMediaFeminino = media;
        matriculaMaiorFeminino = matricula;
      }
    }

    print('Aluno: $nome');
    print('Média: ${media.toStringAsFixed(2)}');
    print(aprovado ? 'Situação: APROVADO' : 'Situação: REPROVADO');
  }

  print('\n===== RESULTADOS =====');

  if (totalAlunos > 0) {
    double mediaTurma = somaMedias / totalAlunos;

    double percentualAprovados =
        (totalAprovados / totalAlunos) * 100;

    print('Média da turma: ${mediaTurma.toStringAsFixed(2)}');
    print(
        'Percentual de aprovados: ${percentualAprovados.toStringAsFixed(2)}%');

    if (matriculaMaiorMasculino.isNotEmpty) {
      print(
          'Matrícula do homem aprovado com maior média: $matriculaMaiorMasculino');
    } else {
      print('Nenhum aluno masculino aprovado.');
    }

    if (matriculaMaiorFeminino.isNotEmpty) {
      print(
          'Matrícula da mulher aprovada com maior média: $matriculaMaiorFeminino');
    } else {
      print('Nenhuma aluna aprovada.');
    }

    if (totalFeminino > 0) {
      double mediaFeminino =
          somaMediasFeminino / totalFeminino;

      print(
          'Média das alunas: ${mediaFeminino.toStringAsFixed(2)}');
    } else {
      print('Nenhuma aluna cadastrada.');
    }
  } else {
    print('Nenhum aluno foi cadastrado.');
  }
}