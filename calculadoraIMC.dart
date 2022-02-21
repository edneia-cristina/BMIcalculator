// Isso é uma alteração para estudo de commits

import 'dart:io';

void main() {
  caculoDeImc();
}

//função que calcula o imc

caculoDeImc() {
  print(
      'Olá! Este é um programa para te ajudar a descobrir qual é o seu IMC. Para começar, digite sua altura, por favor:');
  var altura = stdin.readLineSync();
  double double_altura = double.parse(altura!);

  print('Agora digite seu peso, por favor:');
  var peso = stdin.readLineSync();
  int int_peso = int.parse(peso!);

  double resultado = calculoIMC(int_peso, double_altura);

  imprimirResultado(resultado);
}

// função que recebe altura e peso e retorna o imc

double calculoIMC(int int_peso, double double_altura) {
  return int_peso / (double_altura * double_altura);
}

// função que imprime o resultado

imprimirResultado(resultado) {
  print('O resultado do seu IMC é: $resultado.');

  if (resultado < 18.5) {
    print('Você está abaixo do peso.');
  } else if (resultado >= 18.5 && resultado < 24.9) {
    print('Seu peso está normal.');
  } else if (resultado >= 24.9 && resultado < 30) {
    print('Você está com sobrepeso.');
  } else if (resultado >= 30) {
    print('Você está obeso.');
  }

  print('Obrigada por usar nosso aplicativo!');
}
