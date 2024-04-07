import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
class lostItem extends StatefulWidget {
  const lostItem({super.key});

  @override
  State<lostItem> createState() => _lostItemState();
}

class _lostItemState extends State<lostItem> {
  List<String> imageUrls = ["url1","url2"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: InkWell(child: Text("Send"),
          onTap: ()=>addLostItem("89900","Electronics","Laptop","Black","HP","A small laptop","Victus",imageUrls,"Aditya P","74838389292","Near Mantu Mess"),),
      ),
    );
  }
}

Future<void> addLostItem(
    String id,
    String category,
    String subcategory,
    String color,
    String company,
    String description,
    String model,
    List<String> images,
    String name,
    String number,
    String lostLocation) {
  CollectionReference lostCollection = FirebaseFirestore.instance.collection("lost");

  return lostCollection
      .add({
    'id': id,
    'category': category,
    'subcategory': subcategory,
    'company': company,
    'model': model,
    'color': color,
    'description': description,
    'images':images,
    'founderName':name,
    'founderNumber':number,
    'lostLocation':lostLocation,
  })
      .then((value) => print("Data added successfully!"))
      .catchError((error) => print("Failed to add Data: $error"));
}
