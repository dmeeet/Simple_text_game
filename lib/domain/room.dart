import 'package:text_game/enums/room_type.dart';

class Room {
  String _description;
  RoomType _roomType;

  Room(this._description, this._roomType);

  String get description => _description;

  set setDescription(String value) {
    _description = value;
  }

  set description(String value) {
    _description = value;
  }

  RoomType get roomType => _roomType;

  set roomType(RoomType value) {
    _roomType = value;
  }
}
