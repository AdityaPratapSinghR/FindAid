import 'package:flutter/cupertino.dart';
import'package:flutter/material.dart';
import 'package:findaid/widgets/similar_item.dart';

class SimilarLostItemsPage extends StatefulWidget {

  @override
  State<SimilarLostItemsPage> createState() => _SimilarLostItemsPageState();
}

class _SimilarLostItemsPageState extends State<SimilarLostItemsPage> {
  @override
  Widget build(BuildContext context) {
    final orientation =
        MediaQuery.of(context).orientation;
    return Scaffold(
      backgroundColor: Colors.grey,
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

                      child: Text("Similar Lost Items",
                        textAlign: TextAlign.center,
                      ),
                    ),
                  )

              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(onPressed: () {}, icon: Icon(Icons.arrow_circle_left),),
                  Text('Click to go back to details entry page        '),
                ],),
              Expanded(child: ListView.builder(
                itemCount: 2,
                itemBuilder: (context, index) {
                  return SimilarItems(
                    itemDescription: "found a watch",
                    itemName: "watch",
                    itemImage: 'https://picsum.photos/250?image=9',
                  );
                },
              ))
            ],



          ),
        ),
      ),

    );
  }
}
