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
          ),
          pageTransitionsTheme: PageTransitionsTheme(builders: {
            TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
            TargetPlatform.android: CupertinoPageTransitionsBuilder(),
          })),
      title: 'Gojo',
      debugShowCheckedModeBanner: false,
      home: SafeArea(child: LoginPage()),
      routes: <String, WidgetBuilder>{
        "/home": (BuildContext context) => SafeArea(child: Home()),
        '/login': (context) => SafeArea(child: LoginPage()),
        '/register': (context) => SafeArea(child: RegisterNewUserPage()),
      },
    );
  }
}
