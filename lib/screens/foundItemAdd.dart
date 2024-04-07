import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
class foundItem extends StatefulWidget {
  const foundItem({super.key});

  @override
  State<foundItem> createState() => _foundItemState();
}

class _foundItemState extends State<foundItem> {
  List<String> imageUrls = ["url1","url2"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: InkWell(child: Text("Send"),
        onTap: ()=>addFoundItem("89900","Electronics","Laptop","Black","HP","A small laptop","Victus",imageUrls,"Aditya P","74838389292",""),),
      ),
    );
  }
}

Future<void> addFoundItem(
    String id,
    String category,
    String subcategory,
    String color,
    String company,
    String description,
    String model,
    List<String> images,
    String founderName,
    String founderNumber,
    String locationData) {
  CollectionReference foundCollection = FirebaseFirestore.instance.collection("found");

  return foundCollection
      .add({
    'id': id,
    'category': category,
    'subcategory': subcategory,
    'company': company,
    'model': model,
    'color': color,
    'description': description,
    'images':images,
    'founderName':founderName,
    'founderNumber':founderNumber,
    "location":locationData
  })
      .then((value) => print("Data added successfully!"))
      .catchError((error) => print("Failed to add Data: $error"));
}
