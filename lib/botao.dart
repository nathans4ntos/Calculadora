import 'package:flutter/material.dart';

class Botao extends StatelessWidget {
  final String texto;
  final VoidCallback callback;
  const Botao({
    Key? key,
    required this.texto,
    required this.callback,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Container(
        height: 40,
        width: 40,
        color: Colors.grey,
        child: Center(
          child: Text(texto,
              style: TextStyle(fontSize: 16.0, color: Colors.white)),
        ),
      ),
      onPressed: callback,
    );
  }
}
