import 'package:flutter/material.dart';

main () => runApp(PerguntaApp());

class PerguntaApp extends StatelessWidget {

@override
  Widget build(BuildContext contex) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Text('Olá Flutter!'),
      )
    );
    
  }
}