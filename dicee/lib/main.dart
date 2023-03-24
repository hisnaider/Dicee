import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Dicee"),
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
        ),
        backgroundColor: Colors.amber[700],
        body: const DicePage(),
      ),
    );
  }
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDice = 1;
  int rightDice = 1;

  void changeDiceValue() {
    setState(
      () {
        leftDice = Random().nextInt(6) + 1;
        rightDice = Random().nextInt(6) + 1;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: TextButton(
              onPressed: () => changeDiceValue(),
              child: Image.asset("images/$leftDice.png"),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () => changeDiceValue(),
              child: Image.asset("images/$rightDice.png"),
            ),
          )
        ],
      ),
    );
  }
}
