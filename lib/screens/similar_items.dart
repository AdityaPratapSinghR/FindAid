
import'package:flutter/material.dart';
import 'package:findaid/widgets/similar_item.dart';

class SimilarItemsPage extends StatefulWidget {

  @override
  State<SimilarItemsPage> createState() => _SimilarItemsPageState();
}

class _SimilarItemsPageState extends State<SimilarItemsPage> {
  @override
  Widget build(BuildContext context) {
    final orientation =
        MediaQuery.of(context).orientation;
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Align(
          alignment: Alignment.center,
          child: Container( decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
          ),
            height: orientation == Orientation.portrait
                ? MediaQuery.of(context).size.height*0.05
                : MediaQuery.of(context).size.height*0.1,
            width: orientation == Orientation.portrait
                ? MediaQuery.of(context).size.width*0.7
                : MediaQuery.of(context).size.width*0.5,

            child: Text("Similar Founded Items",
              textAlign: TextAlign.center,
            ),
          ),
        ),),
      body: Padding(
        padding:  EdgeInsets.fromLTRB(MediaQuery.of(context).size.width*0.03, 0, MediaQuery.of(context).size.width*0.03, MediaQuery.of(context).size.height*0.03),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.grey[600],
            borderRadius: BorderRadius.circular(5),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
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
