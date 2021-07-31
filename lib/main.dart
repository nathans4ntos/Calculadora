import 'package:calculadora/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Calculadora",
      theme: ThemeData(
          primarySwatch: Colors.blue,
          primaryColor: Color.fromARGB(255, 4, 100,
              141) // Definindo a cor primaria do app. cor dos botões etc..
          ),
      debugShowCheckedModeBanner: false,
      home: HomeWidget(),
    );
  }
}
