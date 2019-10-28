import 'package:booker/icons/custome_icons.dart';
import 'package:booker/pages/hotel-detail.dart';
import 'package:booker/widget/rate.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Hotel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 12, right: 12, left: 12),
      child: Container(
        alignment: Alignment.center,
        child: GestureDetector(
          onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HotelDetail()),
            );
          },
          child: Row(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 12),
                  ),
                  height: 165,
                  decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.only(topLeft: Radius.circular(21)),
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage("assets/images/room.jpg"),
                          repeat: ImageRepeat.noRepeat)),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  alignment: Alignment.topCenter,
                  height: 165,
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 19, top: 5, right: 19),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Text(
                              "10km away",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Color(0xFF28A1D8),
                                  fontWeight: FontWeight.bold),
                            ),
                            Spacer(),
                            Text(
                              "100Br",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Color(0xFF28A1D8),
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 7, right: 7),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Spacer(),
                            Text(
                              "25% Off",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "(125.0Br)",
                              style: TextStyle(
                                  decoration: TextDecoration.lineThrough,
                                  fontSize: 16,
                                  color: Colors.redAccent,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "Hotel Name",
                            style: TextStyle(
                                fontSize: 25,
                                color: Color(0xFF50B6DE),
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Column(
                              children: <Widget>[
                                Icon(
                                  Icons.wifi,
                                  size: 21,
                                ),
                                Text(
                                  "Wifi",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Color(0xFF28A1D8),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Column(
                              children: <Widget>[
                                Icon(
                                  CustomeIcons.coffee_cup,
                                  size: 21,
                                ),
                                Text(
                                  "Breakfast",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Color(0xFF28A1D8),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Column(
                              children: <Widget>[
                                Icon(
                                  CustomeIcons.taxi,
                                  size: 21,
                                ),
                                Text(
                                  "Pickup",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Color(0xFF28A1D8),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Column(
                              children: <Widget>[
                                Icon(
                                  CustomeIcons.washing_machine,
                                  size: 21,
                                ),
                                Text(
                                  "Loundry",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Color(0xFF28A1D8),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 12),
                        child: Rate(4.0),
                      )
                    ],
                  ),
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius:
                              7.0, // has the effect of softening the shadow
                          spreadRadius:
                              5.0, // has the effect of extending the shadow
                          offset: Offset(
                            7.0, // horizontal, move right 10
                            7.0, // vertical, move down 10
                          ),
                        )
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(21),
                      )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
