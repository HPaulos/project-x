import 'dart:math';

import 'package:booker/models/hotel.dart';
import 'package:booker/models/room_details.dart';
import 'package:booker/widget/room_detail_card.dart';
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
          new FilterBar()
        ],
      ),
    );
  }
}

class FilterBar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FilterBarState();
  }
}

class _FilterBarState extends State<FilterBar> {
  bool showFilters = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Visibility(
          visible: showFilters,
          child: Container(
            child: Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 5, right: 5, top: 5, bottom: 5),
                    child: DatePicker(
                      name: "Check in",
                      color: Color(0xA03CB371),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 5, right: 5, top: 5, bottom: 5),
                    child: DatePicker(
                      name: "Check out",
                      color: Color(0xA0FF5555),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Visibility(
          visible: showFilters,
          child: Container(
            child: Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 5, right: 5, top: 3, bottom: 3),
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
                                  NumberDropDown(
                                    options: <String>[
                                      '1',
                                      '2',
                                      '3',
                                      '4',
                                      '5',
                                      '6',
                                      '7',
                                      '8',
                                      '9',
                                      '10'
                                    ],
                                  )
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
                    padding: const EdgeInsets.only(
                        left: 5, right: 5, top: 3, bottom: 3),
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
                                  NumberDropDown(
                                    options: <String>[
                                      '0',
                                      '1',
                                      '2',
                                      '3',
                                      '4',
                                      '5',
                                      '6',
                                      '7',
                                      '8',
                                      '9',
                                      '10'
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                        )),
                  ),
                )
              ],
            ),
          ),
        ),
        Visibility(
          visible: showFilters,
          child: Padding(
            padding:
                const EdgeInsets.only(left: 7, right: 7, top: 5, bottom: 5),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: MaterialButton(
                    color: Color(0xA03CB371),
                    minWidth: double.maxFinite,
                    onPressed: () {},
                    child: Text("Filter Search"),
                  ),
                )
              ],
            ),
          ),
        ),
        Container(
          child: DecoratedBox(
            decoration: BoxDecoration(
                color: Color(0xFF53B4DF),
                border: Border(
                  right: BorderSide(width: 3.0, color: Colors.redAccent),
                  left: BorderSide(width: 3.0, color: Colors.redAccent),
                )),
            child: Padding(
              padding: const EdgeInsets.only(left: 16, right: 7),
              child: Row(
                children: <Widget>[
                  Text(
                    "241 Rooms Found",
                    style: TextStyle(color: Color(0xFFF5F5F5), fontSize: 16),
                  ),
                  Spacer(),
                  IconButton(
                    icon: showFilters
                        ? Transform.rotate(
                          angle: 180 * pi / 180,
                            child: Icon(
                              Icons.filter_list,
                              color: Color(0xFFF5F5F5),
                              size: 29,
                            ),
                          )
                        : Icon(
                            Icons.filter_list,
                            color: Color(0xFFF5F5F5),
                            size: 29,
                          ),
                    onPressed: () {
                      setState(() {
                        showFilters = !showFilters;
                      });
                    },
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class DatePicker extends StatefulWidget {
  final String name;
  final Color color;
  DatePicker({this.name, this.color});

  @override
  State<StatefulWidget> createState() {
    return _DatePickerState();
  }
}

class _DatePickerState extends State<DatePicker> {
  String _value = '';

  @override
  void initState() {
    super.initState();
    _value = DateFormat('MMM dd, yyyy').format(DateTime.now());
  }

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: widget.color,
      onPressed: () async {
        var now = DateTime.now();
        var intialDate;
        if (_value != null) {
          intialDate = DateFormat('MMM dd, yyyy').parse(_value);
        } else {
          intialDate = now;
        }

        Future<DateTime> selectedDate = showDatePicker(
          context: context,
          initialDate: intialDate,
          firstDate: DateTime(now.year),
          lastDate: DateTime(now.year + 2),
          selectableDayPredicate: (date) {
            return true;
          },
          builder: (BuildContext context, Widget child) {
            return Theme(
              data: Theme.of(context),
              child: child,
            );
          },
        );
        DateTime date = await selectedDate;
        setState(() {
          _value = DateFormat('MMM dd, yyyy').format(date);
        });
      },
      child: Padding(
        padding: const EdgeInsets.only(top: 5, bottom: 5),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Text(
                  widget.name,
                  style: TextStyle(fontSize: 12),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Text(
                  _value,
                  style: TextStyle(fontSize: 19),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class NumberDropDown extends StatefulWidget {
  List<String> options;

  NumberDropDown({@required this.options});

  @override
  State<StatefulWidget> createState() {
    return _NumberDropDownState();
  }
}

class _NumberDropDownState extends State<NumberDropDown> {
  String _selectedValue = '1';

  @override
  void initState() {
    super.initState();
    _selectedValue = widget.options[0];
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButton<String>(
        isDense: true,
        value: _selectedValue,
        items: widget.options.map((String value) {
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
