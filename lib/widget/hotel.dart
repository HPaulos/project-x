import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Hotel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 12, right: 12, left: 12),
      child: Container(
        alignment: Alignment.center,
        child: Row(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.only(right: 12),
                ),
                height: 150,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(29),
                        topLeft: Radius.circular(29)),
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
                height: 150,
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 10, left: 10, right: 10, bottom: 10),
                          child: Text(
                            "Hotel Name",
                            style: TextStyle(
                                fontSize: 21,
                                color: Color(0xFF28A1D8),
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Column(
                            children: <Widget>[
                              Icon(
                                Icons.wifi,
                                size: 29,
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
                          padding: const EdgeInsets.all(5.0),
                          child: Column(
                            children: <Widget>[
                              Icon(
                                Icons.star,
                                size: 29,
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
                          padding: const EdgeInsets.all(5.0),
                          child: Column(
                            children: <Widget>[
                              Icon(
                                Icons.add_alarm,
                                size: 29,
                              ),
                              Text(
                                "Shuttle",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xFF28A1D8),
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Column(
                            children: <Widget>[
                              Icon(
                                Icons.web,
                                size: 29,
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
                    )
                  ],
                ),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(29),
                      bottomRight: Radius.circular(29),
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
