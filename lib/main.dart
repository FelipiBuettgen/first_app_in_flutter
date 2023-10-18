// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'questionario.dart';
import 'package:flutter/material.dart';
import 'resultado.dart';

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
  int totalpontos = 0;
  static const _perguntas = [
    {
      'texto': 'Qual sua cor favorita ?',
      'respostas': [
        {'texto': 'Preto', 'pontos': 10},
        {'texto': 'Vermelho', 'pontos': 5},
        {'texto': 'Azul', 'pontos': 6},
        {'texto': 'Roxo', 'pontos': 7},
      ]
    },
    {
      'texto': 'Qual seu animal favorito ?',
      'respostas': [
        {'texto': 'Gato', 'pontos': 10},
        {'texto': 'Cachorro', 'pontos': 10},
        {'texto': 'Passaro', 'pontos': 6},
        {'texto': 'Peixe', 'pontos': 4},
      ]
    },
    {
      'texto': 'Qual seu feriado favorito ?',
      'respostas': [
        {'texto': 'Natal', 'pontos': 10},
        {'texto': 'Ano Novo', 'pontos': 8},
        {'texto': 'Pascoa', 'pontos': 5},
        {'texto': 'Independencia', 'pontos': 2},
      ]
    }
  ];
  bool get tempergunta {
    return _perguntaSelec < _perguntas.length;
  }

  void _responder(int pontos) {
    setState(() {
      _perguntaSelec++;
      totalpontos += pontos;
      print(totalpontos);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Perguntas!")),
        ),
        body: tempergunta
            ? Questionario(
                perguntaselec: _perguntaSelec,
                perguntas: _perguntas,
                responder: _responder)
            : Resultado(pontuacao: totalpontos),
      ),
    );
  }
}
