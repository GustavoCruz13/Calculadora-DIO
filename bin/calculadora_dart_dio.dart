import 'dart:convert';
import 'dart:io';

void main(List<String> args) {
  print("Calculadora em Dart Iniciando...");
  double number1 = lerConsoleParsed("Informe o primeiro número:");
  double number2 = lerConsoleParsed("Informe o segundo número:");
  String operador = lerConsole("Informe o operador: (+, -, * e /)");
  calcularBasico(operador, number1, number2);
}

double lerConsoleParsed(String texto) {
  var valor = double.tryParse(lerConsole(texto));
  if (valor == null) {
    print("O número informado está incorreto, o resultado da operação será 0.");
    exit(0);
  } else {
    return valor;
  }
}

String lerConsole(String texto) {
  print(texto);
  var line = stdin.readLineSync(encoding: utf8);
  return line ?? " ";
}

double divisao(double number1, double number2) {
  if (number2 == 0) {
    print("Operação Invalida, não é possível dividir por 0");
    exit(0);
  } else {
    return number1 / number2;
  }
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
      resultado = divisao(number1, number2);
      break;
    default:
      {
        print("Operação Invalida");
        exit(0);
      }
  }
  print("O resultado da operação $operador foi: $resultado");
}
