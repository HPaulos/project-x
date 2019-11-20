import 'package:booker/models/room_details.dart';
import 'package:flutter/cupertino.dart';

class Hotel {
  String name;
  double distance;
  List<String> accomodations;
  double rate;
  List<RoomDetails> rooms;

  Hotel(
      {@required this.name,
      @required this.distance,
      @required this.rate,
      @required this.accomodations,
      @required this.rooms});
}
