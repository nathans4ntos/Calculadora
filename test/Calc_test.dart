import 'package:calculadora/calculadora.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Teste de Multiplicação', () {
    var calc = Calculadora(numero1: 3, numero2: 3, operacao: 'x');
    expect(calc.calcular(), 9);
  });

  test('Teste de Soma', () {
    var calc = Calculadora(numero1: 3, numero2: 3, operacao: '+');
    expect(calc.calcular(), 6);
  });

  test('Teste de Subtração', () {
    var calc = Calculadora(numero1: 3, numero2: 3, operacao: '-');
    expect(calc.calcular(), 0);
  });

  test('Teste de Divisão', () {
    var calc = Calculadora(numero1: 3, numero2: 3, operacao: '/');
    expect(calc.calcular(), 1);
  });

  test('Teste de 0/0', () {
    var calc = Calculadora(numero1: 0, numero2: 0, operacao: '/');
    expect(calc.calcular(), isNaN);
  });

  test('Teste de multiplicação entre negativos', () {
    var calc = Calculadora(numero1: -3, numero2: -3, operacao: 'x');
    expect(calc.calcular(), 9);
  });

  test('Teste de multiplicação entre negativos e positivos', () {
    var calc = Calculadora(numero1: -3, numero2: 3, operacao: 'x');
    expect(calc.calcular(), -9);
  });

  test('Teste de número dividido por 0', () {
    var calc = Calculadora(numero1: 3, numero2: 0, operacao: '/');
    expect(calc.calcular(), double.infinity);
  });

  test('Teste de divisão entre positivos e negativos', () {
    var calc = Calculadora(numero1: 3, numero2: -3, operacao: '/');
    expect(calc.calcular(), -1);
  });

  test('Teste de divisão entre negativos', () {
    var calc = Calculadora(numero1: -3, numero2: -3, operacao: '/');
    expect(calc.calcular(), 1);
  });
}
