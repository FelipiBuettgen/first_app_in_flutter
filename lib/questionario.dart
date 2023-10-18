import 'package:flutter/material.dart';
import 'resposta.dart';
import 'questao.dart';

class Questionario extends StatelessWidget {
  final int perguntaselec;
  final List<Map<String, Object>> perguntas;
  final void Function(int) responder;

  const Questionario({
    super.key,
    required this.perguntaselec,
    required this.perguntas,
    required this.responder,
  });
  bool get tempergunta {
    return perguntaselec < perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> respostas = tempergunta
        ? perguntas[perguntaselec].cast()['respostas']
            as List<Map<String, Object>>
        : [];

    return Column(children: [
      Questao(texto: perguntas[perguntaselec]['texto'].toString()),
      ...respostas
          .map((e) => Respostas(
              resposta: e['texto'] as String,
              rsp: () => responder(int.parse(e['pontos'].toString()))))
          .toList(),
    ]);
  }
}
