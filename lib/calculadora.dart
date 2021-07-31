class Calculadora {
  double numero1;
  double numero2;
  String operacao;

  Calculadora({
    this.numero1 = 0,
    this.numero2 = 0,
    this.operacao = '',
  });

  set setNum1(double value) {
    numero1 = value;
  }

  set setNum2(double value) {
    numero2 = value;
  }

  set setOp(String value) {
    operacao = value;
  }

  calcular() {
    if (this.operacao == "x") {
      return this.numero1 * this.numero2;
    }
    if (this.operacao == "+") {
      return this.numero1 + this.numero2;
    }
    if (this.operacao == "-") {
      return this.numero1 - this.numero2;
    }
    if (this.operacao == "/") {
      return this.numero1 / this.numero2;
    }

    if (this.operacao == "%") {
      return this.numero1 % this.numero2;
    }

    return 0;
  }
}
