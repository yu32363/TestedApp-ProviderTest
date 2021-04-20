import 'package:flutter/material.dart';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final String data = 'This is data';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(data),
        ),
        body: Level1(
          data: data,
        ),
      ),
    );
  }
}

class Level1 extends StatelessWidget {
  final String data;
  Level1({this.data});
  @override
  Widget build(BuildContext context) {
    return Level2(
      data: data,
    );
  }
}

class Level2 extends StatelessWidget {
  final String data;
  Level2({this.data});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(),
        Level3(
          data: data,
        ),
      ],
    );
  }
}

class Level3 extends StatelessWidget {
  final String data;
  Level3({this.data});
  @override
  Widget build(BuildContext context) {
    return Text(data);
  }
}
