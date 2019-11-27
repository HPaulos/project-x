import 'package:booker/models/hotel.dart';
import 'package:booker/models/room_details.dart';
import 'package:booker/widget/room_detail_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class History extends StatelessWidget {
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

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(      
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Text(
                "Books",
                style: TextStyle(fontSize: 23),
              ),
              Text(
                "Favourite",
                style: TextStyle(fontSize: 23),
              ),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(
            top: 10,
          ),
          child: TabBarView(
            children: [
              Column(
                children: <Widget>[
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
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: Center(
                      child: Text("No result is found."),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
