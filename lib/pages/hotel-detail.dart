import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HotelDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFdbdbdb),
      appBar: AppBar(
          backgroundColor: Color(0xFF53B4DF),
          automaticallyImplyLeading: true,
          title: Text('AppBar Back Button'),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () => Navigator.pop(context, false),
          )),
      body: Column(
        children: <Widget>[
          Container(
            child: Text("Some text"),
          )
        ],
      ),
    );
  }
}
