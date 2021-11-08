import 'package:flutter/material.dart';
import 'game_page.dart';

class WinPage extends StatelessWidget {
  const WinPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.greenAccent[400],
      child: TextButton(
        onPressed: () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => GamePage())),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Center(
                child: Text(
                  "YOU ARE WIN!",
                  style: TextStyle(
                    fontFamily: "NewTegomin",
                    fontSize: 42,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            Container(
              child: Text(
                "MY CONGRATULATIONS!",
                style: TextStyle(
                  fontFamily: "NewTegomin",
                  fontSize: 35,
                  color: Colors.black,
                ),
              ),
            ),
            Container(
              child: Text(
                "Let's try your luck again",
                style: TextStyle(
                  fontFamily: "NewTegomin",
                  fontSize: 28,
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
