import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:findaid/utils/colors.dart';
import 'package:findaid/utils/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class description_lost extends StatefulWidget {
  const description_lost({super.key});

  @override
  State<description_lost> createState() => _description_lostState();
}

class _description_lostState extends State<description_lost> {
  List<String> imageUrls = ["https://www.titan.co.in/dw/image/v2/BKDD_PRD/on/demandware.static/-/Sites-titan-master-catalog/default/dw34d84041/images/Titan/Catalog/1698KM02_1.jpg?sw=800&sh=800","https://m.media-amazon.com/images/I/61Qe0euJJZL.jpg"];
  final category=TextEditingController();
  final company = TextEditingController();
  final color = TextEditingController();
  final description = TextEditingController();
  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: appbarcolor,
        centerTitle: true,
        title: Text("Details Entry"),
        actions: [
          IconButton(
            icon: Icon(Icons.menu),
            color: Colors.black,
            onPressed:(){
            },
          ),
        ],
      ),
      backgroundColor: backgroundcolor,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
          color: Colors.grey.shade500,
          child: Column(
            children: [

              //First block
              Align(
                alignment: Alignment.centerLeft,
                  child: Text("Category of Item",style: TextStyle(fontSize: 20,),)
              ),

              TextField(

                cursorColor: Colors.white,
                style: TextStyle(fontSize: 16, ),

                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical:0,horizontal: 18),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(
                      color: Colors.white,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(
                      color: Colors.white,
                    ),
                  ),
                  hintStyle: TextStyle( ),
                  hintText: "Laptop, Phone, Watch.."
                ),
                controller: category,
              ),

              SizedBox(height: 10,),
              // Second block
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Sub-Category/Company of Item",style: TextStyle(fontSize: 20,),)
              ),

              TextField(

                cursorColor: Colors.white,
                style: TextStyle(fontSize: 16, ),

                decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical:0,horizontal: 18),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                    ),
                    hintStyle: TextStyle( ),
                    hintText: "HP, Dell, Vivo.."
                ),
                controller: company,
              ),
              SizedBox(height: 10,),
              // Third block
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Color",style: TextStyle(fontSize: 20,),)
              ),

              TextField(

                cursorColor: Colors.white,
                style: TextStyle(fontSize: 16, ),

                decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical:0,horizontal: 18),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                    ),
                    hintStyle: TextStyle( ),
                    hintText: "Red, Blue, Green etc."
                ),
                controller: color,
              ),

              SizedBox(height: 10,),
              //Fourth block
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Upload Image",style: TextStyle(fontSize: 20,),),
                    ),
                    SizedBox(width: 5,),
                    Container(
                      height: 30,
                      width: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.grey.shade100,
                      ),
                      child: Align(
                        alignment: Alignment.center,
                          child: Icon(Icons.add_circle_outline_rounded)),
                    ),
                  ],
                ),
              ),
              //Fifth block
              SizedBox(height: 10,),
              // Third block
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Location of last seen",style: TextStyle(fontSize: 20,),)
              ),

              TextField(

                cursorColor: Colors.white,
                style: TextStyle(fontSize: 16, ),

                decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical:0,horizontal: 18),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                    ),
                    hintStyle: TextStyle( ),
                    hintText: "Last observed place"
                ),
              ),
              SizedBox(height: 10,),
              //Sixth block
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Brief Description",style: TextStyle(fontSize: 20,),)
              ),

              TextField(

                cursorColor: Colors.white,
                style: TextStyle(fontSize: 16, ),

                decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical:0,horizontal: 18),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                    ),
                    hintStyle: TextStyle( ),
                    hintText: "Anything partiular about your Item"
                ),
                controller: description,
              ),
              SizedBox(height: 30,),

              InkWell(
                child:
                Container(
                  height: 35,
                  width: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.shade300
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text("Submit",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                  ),
                ),
                onTap: ()=>{
                  //addLostItem("89900","Electronics",category.text,color.text,company.text,description.text,"Victus",imageUrls,"Victus","74838389292","","8999",false),
                  Navigator.of(context).pushNamed(MyRoutes.similarItems)
                },

              ),
            ],
          ),
        ),
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
    String lostLocation,
    String claimId,
    bool isClaimed) {
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
    'name':name,
    'number':number,
    'lostLocation':lostLocation,
    'claimId': claimId,
    'isClaimed': isClaimed
  })
      .then((value) => print("Data added successfully!"))
      .catchError((error) => print("Failed to add Data: $error"));
}

