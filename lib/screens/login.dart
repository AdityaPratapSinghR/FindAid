import 'package:findaid/utils/colors.dart';
import 'package:flutter/material.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width =  MediaQuery.of(context).size.width;
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor:backgroundcolor,
        body: SafeArea(
        child: SingleChildScrollView(
        child: Center(
        child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 100),
    child: Container(
    height: 450,
    width: 300,
    padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(12.0),
    color: boxcolor,
    ),
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
    const Row(mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
    Text('FindAid',style: TextStyle(fontSize: 30.0),)
    ],
    ),
    const Padding(
    padding: EdgeInsets.all(8.0),
    child: Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
    Text('Phone Number'),
    ],
    ),
    ),
    _nameWidget(),
    const SizedBox(height: 12.0),
    const Padding(
    padding: EdgeInsets.all(8.0),
    child: Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
    Text('Password'),
    ],
    ),
    ),
    _passwordWidget(),
    const SizedBox(height: 10),
    const InkWell(
    child: Align(
    alignment: Alignment.centerRight,
    child: Text('Forgot Password?'),
    ),
    ),
    const SizedBox(height:8.0,),
    SizedBox(
    width: 130,
    child: TextButton(onPressed: (){},
    style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.grey)),
    child: const Text('Login'),
    ),
    ),
      const SizedBox(height: 10),
      const Row(
        children: <Widget>[
          Expanded(flex: 5,child: Divider(height: 15,color: Colors.black,)),
          SizedBox(width: 10),
          Expanded(flex:1,child:Text('Or'),),
          Expanded(flex:5,child: Divider(height: 10,color: Colors.black,)),
        ],
      ),
      const SizedBox(height: 15),
      const InkWell(child:Text('Sign Up Using')),
    ],
    ),
    ),
        ),
        ),
        ),
        ),
    );
  }

  Widget _nameWidget(){
    return Column(
      children: <Widget>[
        TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderSide: Divider.createBorderSide(context),
            ),
            focusedBorder:OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: Divider.createBorderSide(context),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: Divider.createBorderSide(context),
            ),
            filled: true,
            contentPadding:const EdgeInsets.all(15.0),
          ),
        )
      ],
    );
  }
  Widget _passwordWidget() {
    return Column(
      children: <Widget>[
        TextField(

          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderSide: Divider.createBorderSide(context),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: Divider.createBorderSide(context),
              borderRadius: BorderRadius.circular(15),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: Divider.createBorderSide(context),
              borderRadius: BorderRadius.circular(15),
            ),
            filled: true,
            contentPadding: const EdgeInsets.all(15.0),
          ),
          obscureText: true,
        ),
      ],
    );
  }
}