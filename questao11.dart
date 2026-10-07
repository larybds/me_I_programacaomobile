import 'dart:io';

void main() {
  const double valorHora = 12.30;

  double somaSalarioLiquidoMasculino = 0;
  double somaSalarioLiquidoFeminino = 0;

  int totalMasculino = 0;
  int totalFeminino = 0;

  while (true) {
    print('\n===== CADASTRO DO PROFESSOR =====');

    stdout.write('Código: ');
    String codigo = stdin.readLineSync()!;

    if (codigo == '9999') {
      break;
    }

    stdout.write('Nome: ');
    String nome = stdin.readLineSync()!;

    stdout.write('Sexo (M/F): ');
    String sexo = stdin.readLineSync()!.toUpperCase();

    stdout.write('Número de horas de aula no mês: ');
    double horas = double.parse(stdin.readLineSync()!);

    double salarioBruto = horas * valorHora;

    double desconto;
    double salarioLiquido;

    if (sexo == 'M') {
      desconto = salarioBruto * 0.10;
      totalMasculino++;
    } else {
      desconto = salarioBruto * 0.05;
      totalFeminino++;
    }

    salarioLiquido = salarioBruto - desconto;

    if (sexo == 'M') {
      somaSalarioLiquidoMasculino += salarioLiquido;
    } else {
      somaSalarioLiquidoFeminino += salarioLiquido;
    }

    print('\n--- DADOS DO PROFESSOR ---');
    print('Código: $codigo');
    print('Nome: $nome');
    print('Salário bruto: R\$ ${salarioBruto.toStringAsFixed(2)}');
    print('Salário líquido: R\$ ${salarioLiquido.toStringAsFixed(2)}');
  }

  print('\n========== RESULTADOS ==========');

  if (totalMasculino > 0) {
    double mediaMasculino =
        somaSalarioLiquidoMasculino / totalMasculino;

    print(
        'Média dos salários líquidos dos homens: '
        'R\$ ${mediaMasculino.toStringAsFixed(2)}');
  } else {
    print('Nenhum professor do sexo masculino foi cadastrado.');
  }

  if (totalFeminino > 0) {
    double mediaFeminino =
        somaSalarioLiquidoFeminino / totalFeminino;

    print(
        'Média dos salários líquidos das mulheres: '
        'R\$ ${mediaFeminino.toStringAsFixed(2)}');
  } else {
    print('Nenhuma professora foi cadastrada.');
  }
}