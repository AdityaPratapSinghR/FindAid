import'package:flutter/material.dart';

class SimilarItems extends StatelessWidget {
  final String itemName;
  final String itemDescription;
  final String itemImage;

  const SimilarItems({super.key, required this.itemName, required this.itemDescription, required this.itemImage});

  @override
  Widget build(BuildContext context) {
    final orientation =
        MediaQuery.of(context).orientation;

    return Padding(
      padding: EdgeInsets.only(bottom: MediaQuery.of(context).size.height*0.02),
      child: InkWell(
        onTap: () {},
        child: Container(
          decoration: BoxDecoration(
              color: Colors.blueGrey[100],
              borderRadius: BorderRadius.circular(5)
          ),
          width: MediaQuery.of(context).size.width*0.9,
          height: orientation == Orientation.portrait
              ? MediaQuery.of(context).size.height*0.22
              : MediaQuery.of(context).size.height*0.42,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: orientation == Orientation.portrait
                    ? MediaQuery.of(context).size.height*0.20
                    : MediaQuery.of(context).size.height*0.38,
                width: orientation == Orientation.portrait
                    ? MediaQuery.of(context).size.width*0.35
                    : MediaQuery.of(context).size.width*0.30,
                child: Image.network('$itemImage',
                  fit: BoxFit.fill,
                ),),
              SizedBox(
                width: MediaQuery.of(context).size.width*0.03,
              ),
              Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height*0.01,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5)
                    ),
                    height: orientation == Orientation.portrait
                        ? MediaQuery.of(context).size.height*0.04
                        : MediaQuery.of(context).size.height*0.07,
                    width: MediaQuery.of(context).size.width*0.44,
                    child: Text("$itemName" ),

                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height*0.01,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5)
                    ),
                    height: orientation == Orientation.portrait
                        ? MediaQuery.of(context).size.height*0.15
                        : MediaQuery.of(context).size.height*0.29,
                    width: MediaQuery.of(context).size.width*0.44,
                    child: Text("$itemDescription"),
                  )
                ],
              )
            ],
          ),

        ),
      ),
    );
  }
}
