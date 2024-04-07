import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:findaid/utils/colors.dart';
import 'package:findaid/utils/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class description_founded extends StatefulWidget {
  const description_founded({super.key});

  @override
  State<description_founded> createState() => _description_foundedState();
}

class _description_foundedState extends State<description_founded> {
  List<String> imageUrls = ["https://www.titan.co.in/dw/image/v2/BKDD_PRD/on/demandware.static/-/Sites-titan-master-catalog/default/dw34d84041/images/Titan/Catalog/1698KM02_1.jpg?sw=800&sh=800","https://cdn.thewirecutter.com/wp-content/media/2023/06/bestlaptops-2048px-9765.jpg?auto=webp&quality=75&width=1024"];
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
                    hintStyle: TextStyle(),
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
                 // addFoundItem("8990099999",category.text,company.text,color.text,company.text,description.text,"Victus",imageUrls,"User Name","74838389292","no location","83883",false),
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
    String locationData,
    String claimId,
    bool isClaimed) {
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
    'name':founderName,
    'number':founderNumber,
    "location":locationData,
    'claimId': claimId,
    'isClaimed': isClaimed
  })
      .then((value) => print("Data added successfully!"))
      .catchError((error) => print("Failed to add Data: $error"));
}

