// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;
  const Resultado({super.key, required this.pontuacao});
  String get resultado {
    if (pontuacao < 15) {
      return "Ok!";
    } else if (pontuacao < 20) {
      return "ótimo";
    } else {
      return "TOP!";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 150,
        height: 150,
        decoration: BoxDecoration(
          border: Border.all(),
          borderRadius: BorderRadius.all(Radius.circular(5)),
        ),
        alignment: Alignment.center,
        child: Text(
          resultado,
          style: TextStyle(fontSize: 25),
        ),
      ),
    );
  }
}
