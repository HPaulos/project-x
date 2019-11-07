import 'package:booker/pages/home/history.dart';
import 'package:booker/pages/home/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'home/search.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  Widget selected = Search();
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFdbdbdb),
        body: selected,
        appBar: AppBar(
          title: Center(
            child: Text(
              'Project-X',
              style: TextStyle(
                  color: Color(0xFFF5F5F5),
                  fontSize: 29,
                  fontWeight: FontWeight.bold),
            ),
          ),
          backgroundColor: Color(0xFF53B4DF),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color(0xFF53B4DF),
          onTap: (int index) {
            setState(() {
              selectedIndex = index;
              if (index == 1) {
                selected = History();
              } else if (index == 2) {
                selected = Profile();
              } else {
                selected = Search();
              }
            });
          },
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.list,
                color: selectedIndex == 0 ? Colors.black : Color(0xFFF5F5F5),
                size: 29,
              ),
              title: Text(
                'Home',
                style: TextStyle(color: Color(0xFFF5F5F5)),
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.history,
                color: selectedIndex == 1 ? Colors.black : Color(0xFFF5F5F5),
                size: 29,
              ),
              title: Text(
                'History',
                style: TextStyle(color: Color(0xFFF5F5F5)),
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.settings,
                color: selectedIndex == 2 ? Colors.black : Color(0xFFF5F5F5),
                size: 29,
              ),
              title: Text(
                'Profile',
                style: TextStyle(color: Color(0xFFF5F5F5)),
              ),
            ),
          ],
        ));
  }
}
