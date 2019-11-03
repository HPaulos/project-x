import 'package:booker/models/rooml.dart';
import 'package:flutter/foundation.dart';

class AvaliableRooms extends ChangeNotifier {
  final List<Room> rooms = [];
  String cityName;

}
