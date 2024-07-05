import 'package:flutter/material.dart';

class Review {
  int? _reviewId;
  int? _userId;
  int? _restaurant_addressId;
  String? _comment;
  DateTimeRange? _dateposted;
  int? _rating;

  Review(
    this._reviewId,
    this._userId,
    this._restaurant_addressId,
    this._comment,
    this._dateposted,
    this._rating
  );
}