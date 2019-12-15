import 'package:booker/models/hotel.dart';
import 'package:booker/models/room_details.dart';
import 'package:booker/widget/room_detail_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class History extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFdbdbdb),
      child: Padding(
        padding: const EdgeInsets.only(
          top: 0,
        ),
        child: Activities(),
      ),
    );
  }
}

class Activities extends StatelessWidget {
  Hotel hotel =
      Hotel(distance: 10.0, name: "Bernos", rate: 4.0, accomodations: [
    "loundry",
    "pickup",
    "bar",
    "restaurant"
  ], rooms: [
    RoomDetails(
      discountInPercent: 25.0,
      isAvaliable: true,
      type: "One Bed Room",
      originalPrice: 250.0,
    )
  ]);
  int selectedRoomIndex = 0;
  List<bool> _isSelected = [false, false, false];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        FilterBar(
          onUpdte: (selected) {
            print("Is updated....");
            print(selected.toString());
          },
        ),
        Expanded(
          child: ListView(
            scrollDirection: Axis.vertical,
            children: <Widget>[
              RoomDetailCard(hotel, selectedRoomIndex),
              RoomDetailCard(hotel, selectedRoomIndex),
              RoomDetailCard(hotel, selectedRoomIndex),
              RoomDetailCard(hotel, selectedRoomIndex),
              RoomDetailCard(hotel, selectedRoomIndex),
              RoomDetailCard(hotel, selectedRoomIndex),
              RoomDetailCard(hotel, selectedRoomIndex),
              RoomDetailCard(hotel, selectedRoomIndex),
              RoomDetailCard(hotel, selectedRoomIndex),
              RoomDetailCard(hotel, selectedRoomIndex),
              RoomDetailCard(hotel, selectedRoomIndex),
              RoomDetailCard(hotel, selectedRoomIndex),
              RoomDetailCard(hotel, selectedRoomIndex),
              RoomDetailCard(hotel, selectedRoomIndex),
              RoomDetailCard(hotel, selectedRoomIndex),
              Padding(
                padding: EdgeInsets.only(bottom: 10.0),
                child: Column(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class FilterBar extends StatefulWidget {
  Function(List<bool>) onUpdte;

  FilterBar({@required this.onUpdte});

  @override
  State<StatefulWidget> createState() {
    return _FilterBarState();
  }
}

class _FilterBarState extends State<FilterBar> {
  List<bool> _isSelected = [false, false, false];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFF5F5F5),
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Column(
              children: <Widget>[
                Center(
                  child: Switch(
                    onChanged: (val) {},
                    value: true,
                  ),
                ),
                Text("Incoming")
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(
              children: <Widget>[
                Center(
                  child: Switch(
                    onChanged: (val) {},
                    value: true,
                  ),
                ),
                Text("History")
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(
              children: <Widget>[
                Center(
                  child: Switch(
                    onChanged: (val) {},
                    value: true,
                  ),
                ),
                Text("Favourite")
              ],
            ),
          ),
        ],
      ),
    );
  }
}
