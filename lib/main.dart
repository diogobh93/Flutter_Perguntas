import 'package:flutter/material.dart';
import './questionario.dart';
import './resultado.dart';

main () => runApp(PerguntaApp());

class PerguntaAppState extends State<PerguntaApp> {

  var _perguntaSelecionada = 0;
  var _pontuacaoTotal = 0;
  final _perguntas = const [
     {
       'texto':'Qual é a sua cor favorita?',
       'respostas': [
         {'texto':'Preto', 'pontuacao': 10},
         {'texto':'Vermelho','pontuacao': 8},
         {'texto':'Verde','pontuacao': 7},
         {'texto':'Branco','pontuacao': 9}]
     },
     {
       'texto':'Qual é o seu animal favorito?',
       'respostas': [
         {'texto':'Coelho','pontuacao': 8},
         {'texto':'Cobra','pontuacao': 2},
         {'texto':'Elefante','pontuacao': 5},
         {'texto':'Leão','pontuacao': 10}]
     },
     {
       'texto':'Qual é o seu time favorito?',
       'respostas': [
       {'texto':'Galo','pontuacao': 10},
       {'texto':'América','pontuacao': 5},
       {'texto':'Cruzeiro','pontuacao': 1}]
     },
    ];

  void _responder(int pontuacao){
    if(temPerguntaSelecionada){
    setState(() {
      _perguntaSelecionada++ ;
      _pontuacaoTotal += pontuacao;
    });
    }
    print(_pontuacaoTotal);
  }

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext contex) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ), body: temPerguntaSelecionada 
        ? Questionario(
          perguntas: _perguntas,
          perguntaSelecionada: _perguntaSelecionada,
          quandoResponder: _responder,
        ) 
        : Resultado(_pontuacaoTotal)
      )
    );
    
  }
}

class PerguntaApp extends StatefulWidget {
  PerguntaAppState createState(){
      return PerguntaAppState();
  }
}