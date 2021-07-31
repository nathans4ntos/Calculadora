import 'package:calculadora/botao.dart';
import 'package:calculadora/calculadora.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeWidget extends StatefulWidget {
  HomeWidget({Key? key}) : super(key: key);

  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  var calc = Calculadora();
  TextEditingController inputNumero1 = new TextEditingController();
  TextEditingController inputNumero2 = new TextEditingController();

  String textHolder = '';
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Padding(
          padding: EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('$textHolder', style: TextStyle(fontSize: 21)),
              SizedBox(
                height: 100,
              ),
              TextField(
                  controller: inputNumero1,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Digite um numero'),
                  keyboardType: TextInputType.number),
              SizedBox(
                height: 10,
              ),
              TextField(
                  controller: inputNumero2,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Digite um numero'),
                  keyboardType: TextInputType.number),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Botao(
                      texto: '+',
                      callback: () {
                        if (inputNumero1.text == '' ||
                            inputNumero2.text == '') {
                          setState(() {
                            textHolder = 'insira um valor no campo vazio!';
                          });
                        } else {
                          calc.setNum1 = double.parse(inputNumero1.text);
                          calc.setNum2 = double.parse(inputNumero2.text);
                          calc.setOp = '+';
                          setState(() {
                            textHolder = calc.calcular().toString();
                            if (textHolder == 'infinity') {
                              textHolder = 'NaN';
                            }
                            if (textHolder != 'NaN') {
                              inputNumero1.text = textHolder;
                            }
                          });
                        }
                      }),
                  Botao(
                      texto: '-',
                      callback: () {
                        if (inputNumero1.text == '' ||
                            inputNumero2.text == '') {
                          setState(() {
                            textHolder = 'insira um valor no campo vazio!';
                          });
                        } else {
                          calc.setNum1 = double.parse(inputNumero1.text);
                          calc.setNum2 = double.parse(inputNumero2.text);
                          calc.setOp = '-';
                          setState(() {
                            textHolder = calc.calcular().toString();
                            if (textHolder == 'infinity') {
                              textHolder = 'NaN';
                            }
                            if (textHolder != 'NaN') {
                              inputNumero1.text = textHolder;
                            }
                          });
                        }
                      }),
                  Botao(
                      texto: '/',
                      callback: () {
                        if (inputNumero1.text == '' ||
                            inputNumero2.text == '') {
                          setState(() {
                            textHolder = 'insira um valor no campo vazio!';
                          });
                        } else {
                          calc.setNum1 = double.parse(inputNumero1.text);
                          calc.setNum2 = double.parse(inputNumero2.text);
                          calc.setOp = '/';
                          setState(() {
                            textHolder = calc.calcular().toString();
                            if (textHolder == 'infinity') {
                              textHolder = 'NaN';
                            }
                            if (textHolder != 'NaN') {
                              inputNumero1.text = textHolder;
                            }
                          });
                        }
                      }),
                  Botao(
                      texto: 'x',
                      callback: () {
                        if (inputNumero1.text == '' ||
                            inputNumero2.text == '') {
                          setState(() {
                            textHolder = 'insira um valor no campo vazio!';
                          });
                        } else {
                          calc.setNum1 = double.parse(inputNumero1.text);
                          calc.setNum2 = double.parse(inputNumero2.text);
                          calc.setOp = 'x';
                          setState(() {
                            textHolder = calc.calcular().toString();
                            if (textHolder == 'infinity') {
                              textHolder = 'NaN';
                            }
                            if (textHolder != 'NaN') {
                              inputNumero1.text = textHolder;
                            }
                          });
                        }
                      }),
                  Botao(
                      texto: '%',
                      callback: () {
                        if (inputNumero1.text == '' ||
                            inputNumero2.text == '') {
                          setState(() {
                            textHolder = 'insira um valor no campo vazio!';
                          });
                        } else {
                          calc.setNum1 = double.parse(inputNumero1.text);
                          calc.setNum2 = double.parse(inputNumero2.text);
                          calc.setOp = '%';
                          setState(() {
                            textHolder = calc.calcular().toString();
                            if (textHolder == 'infinity') {
                              textHolder = 'NaN';
                            }
                            if (textHolder != 'NaN') {
                              inputNumero1.text = textHolder;
                            }
                          });
                        }
                      }),
                  Botao(
                      texto: 'AC',
                      callback: () {
                        calc.setNum1 = 0;
                        calc.setNum2 = 0;
                        calc.setOp = '';
                        setState(() {
                          textHolder = '';
                          inputNumero1.text = '';
                          inputNumero2.text = '';
                        });
                      }),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
