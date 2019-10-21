import 'package:booker/pages/home.dart';
import 'package:booker/pages/login.dart';
import 'package:booker/pages/register.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          appBarTheme: AppBarTheme(
        color: Color(0xFF50B6DE),
      )),
      title: 'Gojo',
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      routes: <String, WidgetBuilder>{
        "/home": (BuildContext context) => Home(),
        '/login': (context) => LoginPage(),
        '/register': (context) => RegisterNewUserPage()
      },
    );
  }
}
