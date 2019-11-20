import 'package:flutter/widgets.dart';

class RoomDetails {
  Image primaryImageUrl;
  String type;
  double originalPrice;
  double discountInPercent;
  bool isAvaliable;
  double priceAfterDiscount;

  RoomDetails({
    @required this.type,
    @required this.originalPrice,
    @required this.discountInPercent,
    @required this.isAvaliable,
  }) {
    this.priceAfterDiscount = this.originalPrice -
        ((this.discountInPercent / 100.0) * this.originalPrice);
  }
}
