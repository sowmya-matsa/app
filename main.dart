import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("example of grid view"),
        ),
        body: GridView.count(
            crossAxisCount: 3,
            crossAxisSpacing: 2.0,
            mainAxisSpacing: 2.0,
            children: List.generate(choices.length, (index) {
              return Center(
                child: Random(choice: choices[index]),
              );
            })),
      ),
    );
  }
}

class Choice {
  const Choice({this.numbers, this.colors});
  final String numbers;
  final colors;
}

const List<Choice> choices = const <Choice>[
  const Choice(numbers: 'first', colors: Colors.blue),
  const Choice(numbers: 'Second', colors: Colors.red),
  const Choice(numbers: 'third', colors: Colors.orange),
  const Choice(numbers: 'fourth', colors: Colors.yellow),
  const Choice(numbers: 'fifth', colors: Colors.black),
  const Choice(numbers: 'sixth', colors: Colors.blue),
  const Choice(numbers: 'seventh', colors: Colors.pink),
  const Choice(numbers: "Eigth", colors: Colors.purple),
  const Choice(numbers: 'Ninth', colors: Colors.green),
];

class Random extends StatelessWidget {
  const Random({Key key, this.choice}) : super(key: key);
  final Choice choice;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          width: 120,
          height: 120,
          color: choice.colors,
          child: Center(
            child: Text(
              choice.numbers,
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
