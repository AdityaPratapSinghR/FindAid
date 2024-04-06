import 'package:findaid/screens/guidelines.dart';
import 'package:findaid/screens/home.dart';
import 'package:findaid/screens/safe.dart';
import 'package:flutter/material.dart';

class mainPage extends StatefulWidget {
  const mainPage({super.key});

  @override
  State<mainPage> createState() => _mainPageState();
}

class _mainPageState extends State<mainPage> {
  int myindex = 0;
  static const List<Widget> widgetlist = [
    home(),
    safe(),
    guidelines(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:
        Container(
          child: widgetlist[myindex],
        ),

      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          setState(() {
            myindex = index;
          });
        },
        currentIndex: myindex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.lock_outline_rounded),
            label: "Safe",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.document_scanner_rounded),
            label: "Guidelines",
          )
        ],
      ),
    );
  }
}
