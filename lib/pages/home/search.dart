import 'package:booker/models/hotel.dart';
import 'package:booker/models/rooml.dart';
import 'package:booker/widget/room_detail_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Hotel hotel =
        Hotel(distance: 10.0, name: "Bernos", rate: 4.0, accomodations: [
      "loundry",
      "pickup",
      "bar",
      "restaurant"
    ], rooms: [
      Room(
        discountInPercent: 25.0,
        isAvaliable: true,
        type: "One Bed Room",
        originalPrice: 250.0,
      )
    ]);
    int selectedRoomIndex = 0;

    return Column(
      children: <Widget>[
        new SearchBar(),
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

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border(
              left: BorderSide(
                width: 2,
                color: Color(0xFF50B6DE),
              ),
              right: BorderSide(
                width: 2,
                color: Color(0xFF50B6DE),
              ),
              bottom: BorderSide(
                width: 2,
                color: Color(0xFF50B6DE),
              ))),
      child: new SearchBarTextBox(),
    );
  }
}

class SearchBarTextBox extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SearchBarTextBoxState();
  }
}

class _SearchBarTextBoxState extends State<SearchBarTextBox> {
  TextEditingController _controller;

  _SearchBarTextBoxState() {
    this._controller = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    var textField = TextField(
      controller: this._controller,
      style: TextStyle(fontSize: 21, fontWeight: FontWeight.normal),
      decoration: InputDecoration(
        hintText: "Where are you checking",
        hintStyle: TextStyle(fontWeight: FontWeight.normal, fontSize: 16),
        border: InputBorder.none,
        prefixIcon: Icon(
          Icons.search,
          color: Colors.black,
        ),
        suffixIcon: IconButton(
          color: Colors.black,
          onPressed: () {
            setState(() {
              _controller.clear();
            });
          },
          icon: Icon(Icons.clear),
        ),
      ),
    );
    return textField;
  }
}
