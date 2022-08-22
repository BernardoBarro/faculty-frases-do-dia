import 'dart:math';

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _frases = [
    "Não deixe para amanhã o que você pode fazer semana que vem!",
    "Muito ajuda quem atrapalha!",
    "É só uma fase ruim logo vai piorar!",
    "Lute como nunca, perca como sempre"
  ];

  var _fraseGerada = "Clique abaixo para gerar uma frase!";

  void _gerarFrase() {
    var numeroSorteado = Random().nextInt(_frases.length);

    setState(() {
      _fraseGerada = _frases[numeroSorteado];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text("Frases do dia"),
          ),
          backgroundColor: Colors.green,
        ),
        body: Center(
          child: Container(
            padding: EdgeInsets.all(16),
            // width: double.infinity,
            // decoration:
            //     BoxDecoration(border: Border.all(width: 3, color: Colors.amber)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset("images/frasesDoDia.png"),
                Text(
                  _fraseGerada,
                  textAlign: TextAlign.justify,
                  style: const TextStyle(
                    fontSize: 30,
                    fontStyle: FontStyle.italic,
                    color: Colors.black,
                  ),
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.green,
                        elevation: 0,
                        fixedSize: Size(220, 80)),
                    onPressed: _gerarFrase,
                    child: Text(
                      "Nova frase",
                      style: TextStyle(fontSize: 25),
                    )),
              ],
            ),
          ),
        ));
  }
}
