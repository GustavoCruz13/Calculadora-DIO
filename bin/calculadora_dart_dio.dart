import 'dart:convert';
import 'dart:io';

void main(List<String> args) {
  print("Calculadora em Dart Iniciando...");
  double number1 = double.parse(lerConsole("Informe o primeiro número:"));
  double number2 = double.parse(lerConsole("Informe o segundo número:"));
  String operador = lerConsole("Informe o operador: (+, -, * e /)");
  calcularBasico(operador, number1, number2);
}

double lerConsoleParsed(String texto) {
  return double.parse(lerConsole(texto));
}

String lerConsole(String texto) {
  print(texto);
  var line = stdin.readLineSync(encoding: utf8);
  return line ?? " ";
}

void calcularBasico(String operador, double number1, double number2) {
  double resultado = 0;
  switch (operador) {
    case "+":
      resultado = number1 + number2;
      break;
    case "-":
      resultado = number1 - number2;
      break;
    case "*":
      resultado = number1 * number2;
      break;
    case "/":
      resultado = number1 / number2;
      break;
    default:
      {
        print("Operação Invalida");
        exit(1);
      }
  }
  print("O resultado da operação $operador foi: $resultado");
}
