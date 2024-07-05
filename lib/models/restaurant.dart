import 'package:flutter/material.dart';

class Restaurant {
  int? _restaurantId;
  String? _restaurantName;
  String? _description;
  int? _price_range;
  int? _cusinesId;

  Restaurant(
    this._restaurantId,
    this._restaurantName,
    this._description, 
    this._price_range,
    this._cusinesId);

  Restaurant.map(dynamic obj) {
    this._restaurantId=obj['restaurantId'];
    this._restaurantName=obj['restaurantName'];
    this._description=obj['description'];
    this._price_range=obj['price_range'];
    this._cusinesId=obj['cusinesId'];
  }
   int?get restaurantId =>_restaurantId;
  String? get  restaurantName =>_restaurantName;
  String? get description =>_description;
  int?get price_range =>_price_range;
  int? get cusinesId =>_cusinesId;

  Map<String, dynamic> toMap(){
    var map = new Map<String, dynamic>();
    map['restaurantId'] = _restaurantId;
    map['restaurantName'] = _restaurantName;
    map['description'] = _description;
    map['price_range'] = _price_range;
    map['cusinesId'] = _cusinesId;
    return map;
    
  }
  }
  
  

  
