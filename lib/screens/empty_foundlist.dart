import 'package:flutter/material.dart';

class empty_foundlist extends StatefulWidget {
  const empty_foundlist({super.key});

  @override
  State<empty_foundlist> createState() => _empty_foundlistState();
}

class _empty_foundlistState extends State<empty_foundlist> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width =  MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffDCDCDCFF),
        centerTitle: true,
        title: const Text("empty similar item list"),
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
                child: Image.asset('assets/images/emptysimilar.jpg',height: 300,width: 500,),
              ),
            ),
            const SizedBox(height: 50,),
            const Padding(
              padding: EdgeInsets.fromLTRB(50,20,50,0),
              child: Text('Nothing similar found yet!\nHang tight while we fetch some good news...',
                style: TextStyle(fontSize: 20.0),),
            ),
          ],
        ),
      ),
    );
  }
}
