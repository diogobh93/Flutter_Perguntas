
import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {

  final String texto;
  final void Function () quandoSelecionado;

  Resposta(this.texto, this.quandoSelecionado);

  final perguntas = [
      'Resposta 1?',
      'Resposta 2?',
      'Resposta 3?',
    ];

  @override
  Widget build(BuildContext context) {

    return Container(
      width: double.infinity,
      child: RaisedButton(
        textColor: Colors.white,
        color: Colors.blue,
        child: Text(texto),
        onPressed: quandoSelecionado,
      ),
    );
  }
}