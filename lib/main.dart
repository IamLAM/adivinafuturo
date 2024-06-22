import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: BallPage(),
    ),
  );
}

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(
        title: Center(
          child: Text(
            "Preguntame",
            style: TextStyle(color: Colors.white),
          ),
        ),
        backgroundColor: Colors.orange[900],
      ),
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  const Ball({super.key});

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  int balln = 1;

  void cambiarBola() {
    setState(() {
      balln = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          cambiarBola();
          print("Presiono el botón adivinador");
        },
        child: Image.asset("images/ball$balln.png"),
      ),
    );
  }
}
