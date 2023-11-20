import 'dart:convert';
import 'dart:io';

void main(List<String> args) {
  print("Calculadora em Dart Iniciando...");
  print("Informe o primeiro número:");
  var line = stdin.readLineSync(encoding: utf8);
  double number1 = double.parse(line ?? "0");
  print("Informe o segundo número:");
  line = stdin.readLineSync(encoding: utf8);
  double number2 = double.parse(line ?? "0");
  print("Informe o operador: (+, -, * e /)");
  line = stdin.readLineSync(encoding: utf8);
  String operador = line ?? " ";
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
