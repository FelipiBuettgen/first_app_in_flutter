// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Respostas extends StatelessWidget {
  final String resposta;
  final void Function() rsp;
  const Respostas({super.key, required this.resposta, required this.rsp});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(10),
      child: ElevatedButton(
        onPressed: rsp,
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blueAccent,
            elevation: 5,
            alignment: Alignment.center),
        child: Text(
          resposta,
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
