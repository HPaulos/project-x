import 'package:flutter/material.dart';

class Rate extends StatelessWidget {
  final double rate;

  Rate(this.rate);

  @override
  Widget build(BuildContext context) {
    List<Widget> icons = [];

    for (int i = 0; i < 5; i++) {
      if (rate > i) {
        icons.add(Icon(
          Icons.star,
          color: Color(0xFFFE9E25),
          size: 19,
        ));
      } else {
        icons.add(Icon(
          Icons.star_border,
          size: 19,
        ));
      }
    }

    icons.add(Padding(
      padding: const EdgeInsets.only(left: 5.0),
      child: Text(
        rate.toString(),
        style: TextStyle(
          color: Colors.black,
          fontSize: 19,
        ),
      ),
    ));

    return Row(mainAxisAlignment: MainAxisAlignment.center, children: icons);
  }
}
