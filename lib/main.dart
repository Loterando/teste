import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Color> colorsList = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.yellow,
    Colors.cyan,
    Colors.pink,
    Colors.black,
    Colors.grey,
    Colors.indigo,
    Colors.orange,
    Colors.orangeAccent,
    Colors.deepPurpleAccent,
    Colors.pinkAccent,
    Colors.teal,
    Colors.tealAccent,
    Colors.lightGreenAccent,
  ];
  void getRandomColor() {
    setState(() {
      final index = Random().nextInt(colorsList.length);
      color = colorsList[index];
    });
  }

  Color color = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Container(
        color: color,
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(16),
            child: TextField(
              key: Key("meu-textfield"),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        key: const Key("meu-botao"),
        onPressed: () {
          getRandomColor();
        },
        child: const Icon(Icons.refresh),
      ),
    );
  }
}
