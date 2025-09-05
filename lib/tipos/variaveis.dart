import 'dart:ffi';

void main() {
  //Variáveis
  String nome = "Lucas";

  String multiLinha = '''
    Lucas
    Martins
    Apontes
    ''';

  int idade = 33;
  double peso = 120.5;
  num valor = 10;

  bool maiorIdade = true;

  nome = "Apolo";

  print(nome);
  print(peso);
  print(idade);
  print(maiorIdade);
}
