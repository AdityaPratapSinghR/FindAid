import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:findaid/items.dart';
import 'package:findaid/utils/colors.dart';
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
      backgroundColor: backgroundcolor,
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
              Expanded(child:
              FutureBuilder(
                future: queryFound("Black", "HP", "Victus"),
                builder: (BuildContext context,
                    AsyncSnapshot<List<Items>> snapshot) {
                  if (snapshot.hasData) {
                    return ListView.builder(
                      itemCount: snapshot.data?.length,
                      itemBuilder: (context, index) {
                        print(snapshot.data![index].name);
                        return new SimilarItems(
                          itemDescription: snapshot.data![index].description,
                          itemName:
                          "${snapshot.data![index].name} ${snapshot.data![index].model}",
                          itemImage: snapshot.data![index].images[0],
                        );
                      },
                    );
                  } else if (snapshot.hasError) {
                    return new Text("${snapshot.error}");
                  }

                  // By default, show a loading spinner
                  return new CircularProgressIndicator();
                },
              ),
              ),
            ],



          ),
        ),
      ),

    );
  }
}
Future<List<Items>> queryFound(
    String color, String company, String model) async {
  List<Items> items = [];
  CollectionReference lost = FirebaseFirestore.instance.collection('found');
  lost

      .get()
      .then((QuerySnapshot snapshot) {
    snapshot.docs.forEach((doc) {
      print('${doc.id} => ${doc.data()}');
      Items item = Items(
          docId: doc.id,
          id: doc['id'],
          category: doc['category'],
          subCategory: doc['subcategory'],
          company: doc['company'],
          model: doc['model'],
          color: doc['color'],
          description: doc['description'],
          name: doc['name'],
          number: doc['number'],
          images: doc['images'],
          lastLocation: doc['lostLocation']);
      items.add(item);
    });
  }).catchError((error) => print("Failed to fetch data: $error"));

  return items;
}
