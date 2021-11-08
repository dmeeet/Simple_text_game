import 'package:flutter/material.dart';
import 'package:text_game/page/game_page.dart';

class GameOver extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.redAccent[400],
      child: TextButton(
        onPressed: () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => GamePage())),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Text(
                "YOU LOSE!",
                style: TextStyle(
                  fontFamily: "NewTegomin",
                  fontSize: 42,
                  color: Colors.black,
                ),
              ),
            ),
            Container(
              child: Text(
                "TAP FOR THE NEW GAME",
                style: TextStyle(
                  fontFamily: "NewTegomin",
                  fontSize: 42,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
