import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {

  final int pontuacao;
  Resultado(this.pontuacao);

  String get fraseResultado {
     if (pontuacao < 12) {
      return 'Você é fraco!';
    } else if (pontuacao < 18) {
      return 'Impressionante!';
    } else {
      return 'Nível Jedi!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
          fraseResultado,
          style: TextStyle(fontSize: 28),
          ),
        );
  }
}