import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class description_lost extends StatefulWidget {
  const description_lost({super.key});

  @override
  State<description_lost> createState() => _description_lostState();
}

class _description_lostState extends State<description_lost> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
              color: Colors.grey.shade500,
              child: Column(
                children: [
                  SizedBox(height: 20,),
                  Container(
                    height: 50,
                    width: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.shade300
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text("Details Entry",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
                    ),
                  ),
                  SizedBox(height: 40,),
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

                    },

                  ),
                ],
              ),
            ),
          ),
        ),
      ),


    );
  }
}
