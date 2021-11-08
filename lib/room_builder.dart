import 'dart:math';
import 'package:text_game/enums/room_type.dart';
import 'package:text_game/domain/room.dart';

class RoomBuilder {
  static String _getRandomDescription() {
    var args = [
      'A gloomy dungeon, a bare brick wall, a collapsed ceiling, several doors leading in different directions',
      'Apparently this is the former armory room. But everything has long been rusted and covered with dust',
      'Looks like something was stored here, wooden shelves, bags',
      'All in a spider web, would rather get to another room',
      'Drip-Drip-Drip - there is a sound of falling drops. Damp and disgusting',
      'Bare stone walls, nothing seems to be here',
      'The remains of furniture suggested that there was once a comoro',
      'Four walls, dry air, nothing special',
      'An ordinary room is four meters by four',
      'This room is larger than usual, but it looks like there is nothing in it.',
      'Apart from the skeleton on the floor, nothing interesting',
      'Long corridor at the end of which doors are visible',
      'Looks like a guard room, a few bunks and a broken cauldron in the corner',
      'An ordinary room, bare walls and stone underfoot'
    ];

    var nextInt = new Random().nextInt(args.length);

    return args[nextInt];
  }

  static Room getRandomRoom() {
    var randomValue = new Random().nextInt(4);

    Room room;

    if (randomValue == 1) {
      room = new Room(_getRandomDescription(), RoomType.MONSTER);
    } else if (randomValue == 0) {
      room = new Room(_getRandomDescription(), RoomType.EMPTY);
    } else {
      room = new Room(_getRandomDescription(), RoomType.HEALTH_WATER);
    }

    return room;
  }
}
