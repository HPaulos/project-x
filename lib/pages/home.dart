import 'package:booker/widget/hotel.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFdbdbdb),
        body: Container(
          child: ListView(
            scrollDirection: Axis.vertical,
            children: <Widget>[
              Hotel(),
              Hotel(),
              Hotel(),
              Hotel(),
              Hotel(),
              Hotel(),
              Hotel(),
              Hotel(),
              Hotel(),
              Hotel(),
              Hotel(),
              Hotel()
            ],
          ),
        ),
        appBar: AppBar(
          title: Center(
            child: Text(
              'Project-X',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 29,
                  fontWeight: FontWeight.bold),
            ),
          ),
          backgroundColor: Color(0xFF53B4DF),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color(0xFF53B4DF),
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.list,
                color: Colors.white,
                size: 29,
              ),
              title: Text(
                'Home',
                style: TextStyle(color: Colors.white),
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.history,
                color: Colors.white,
                size: 29,
              ),
              title: Text(
                'History',
                style: TextStyle(color: Colors.white),
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.settings,
                color: Colors.white,
                size: 29,
              ),
              title: Text(
                'Profile',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ));
  }
}
