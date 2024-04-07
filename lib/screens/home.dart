
import 'package:findaid/utils/routes.dart';
import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {

  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffDCDCDCFF),
        centerTitle: true,
        title: Text("App"),
        actions: [
          IconButton(
            icon: Icon(Icons.menu),
            color: Colors.black,
            onPressed:(){
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal:55 ,vertical:20 ),
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 10,),
                  Container(
                    height: 50,
                    width: 300,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade500,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text("Welcome...",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontSize: 30),),
                    ),
                  ),
                  SizedBox(height: 70,),
                  Align(
                    alignment: MediaQuery.of(context).orientation==Orientation.landscape?Alignment.center:Alignment.centerLeft,
                    child: Text("Lost an Item",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                  ),
                  InkWell(
                    child:
                    Container(
                      height: 40,
                      width: 300,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade500,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text("Register",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold, fontSize: 25),),
                      ),
                    ),
                    onTap:()=>{
                      Navigator.of(context).pushNamed(MyRoutes.lostPage),
                    },
                  ),
                  SizedBox(height: 20,),
                  InkWell(
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Text("Guidelines related to it ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold, fontSize: 15),),
                    ),
                    onTap:()=>{

                    },
                  ),
                  SizedBox(height: 50,),
                  Divider(
                    thickness: 2,
                    color: Colors.black,
                  ),
                  SizedBox(height: 50,),
                  Align(
                    alignment: MediaQuery.of(context).orientation==Orientation.landscape?Alignment.center:Alignment.centerLeft,
                    child: Text("Found an Item",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                  ),
                  InkWell(
                    child:
                    Container(
                      height: 40,
                      width: 300,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade500,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text("Register",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold, fontSize: 25),),
                      ),
                    ),
                    onTap:()=>{
                      Navigator.of(context).pushNamed(MyRoutes.foundPage),
                    },
                  ),
                  SizedBox(height: 20,),
                  InkWell(
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Text("Guidelines related to it ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold, fontSize: 15),),
                    ),
                    onTap:()=>{

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
