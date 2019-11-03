import 'package:booker/models/rooml.dart';
import 'package:flutter/cupertino.dart';

class Hotel {
  String name;
  double distance;
  List<String> accomodations;
  double rate;
  List<Room> rooms;

  Hotel(
      {@required this.name,
      @required this.distance,
      @required this.rate,
      @required this.accomodations,
      @required this.rooms});
}
