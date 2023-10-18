// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;
  final void Function() resetqs;
  const Resultado({super.key, required this.pontuacao, required this.resetqs});
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
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Card(
            elevation: 10,
            borderOnForeground: true,
            margin: EdgeInsets.fromLTRB(60, 0, 60, 0),
            color: Color.fromARGB(255, 0, 94, 255),
            child: Container(
              height: 50,
              alignment: Alignment.center,
              child: Text(
                resultado,
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ),
        ),
        ElevatedButton(
            onPressed: resetqs,
            child: Text(
              'Resetar!',
              style: TextStyle(fontSize: 25, color: Colors.green.shade900),
            ),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                    const Color.fromARGB(255, 64, 177, 74)),
                elevation: MaterialStateProperty.all(5)))
      ],
    );
  }
}
