
import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {

  final String texto;
  final void Function () quandoSelecionado;

  Resposta(this.texto, this.quandoSelecionado);

  @override
  Widget build(BuildContext context) {

    return Container(
      width: 300,
      child: RaisedButton(
        textColor: Colors.white,
        color: Colors.blue,
        child: Text(texto),
        highlightColor: Colors.orange,
        elevation: 5,
        onPressed: quandoSelecionado,
      ),
    );
  }
}

// Recebe a resposta das perguntas.