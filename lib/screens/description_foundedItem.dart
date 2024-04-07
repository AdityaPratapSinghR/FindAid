import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class description_founded extends StatefulWidget {
  const description_founded({super.key});

  @override
  State<description_founded> createState() => _description_foundedState();
}

class _description_foundedState extends State<description_founded> {
  List<String> imageUrls = ["url1","url2"];
  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffDCDCDCFF),
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
      backgroundColor: Colors.grey.shade500,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
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
                    hintText: "Electronics, clothing, Vehicle, Sports, etc."
                ),
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
                    hintText: "Mobilephone, Laptop, Football, Vehicle type"
                ),
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
                  addFoundItem("89900","Electronics","Laptop","Black","HP","A small laptop","Victus",imageUrls,"Aditya P","74838389292",""),
                },

              ),
            ],
          ),
        ),
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

