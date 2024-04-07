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
                alignment: Alignment.center,
                child: Text("To register your lost possessions on the application, "
                    "please adhere to the following steps outlined below, "
                    "which will encompass the various details required:",style: TextStyle(fontSize: 18,),),
              ),
              SizedBox(height: 10,),
              Align(
                alignment: Alignment.centerLeft,
                child: Text("1) Specify the category of the item (e.g., electronics, jewelry, sports equipment)."
                ,style: TextStyle(fontSize: 18,),),
              ),
              SizedBox(height: 10,),
              Align(
                alignment: Alignment.centerLeft,
                child: Text("2) Provide essential particulars such as the brand, model, and color of the item (e.g., HP, Victus, Black)."
                ,style: TextStyle(fontSize: 18,),),
              ),
              SizedBox(height: 10,),
              Align(
                alignment: Alignment.centerLeft,
                child: Text("3) Furnish a concise description of the item, including any distinctive identification marks"
                    " (e.g., A black HP Victus laptop adorned with car stickers on the front)."
                ,style: TextStyle(fontSize: 18,),),
              ),
              SizedBox(height: 10,),
              Align(
                alignment: Alignment.centerLeft,
                child: Text("4) Indicate specific locations or mark a location on the map where you suspect the item was lost."
                  ,style: TextStyle(fontSize: 18,),),
              ),
              SizedBox(height: 10,),
              Align(
                alignment: Alignment.centerLeft,
                child: Text("5) Upload images that facilitate the identification of the item."
                  ,style: TextStyle(fontSize: 18,),),
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
                child: Text("To register a found item on the application, please adhere to the following guidelines:",style: TextStyle(fontSize: 18,),),
              ),
              SizedBox(height: 10,),
              Align(
                alignment: Alignment.centerLeft,
                child: Text("1) Specify the category of the found item (e.g., electronics, jewelry, sports equipment)."
                ,style: TextStyle(fontSize: 18,),),
              ),
              SizedBox(height: 10,),
              Align(
                alignment: Alignment.centerLeft,
                child: Text("2) Provide detailed information such as the brand, model, and color of the item (e.g., HP, Victus, Black)."
                ,style: TextStyle(fontSize: 18,),),
              ),
              SizedBox(height: 10,),
              Align(
                alignment: Alignment.centerLeft,
                child: Text("3) Furnish a brief description of the item, highlighting any distinctive features"
                    " or identification marks (e.g., A black HP Victus laptop with car stickers on the front).",
                  style: TextStyle(fontSize: 18,),),
              ),
          SizedBox(height: 10,),
          Align(
            alignment: Alignment.centerLeft,
            child: Text("4) Provide the location where the item was found or mark it on the map."
              ,style: TextStyle(fontSize: 18,),),
          ),
          SizedBox(height: 10,),
          Align(
            alignment: Alignment.centerLeft,
            child: Text("5) Upload clear images of the found item to facilitate identification by the owner."
              ,style: TextStyle(fontSize: 18,),),
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
                child: Text("To conduct a smooth item exchange process on the application, please adhere to the following guidelines:",
                  style: TextStyle(fontSize: 18,),),
              ),
              SizedBox(height: 10,),
              Align(
                alignment: Alignment.centerLeft,
                child: Text("1) Facilitate open and transparent communication to address any concerns "
                    "or discrepancies regarding the items being exchanged throughout the exchange process.",style: TextStyle(fontSize: 18,),),
              ),
              SizedBox(height: 10,),
              Align(
                alignment: Alignment.centerLeft,
                child: Text("2) Arrange a mutually agreeable meeting point for the exchange, ensuring it is safe and convenient for both parties involved.",
                  style: TextStyle(fontSize: 18,),),
              ),
              SizedBox(height: 10,),
              Align(
                alignment: Alignment.centerLeft,
                child: Text("3)Thoroughly inspect the items to be exchanged to confirm their condition and authenticity,"
                    " adhering to the descriptions provided during registration.",style: TextStyle(fontSize: 18,),),
              ),
              SizedBox(height: 10,),
              Align(
                alignment: Alignment.centerLeft,
                child: Text("4)Finalize the exchange by mutually agreeing upon the transfer of ownership and completing any necessary documentation or formalities.",
                  style: TextStyle(fontSize: 18,),),
              ),
              SizedBox(height: 10,),
              Align(
                alignment: Alignment.centerLeft,
                child: Text("5)Maintain respect and honesty throughout the exchange process to foster trust and satisfaction for both parties involved.",
                  style: TextStyle(fontSize: 18,),),
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
