import 'package:findaid/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:findaid/widgets/similar_item.dart';
import 'package:findaid/mainPage.dart';

class safe extends StatefulWidget {
  const safe({super.key});

  @override
  State<safe> createState() => _safeState();
}

class _safeState extends State<safe> {
  @override
  Widget build(BuildContext context) {
    List<SimilarItems> lists = [SimilarItems(itemName: "Rolex Watch", itemDescription: "A green rolex watch", itemImage:"https://cdn2.chrono24.com/images/uhren/25614084-279uvoi63jb9c5lfv78zbnfj-ExtraLarge.jpg"),
      SimilarItems(itemName: "Apple Macbook", itemDescription: "A black apple macbook pro", itemImage:"https://9to5mac.com/wp-content/uploads/sites/6/2023/11/macbook-pro-space-black0000.jpg?quality=82&strip=all&w=1600"),
      SimilarItems(itemName: "Apple Iphone", itemDescription: "A black apple iphone", itemImage:"https://ik.imagekit.io/3dqckpw4d/upload/iphone_12___Black1657182277iphone-12-black.png")];
    final orientation =
        MediaQuery.of(context).orientation;
    return Scaffold(
      backgroundColor: backgroundcolor,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.05,
            vertical: MediaQuery.of(context).size.height*0.05),
        child: Container(
          decoration: BoxDecoration(
            color: appbarcolor,
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

                      child: Text("List Of Items for Security",
                        textAlign: TextAlign.center,
                      ),
                    ),
                  )

              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('      Click to add more'),
                  IconButton(onPressed: () {}, icon: Icon(Icons.add_circle_outline_outlined),
                  ),
                  Spacer()
                ],),
              Expanded(child: ListView.builder(
                itemCount: lists.length,
                itemBuilder: (context, index) {
                  return SimilarItems(
                    itemDescription: lists[index].itemDescription,
                    itemName: lists[index].itemName,
                    itemImage: lists[index].itemImage,
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
