import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

main () => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {

  var _perguntaSelecionada = 0;

  final _perguntas = const [
     {
       'texto':'Qual é a sua cor favorita?',
       'respostas': ['Preto','Vermelho','Verde','Branco']
     },
     {
       'texto':'Qual é o seu animal favorito?',
       'respostas': ['Coelho','Cobra','Elefante','Leão']
     },
     {
       'texto':'Qual é o seu time favorito?',
       'respostas': ['Galo','América','Cruzeiro']
     },
    ];

  void _responder(){
    if(temPerguntaSelecionada){
    setState(() {
      _perguntaSelecionada++ ;
    });
    }
  }

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext contex) {

    List<String> respostas = temPerguntaSelecionada ? _perguntas[_perguntaSelecionada]['respostas'] : null;

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: temPerguntaSelecionada ? Column(
          children: [
            Questao(_perguntas[_perguntaSelecionada]['texto']),
            ...respostas.map((t)=> Resposta(t, _responder)).toList()
          ],
        ): Center(
          child: Text(
            'Parabéns',
            style: TextStyle(fontSize: 28),
            ),
          ), 
      )
    );
    
  }
}

class PerguntaApp extends StatefulWidget {
  _PerguntaAppState createState(){
      return _PerguntaAppState();
  }
}