import 'package:flutter/material.dart';
class guidelines extends StatefulWidget {
  const guidelines({super.key});

  @override
  State<guidelines> createState() => _guidelinesState();
}

class _guidelinesState extends State<guidelines> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffDCDCDCFF),
        centerTitle: true,
        title: Text("Guidelines"),
        actions: [
          IconButton(
            icon: Icon(Icons.menu),
            color: Colors.black,
            onPressed:(){
            },
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
        color: Colors.grey.shade200,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 25,),

              Container(
                height: 40,
                width: MediaQuery.of(context).orientation==Orientation.portrait?MediaQuery.of(context).size.width*0.85:300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey.shade400,
                ),

                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(" Lost Item Registration",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),),
                ),
              ),
              SizedBox(height: 15,),
              Align(
                alignment: Alignment.centerLeft,
                child: Text("1) kjahs asf afdg  fghg a rfssh  sdfgsd  dsfgsd sdfg sdfg d f"
                    "g sdg  sdgsgdsg ds gds g dsg ds gd gdsgsty e ty ry uyu  yu ndf",style: TextStyle(fontSize: 18,),),
              ),
              SizedBox(height: 3,),
              Align(
                alignment: Alignment.centerLeft,
                child: Text("2) kjahs asf afdg  fghg a rfssh  sdfgsd  dsfgsd sdfg sdfg d f"
                    "g sdg  sdgsgdsg ds gds g dsg ds gd gdsgsty e ty ry uyu  yu ndf",style: TextStyle(fontSize: 18,),),
              ),
              SizedBox(height: 3,),
              Align(
                alignment: Alignment.centerLeft,
                child: Text("3) kjahs asf afdg  fghg a rfssh  sdfgsd  dsfgsd sdfg sdfg d f"
                    "g sdg  sdgsgdsg ds gds g dsg ds gd gdsgsty e ty ry uyu  yu ndf",style: TextStyle(fontSize: 18,),),
              ),
              SizedBox(height: 3,),
              Align(
                alignment: Alignment.centerLeft,
                child: Text("4) kjahs asf afdg  fghg a rfssh  sdfgsd  dsfgsd sdfg sdfg d f"
                    "g sdg  sdgsgdsg ds gds g dsg ds gd gdsgsty e ty ry uyu  yu ndf",style: TextStyle(fontSize: 18,),),
              ),

              SizedBox(height: 20,),

              Container(
                height: 40,
                width: MediaQuery.of(context).orientation==Orientation.portrait?MediaQuery.of(context).size.width*0.85:300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey.shade400,
                ),

                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(" Founded Item Registration",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),),
                ),
              ),
              SizedBox(height: 15,),
              Align(
                alignment: Alignment.centerLeft,
                child: Text("1) kjahs asf afdg  fghg a rfssh  sdfgsd  dsfgsd sdfg sdfg d f"
                    "g sdg  sdgsgdsg ds gds g dsg ds gd gdsgsty e ty ry uyu  yu ndf",style: TextStyle(fontSize: 18,),),
              ),
              SizedBox(height: 3,),
              Align(
                alignment: Alignment.centerLeft,
                child: Text("2) kjahs asf afdg  fghg a rfssh  sdfgsd  dsfgsd sdfg sdfg d f"
                    "g sdg  sdgsgdsg ds gds g dsg ds gd gdsgsty e ty ry uyu  yu ndf",style: TextStyle(fontSize: 18,),),
              ),
              SizedBox(height: 3,),
              Align(
                alignment: Alignment.centerLeft,
                child: Text("3) kjahs asf afdg  fghg a rfssh  sdfgsd  dsfgsd sdfg sdfg d f"
                    "g sdg  sdgsgdsg ds gds g dsg ds gd gdsgsty e ty ry uyu  yu ndf",style: TextStyle(fontSize: 18,),),
              ),
              SizedBox(height: 3,),
              Align(
                alignment: Alignment.centerLeft,
                child: Text("4) kjahs asf afdg  fghg a rfssh  sdfgsd  dsfgsd sdfg sdfg d f"
                    "g sdg  sdgsgdsg ds gds g dsg ds gd gdsgsty e ty ry uyu  yu ndf",style: TextStyle(fontSize: 18,),),
              ),

              SizedBox(height: 20,),

              Container(
                height: 40,
                width: MediaQuery.of(context).orientation==Orientation.portrait?MediaQuery.of(context).size.width*0.85:300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey.shade400,
                ),

                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(" Item Exchange",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),),
                ),
              ),
              SizedBox(height: 15,),
              Align(
                alignment: Alignment.centerLeft,
                child: Text("1) kjahs asf afdg  fghg a rfssh  sdfgsd  dsfgsd sdfg sdfg d f"
                    "g sdg  sdgsgdsg ds gds g dsg ds gd gdsgsty e ty ry uyu  yu ndf",style: TextStyle(fontSize: 18,),),
              ),
              SizedBox(height: 3,),
              Align(
                alignment: Alignment.centerLeft,
                child: Text("2) kjahs asf afdg  fghg a rfssh  sdfgsd  dsfgsd sdfg sdfg d f"
                    "g sdg  sdgsgdsg ds gds g dsg ds gd gdsgsty e ty ry uyu  yu ndf",style: TextStyle(fontSize: 18,),),
              ),
              SizedBox(height: 3,),
              Align(
                alignment: Alignment.centerLeft,
                child: Text("3) kjahs asf afdg  fghg a rfssh  sdfgsd  dsfgsd sdfg sdfg d f"
                    "g sdg  sdgsgdsg ds gds g dsg ds gd gdsgsty e ty ry uyu  yu ndf",style: TextStyle(fontSize: 18,),),
              ),
              SizedBox(height: 3,),
              Align(
                alignment: Alignment.centerLeft,
                child: Text("4) kjahs asf afdg  fghg a rfssh  sdfgsd  dsfgsd sdfg sdfg d f"
                    "g sdg  sdgsgdsg ds gds g dsg ds gd gdsgsty e ty ry uyu  yu ndf",style: TextStyle(fontSize: 18,),),
              ),

              SizedBox(height: 20,),

              Container(
                height: 40,
                width: MediaQuery.of(context).orientation==Orientation.portrait?MediaQuery.of(context).size.width*0.85:300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey.shade400,
                ),

                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(" App Related Guidelines",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),),
                ),
              ),
              SizedBox(height: 15,),
              Align(
                alignment: Alignment.centerLeft,
                child: Text("1) kjahs asf afdg  fghg a rfssh  sdfgsd  dsfgsd sdfg sdfg d f"
                    "g sdg  sdgsgdsg ds gds g dsg ds gd gdsgsty e ty ry uyu  yu ndf",style: TextStyle(fontSize: 18,),),
              ),
              SizedBox(height: 3,),
              Align(
                alignment: Alignment.centerLeft,
                child: Text("2) kjahs asf afdg  fghg a rfssh  sdfgsd  dsfgsd sdfg sdfg d f"
                    "g sdg  sdgsgdsg ds gds g dsg ds gd gdsgsty e ty ry uyu  yu ndf",style: TextStyle(fontSize: 18,),),
              ),
              SizedBox(height: 3,),
              Align(
                alignment: Alignment.centerLeft,
                child: Text("3) kjahs asf afdg  fghg a rfssh  sdfgsd  dsfgsd sdfg sdfg d f"
                    "g sdg  sdgsgdsg ds gds g dsg ds gd gdsgsty e ty ry uyu  yu ndf",style: TextStyle(fontSize: 18,),),
              ),
              SizedBox(height: 3,),
              Align(
                alignment: Alignment.centerLeft,
                child: Text("4) kjahs asf afdg  fghg a rfssh  sdfgsd  dsfgsd sdfg sdfg d f"
                    "g sdg  sdgsgdsg ds gds g dsg ds gd gdsgsty e ty ry uyu  yu ndf",style: TextStyle(fontSize: 18,),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
