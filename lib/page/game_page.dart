import 'package:flutter/material.dart';
import 'package:text_game/domain/card_button.dart';
import 'package:text_game/domain/room.dart';
import 'package:text_game/enums/room_type.dart';
import 'package:text_game/game_state.dart';
import 'package:text_game/page/description_room_page.dart';
import 'package:text_game/page/win_page.dart';
import 'package:text_game/room_builder.dart';
import 'end_room.dart';
import 'game_over.dart';

class GamePage extends StatefulWidget {
  @override
  _GamePage createState() => _GamePage();
}

class _GamePage extends State<GamePage> {
  GameState gameState = GameState();

  _GamePage() {
    this.gameState = GameState();
    _hpPoints = gameState.hpPoints;
    _localCounter = gameState.counter;
  }

  int _localCounter;
  int _hpPoints;

  void changeGameState(GameState gameState, Room room) {
    if (_localCounter + 1 == 10) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => WinPage()));
    }
    if (_hpPoints - 1 != 0 && _localCounter + 1 <= 10) {
      setState(() {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DescriptionRoomPage(room.description)));
        _localCounter++;
      });
    } else {
      setState(() {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => GameOver()));
      });
    }
    if (room.roomType == RoomType.MONSTER) {
      setState(() {
        _hpPoints--;
      });
    }
    if (room.roomType == RoomType.HEALTH_WATER) {
      setState(() {
        _hpPoints++;
      });
    }
  }

  CardButton initCard(String name) {
    Room room = RoomBuilder.getRandomRoom();
    return new CardButton(room, () => changeGameState(gameState, room), name);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Scaffold(
            body: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Center(
                        child: Container(
                          margin: const EdgeInsets.all(10),
                          height: 270,
                          child: Container(
                            child: Image(
                              image: AssetImage('assets/images/room_photo.png'),
                            ),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.arrow_right,
                            color: Colors.green[600],
                            size: 24,
                          ),
                          Container(
                            child: Text(
                              "Visited rooms" +
                                  " " +
                                  _localCounter.toString() +
                                  " " +
                                  "|",
                              style: TextStyle(
                                fontFamily: "NewTegomin",
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Container(
                            child: Text(
                              "Your lifes" + " " + _hpPoints.toString(),
                              style: TextStyle(
                                fontFamily: "NewTegomin",
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Icon(
                            Icons.whatshot_outlined,
                            color: Colors.redAccent,
                            size: 17,
                          ),
                        ],
                      ),
                    ],
                  ),
                  initCard("North"),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      initCard("West"),
                      initCard("East"),
                    ],
                  ),
                  initCard("South"),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      EndRoom(),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
