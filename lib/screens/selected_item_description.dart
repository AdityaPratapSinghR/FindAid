import 'package:flutter/cupertino.dart';
import'package:flutter/material.dart';

class itemDescription extends StatefulWidget {
  const itemDescription({super.key});

  @override
  State<itemDescription> createState() => _itemDescriptionState();
}

class _itemDescriptionState extends State<itemDescription> {
  @override
  Widget build(BuildContext context) {
    final orientation =
        MediaQuery.of(context).orientation;
    return Scaffold(backgroundColor: Colors.grey,
        body: Padding(
        padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.05,
    vertical: MediaQuery.of(context).size.height*0.05),
    child: Container(
    decoration: BoxDecoration(
    color: Colors.grey[600],
    borderRadius: BorderRadius.circular(5),
    ),
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    Align(
    alignment: Alignment.topCenter,
    child: Padding(
    padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.03, bottom: MediaQuery.of(context).size.height*0.015),
    child: Container(
    decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(5),
    ),
    height: orientation == Orientation.portrait
    ? MediaQuery.of(context).size.height*0.05
        : MediaQuery.of(context).size.height*0.1,
    width: MediaQuery.of(context).size.width*0.7,

    child: Text("Item Description",
    textAlign: TextAlign.center,
    ),
    ),
    )

    ),
    Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    Text('      Click to go back to list'),
    IconButton(onPressed: () {}, icon: Icon(Icons.add_circle_outline_outlined),
    ),
    Spacer()
    ],),
      Column(
        children: [
          Row(
            children: [

            ],



          ),
        ],
      )
       ]
       ),
       ),)
    );
  }
}


