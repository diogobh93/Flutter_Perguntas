
import 'package:flutter/material.dart';

class Questao extends StatelessWidget {
  
  final String texto;
  Questao(this.texto);

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: double.infinity,
      margin: EdgeInsets.all(20),
      child: Text(
        texto,
        style: TextStyle(fontSize: 26),
        textAlign: TextAlign.center,
      ),
    );
  }
}

// Recebe o texto da pergunta.