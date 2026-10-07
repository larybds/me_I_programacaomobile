void main() {
  print('Números que possuem a característica:');

  for (int numero = 1000; numero <= 9999; numero++) {

    int primeiraParte = numero ~/ 100;
    int segundaParte = numero % 100;

    int soma = primeiraParte + segundaParte;

    if (soma * soma == numero) {
      print(
          '$numero -> $primeiraParte + $segundaParte = $soma -> $soma x $soma = $numero');
    }
  }
}