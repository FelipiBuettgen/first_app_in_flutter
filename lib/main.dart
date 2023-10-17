// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'questao.dart';
import 'resposta.dart';

main() {
  runApp(PerguntaApp());
}

class PerguntaApp extends StatefulWidget {
  const PerguntaApp({super.key});

  @override
  State<PerguntaApp> createState() => _PerguntaAppState();
}

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelec = 0;

  void _responder() {
    setState(() {
      _perguntaSelec++;
      if (_perguntaSelec == 3) _perguntaSelec = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    final perguntas = [
      {
        'texto': 'Qual sua cor favorita ?',
        'respostas': ['Preto', 'Vermelho', 'Azul', 'Roxo']
      },
      {
        'texto': 'Qual seu animal favorito ?',
        'respostas': ['Gato', 'Cachorro', 'Passaro', 'Peixe']
      },
      {
        'texto': 'Qual seu feriado favorito ?',
        'respostas': ['Natal', 'Ano Novo', 'Pascoa', 'Independencia']
      }
    ];
    List<String> resps = perguntas[_perguntaSelec].cast()['respostas'];
    List<Widget> respostas =
        resps.map((e) => Respostas(resposta: e, rsp: _responder)).toList();

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Perguntas!")),
        ),
        body: Column(
          children: [
            Questao(texto: perguntas[_perguntaSelec]['texto'].toString()),
            ...respostas
          ],
        ),
      ),
    );
  }
}
