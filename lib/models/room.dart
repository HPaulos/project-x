import 'package:booker/models/hotel.dart';
import 'package:booker/models/room_details.dart';
import 'package:flutter/foundation.dart';

class Room {
  RoomDetails deatils;
  Hotel hotel;

  Room({@required this.hotel, @required this.deatils});
}
