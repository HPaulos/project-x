import 'package:flutter/material.dart';

class Rate extends StatelessWidget {
  final double rate;
  double fontSize;

  Rate(this.rate, {this.fontSize});

  @override
  Widget build(BuildContext context) {
    if (fontSize == null) {
      fontSize = 19;
    }

    List<Widget> icons = [];

    for (int i = 0; i < 5; i++) {
      if (rate > i) {
        icons.add(Icon(
          Icons.star,
          color: Color(0xFFFE9E25),
          size: this.fontSize,
        ));
      } else {
        icons.add(Icon(
          Icons.star_border,
          size: this.fontSize,
        ));
      }
    }

    icons.add(Padding(
      padding: const EdgeInsets.only(left: 23),
      child: Text(
        rate.toString(),
        style: TextStyle(
          color: Colors.black,
          fontSize: this.fontSize,
        ),
      ),
    ));

    return Row(mainAxisAlignment: MainAxisAlignment.center, children: icons);
  }
}
