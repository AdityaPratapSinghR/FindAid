import 'package:findaid/utils/colors.dart';
import 'package:flutter/material.dart';

class nosimilar_lost extends StatefulWidget {
  const nosimilar_lost({super.key});

  @override
  State<nosimilar_lost> createState() => _nosimilar_lostState();
}

class _nosimilar_lostState extends State<nosimilar_lost> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width =  MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
          backgroundColor: appbarcolor,
          centerTitle: true,
          title: const Text("Similar Lost Items"),

    ),
    body: SingleChildScrollView(
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    Center(
      child: Container(
        padding: const EdgeInsets.fromLTRB(20.0,20,20,0),
        child: Image.asset('assets/images/images2.png',height: 300,width: 500,),
      ),
    ),
      const SizedBox(height: 50,),
      const Padding(
        padding: EdgeInsets.fromLTRB(50,20,20,0),
        child: Text('No similar lost items have been reported yet',
          style: TextStyle(fontSize: 20.0),),
      ),
    ],
    ),
    ),
    );
  }
}