import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Items{
  String docId;
  String id;
  String category;
  String subCategory;
  String company;
  String model;
  String color;
  String name;
  String number;
  List<dynamic> images;
  String lastLocation;
  String description;
  Items({required this.docId, required this.id,required this.category,required this.subCategory, required this.company, required this.model,
  required this.color, required this.description, required this.name, required this.number, required this.images, required this.lastLocation});

}