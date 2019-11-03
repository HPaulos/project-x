import 'package:booker/icons/custome_icons.dart';
import 'package:booker/widget/rate.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HotelDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Color(0xFF53B4DF),
          automaticallyImplyLeading: true,
          title: Text('Go Back To List'),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () => Navigator.pop(context, false),
          )),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.only(top: 3, bottom: 3, left: 5, right: 5),
          child: Column(
            children: <Widget>[
              Container(
                child: SizedBox(
                  height: 259.0,
                  child: Carousel(
                    dotBgColor: Color(0x19000000),
                    autoplay: false,
                    noRadiusForIndicator: true,
                    boxFit: BoxFit.contain,
                    images: [
                      ExactAssetImage("assets/images/room.jpg"),
                      ExactAssetImage("assets/images/bed_room1.jpg"),
                      ExactAssetImage("assets/images/bed_room2.jpg"),
                      ExactAssetImage("assets/images/bed_room3.jpg"),
                      ExactAssetImage("assets/images/bed_room4.jpg"),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 23, right: 23, top: 21),
                          child: Row(
                            children: <Widget>[
                              Column(
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Text(
                                        "Bernos Hotel",
                                        style: TextStyle(
                                          fontSize: 32,
                                          color: Color(0xFF50B6DE),
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Column(
                                        children: <Widget>[
                                          Rate(
                                            3,
                                            fontSize: 23,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Spacer(),
                              Padding(
                                padding: const EdgeInsets.only(
                                    bottom: 30.0, right: 15.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[Favourite(56)],
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(bottom: 23.0, top: 23.0),
                          child: Wrap(
                            alignment: WrapAlignment.center,
                            crossAxisAlignment: WrapCrossAlignment.center,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(7.0),
                                child: Column(
                                  children: <Widget>[
                                    Icon(
                                      Icons.wifi,
                                      size: 56,
                                    ),
                                    Text(
                                      "Wifi",
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Color(0xFF28A1D8),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(7.0),
                                child: Column(
                                  children: <Widget>[
                                    Icon(
                                      CustomeIcons.coffee_cup,
                                      size: 56,
                                    ),
                                    Text(
                                      "Breakfast",
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Color(0xFF28A1D8),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(7.0),
                                child: Column(
                                  children: <Widget>[
                                    Icon(
                                      CustomeIcons.taxi,
                                      size: 56,
                                    ),
                                    Text(
                                      "Pickup",
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Color(0xFF28A1D8),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(7.0),
                                child: Column(
                                  children: <Widget>[
                                    Icon(
                                      CustomeIcons.washing_machine,
                                      size: 56,
                                    ),
                                    Text(
                                      "Loundry",
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Color(0xFF28A1D8),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 23, right: 23),
                          child: RaisedButton(
                            onPressed: () => {},
                            color: Color(0xFF53B4DF),
                            child: Container(
                              alignment: Alignment.center,
                              child: Text(
                                "Book Room",
                                style: TextStyle(
                                    fontSize: 29.0,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              height: 60.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Favourite extends StatefulWidget {
  final double size;

  const Favourite(this.size);

  @override
  State<StatefulWidget> createState() {
    return _FavouriteState(false);
  }
}

class _FavouriteState extends State<Favourite> {
  bool isFavourite;

  _FavouriteState(this.isFavourite);

  @override
  Widget build(BuildContext context) {
    IconData icon = isFavourite ? Icons.favorite : Icons.favorite_border;

    return IconButton(
      icon: Icon(
        icon,
        size: widget.size,
        color: Colors.redAccent,
      ),
      onPressed: () {
        setState(() {
          isFavourite = !isFavourite;
        });
      },
    );
  }
}
