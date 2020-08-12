import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

class Questionario extends StatelessWidget {

  final List<Map<String, Object>> perguntas;
  final int perguntaSelecionada;
  final void Function(int) quandoResponder;

  Questionario({
    @required this.perguntas,
    @required this.perguntaSelecionada,
    @required this.quandoResponder
  });

   bool get temPerguntaSelecionada {
    return perguntaSelecionada < perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> respostas = temPerguntaSelecionada ? perguntas[perguntaSelecionada]['respostas'] : null;
    
    return Column(
          children: <Widget>[
            Questao(perguntas[perguntaSelecionada]['texto']),
            ...respostas.map((resp) {
            return Resposta(resp['texto'], 
            () => quandoResponder(resp['pontuacao']),
            );
            }).toList(),
          ],
        );
  }
}