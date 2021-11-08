import 'package:flutter/material.dart';

class GameState extends StatefulWidget {
  int counter;
  int hpPoints;

  GameState() {
    this.counter = 0;
    this.hpPoints = 5;
  }

  @override
  _GameState createState() => _GameState(counter, hpPoints);
}

class _GameState extends State<GameState> {
  int counter;
  int hpPoints;

  _GameState(this.counter, this.hpPoints);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(counter.toString() + "  " + hpPoints.toString()),
    );
  }
}
