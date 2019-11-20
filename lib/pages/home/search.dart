import 'package:booker/models/hotel.dart';
import 'package:booker/models/room_details.dart';
import 'package:booker/widget/room_detail_card.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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
      RoomDetails(
        discountInPercent: 25.0,
        isAvaliable: true,
        type: "One Bed Room",
        originalPrice: 250.0,
      )
    ]);
    int selectedRoomIndex = 0;

    return Column(
      children: <Widget>[
        SearchBar(),
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
    final format = DateFormat("MM/dd/yyyy");

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
      child: Column(
        children: <Widget>[
          Container(
            color: Color(0xFFF5F5F5),
            child: Row(
              children: <Widget>[
                Expanded(child: SearchBarTextBox()),
              ],
            ),
          ),
          Container(
            child: Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 7, top: 5, bottom: 7),
                    child: DecoratedBox(
                        decoration: BoxDecoration(
                            color: Color(0xFFF5F5F5),
                            border: Border(
                                right: BorderSide(
                                    width: 3.0, color: Colors.redAccent))),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 5.0),
                          child: Container(
                            child: Column(
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Text(
                                      "Check in",
                                      style: TextStyle(fontSize: 12),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Text(
                                      "Nov 13, 2019",
                                      style: TextStyle(fontSize: 19),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        )),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 7, top: 5, bottom: 7),
                    child: DecoratedBox(
                        decoration: BoxDecoration(
                            color: Color(0xFFF5F5F5),
                            border: Border(
                                right: BorderSide(
                                    width: 3.0, color: Colors.blueAccent))),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 5.0),
                          child: Column(
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Text(
                                    "Check out",
                                    style: TextStyle(fontSize: 12),
                                  ),
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  Text(
                                    "Nov 12, 2019",
                                    style: TextStyle(fontSize: 19),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 7.0),
                    child: DecoratedBox(
                        decoration: BoxDecoration(
                            color: Color(0xFFF5F5F5),
                            border: Border(
                                right: BorderSide(
                                    width: 3.0, color: Colors.redAccent))),
                        child: Container(
                          child: Column(
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(left: 5),
                                    child: Text(
                                      "Adults",
                                      style: TextStyle(fontSize: 16),
                                    ),
                                  ),
                                  Spacer(),
                                  NumberDropDown()
                                ],
                              ),
                            ],
                          ),
                        )),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 7.0),
                    child: DecoratedBox(
                        decoration: BoxDecoration(
                            color: Color(0xFFF5F5F5),
                            border: Border(
                                right: BorderSide(
                                    width: 3.0, color: Colors.blueAccent))),
                        child: Container(
                          child: Column(
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(left: 5),
                                    child: Text(
                                      "Children",
                                      style: TextStyle(fontSize: 16),
                                    ),
                                  ),
                                  Spacer(),
                                  NumberDropDown()
                                ],
                              ),
                            ],
                          ),
                        )),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class NumberDropDown extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _NumberDropDownState();
  }
}

class _NumberDropDownState extends State<NumberDropDown> {
  String _selectedValue = '1';

  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButton<String>(
        value: _selectedValue,
        items: <String>['1', '2', '3', '4', '5', '6', '7'].map((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(
              value,
              style: TextStyle(fontSize: 16),
            ),
          );
        }).toList(),
        onChanged: (newValue) {
          setState(() {
            _selectedValue = newValue;
          });
        },
      ),
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
    return TextField(
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
  }
}
