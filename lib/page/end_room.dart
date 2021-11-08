import 'package:flutter/material.dart';
import 'game_over.dart';

class EndRoom extends StatelessWidget {
  const EndRoom({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(10),
      child: TextButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
              side: BorderSide(color: Colors.black))),
          backgroundColor: MaterialStateProperty.all(Colors.grey[700]),
        ),
        onPressed: () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => GameOver())),
        child: Container(
          padding: const EdgeInsets.all(10),
          height: 45,
          width: 130,
          child: Center(
            child: Text(
              "END ROOM",
              style: TextStyle(
                color: Colors.white,
                fontFamily: "NewTegomin",
              ),
            ),
          ),
        ),
      ),
    );
  }
}
