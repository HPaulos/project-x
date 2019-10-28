import 'package:booker/commons/phoneNumberInputFormatter.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF28A1D8),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 29, right: 29),
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
                padding: const EdgeInsets.only(top: 5, left: 12, right: 12),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text(
                          "Phone Number",
                          style: TextStyle(
                            fontSize: 19,
                            color: Color(0xAAFFFFFF),
                          ),
                        )
                      ],
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: TextField(
                        inputFormatters: [PhoneNumberInputFormatte()],
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(
                            Icons.phone,
                            color: Colors.white,
                          ),
                          prefixText: " (251) 9",
                          prefixStyle: TextStyle(
                              fontSize: 23.0,
                              color: Color(0xAAFFFFFF),
                              fontWeight: FontWeight.bold),
                        ),
                        cursorColor: Colors.white,
                        style: TextStyle(
                            fontSize: 23.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      height: 60.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.0),
                        color: Color(0xFF50B6DE),
                      ),
                    ),
                  ],
                ),
              ),              
              Padding(
                padding: const EdgeInsets.only(top: 5, left: 12, right: 12),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text(
                          "Password",
                          style: TextStyle(
                            fontSize: 19,
                            color: Color(0xAAFFFFFF),
                          ),
                        )
                      ],
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: TextField(
                        inputFormatters: [LengthLimitingTextInputFormatter(29)],
                        obscureText: true,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Your Password",
                          hintStyle: TextStyle(
                              fontSize: 23.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                          prefixIcon: Icon(
                            Icons.lock,
                            color: Colors.white,
                          ),
                          prefixStyle: TextStyle(
                              fontSize: 23.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        cursorColor: Colors.white,
                        style: TextStyle(
                            fontSize: 23.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      height: 60.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.0),
                        color: Color(0xFF50B6DE),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding:
                          const EdgeInsets.only(top: 21, left: 12, right: 12),
                      child: RaisedButton(
                        onPressed: () => {
                          Navigator.pushNamedAndRemoveUntil(
                              context, "/home", (Route<dynamic> route) => false)
                        },
                        color: Colors.white,
                        child: Container(
                          alignment: Alignment.center,
                          child: Text(
                            "Login",
                            style: TextStyle(
                                fontSize: 29.0,
                                color: Color(0xFF50B6DE),
                                fontWeight: FontWeight.bold),
                          ),
                          height: 60.0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Padding(
                        padding:
                            const EdgeInsets.only(top: 29, left: 12, right: 12),
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: RichText(
                            text: TextSpan(
                                style: TextStyle(
                                    fontSize: 21.0,
                                    color: Colors.white,
                                    decoration: TextDecoration.underline,
                                    fontWeight: FontWeight.bold),
                                text: "Register New User",
                                recognizer: new TapGestureRecognizer()
                                  ..onTap = () {
                                    Navigator.pushNamed(context, '/register');
                                  }),
                          ),
                        )),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
