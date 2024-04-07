import 'package:flutter/material.dart';

class empty_safe extends StatefulWidget {
  const empty_safe({super.key});

  @override
  State<empty_safe> createState() => _empty_safeState();
}

class _empty_safeState extends State<empty_safe> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width =  MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffDCDCDCFF),
        centerTitle: true,
        title: const Text("empty safe"),
        actions: [
          IconButton(
            icon: const Icon(Icons.menu),
            color: Colors.black,
            onPressed:(){},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Container(
                padding: const EdgeInsets.fromLTRB(20.0,100,20,0),
                child: Image.asset('assets/images/emptysafe.png',height: 300,width: 500,),
              ),
            ),
            const SizedBox(height: 30),
            const Padding(
              padding: EdgeInsets.fromLTRB(50,20,50,0),
              child: Text('Looks like you have not added any items to the safe yet !',
                style: TextStyle(fontSize: 20.0),),
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(0,0,25,0),
              child: Align(
                alignment: Alignment.centerRight,
                child: FloatingActionButton(
                  onPressed: (){},
                  child: const Icon(Icons.add),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}