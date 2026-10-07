import 'dart:io';

void main() {
  List<int> numerosBois = [];
  List<double> pesosBois = [];

  stdout.write('Digite a quantidade de bois: ');
  int n = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < n; i++) {
    print('\n===== BOI ${i + 1} =====');

    stdout.write('Número do boi: ');
    int numero = int.parse(stdin.readLineSync()!);

    stdout.write('Peso do boi (kg): ');
    double peso = double.parse(stdin.readLineSync()!);

    numerosBois.add(numero);
    pesosBois.add(peso);
  }

  while (true) {
    print('\n===== CONSULTA POR PESO =====');

    stdout.write('Digite o peso mínimo: ');
    double pesoMinimo = double.parse(stdin.readLineSync()!);

    stdout.write('Digite o peso máximo: ');
    double pesoMaximo = double.parse(stdin.readLineSync()!);

    print('\nBois encontrados:');

    bool encontrou = false;

    for (int i = 0; i < n; i++) {
      if (pesosBois[i] >= pesoMinimo &&
          pesosBois[i] <= pesoMaximo) {

        print(
            'Boi ${numerosBois[i]} - '
            '${pesosBois[i].toStringAsFixed(2)} kg');

        encontrou = true;
      }
    }

    if (!encontrou) {
      print('Nenhum boi encontrado nesse intervalo.');
    }

    stdout.write('\nDeseja fazer outra consulta? (S/N): ');
    String resposta = stdin.readLineSync()!.toUpperCase();

    if (resposta != 'S') {
      break;
    }
  }

  print('\nPrograma encerrado.');
}