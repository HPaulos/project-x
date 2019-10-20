import 'package:booker/commons/phoneNumberInputFormatter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PasswordPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF28A1D8),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(
                      left: 8.0, right: 8.0, bottom: 29.0),
                  child: Text(
                    "Project-X",
                    style: TextStyle(
                        fontSize: 46.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 21, left: 12, right: 12),
              child: Container(
                alignment: Alignment.center,
                child: TextField(
                  inputFormatters: [LengthLimitingTextInputFormatter(29)],
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Your Password",
                    hintStyle: TextStyle(
                        fontSize: 29.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                    prefixIcon: Icon(
                      Icons.lock,
                      color: Colors.white,
                    ),
                    prefixStyle: TextStyle(
                        fontSize: 29.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  cursorColor: Colors.white,
                  style: TextStyle(
                      fontSize: 29.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                height: 60.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  color: Color(0xFF50B6DE),
                ),
              ),
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 21, left: 12, right: 12),
                    child: Material(
                      color: Color(0xFF28A1D8),
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).pushNamed("/login");
                        },
                        onDoubleTap: () {
                          Navigator.of(context).pushNamed("/login");
                        },
                        child: Container(
                          alignment: Alignment.center,
                          child: Text(
                            "Login User",
                            style: TextStyle(
                                fontSize: 29.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          height: 60.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.0),
                            color: Color(0xFF50B6DE),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
