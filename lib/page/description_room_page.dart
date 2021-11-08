import 'package:flutter/material.dart';

class DescriptionRoomPage extends StatelessWidget {
  String _descriptionText;

  DescriptionRoomPage(this._descriptionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextButton(
        onPressed: () => Navigator.pop(context),
        child: AlertDialog(
          backgroundColor: Colors.blueGrey,
          title: Text(
            _descriptionText,
            style: TextStyle(
              fontFamily: "NewTegomin",
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
