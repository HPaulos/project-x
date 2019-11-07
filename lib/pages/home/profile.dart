import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: RaisedButton(
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, "/login", (Route<dynamic> route) => false);
                  },
                  color: Color(0xFF53B4DF),
                  child: Container(
                    alignment: Alignment.center,
                    child: Text(
                      "Logout",
                      style: TextStyle(
                          fontSize: 29.0,
                          color: Color(0xFFF5F5F5),
                          fontWeight: FontWeight.bold),
                    ),
                    height: 60.0,
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[],
          )
        ],
      ),
    ));
  }
}
