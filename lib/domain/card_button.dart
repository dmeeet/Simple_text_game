import 'package:flutter/material.dart';
import 'package:text_game/domain/room.dart';

class CardButton extends StatelessWidget {
  Room room;
  Function changeLifeState;
  String _name;

  CardButton(this.room, this.changeLifeState, this._name);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        color: Colors.amber,
        borderRadius: BorderRadius.circular(20),
      ),
      margin: const EdgeInsets.all(2),
      padding: const EdgeInsets.all(2),
      height: 45,
      width: 150,
      child: TextButton(
        onPressed: changeLifeState,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              _name,
              style: TextStyle(
                fontFamily: "NewTegomin",
                fontSize: 22,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
