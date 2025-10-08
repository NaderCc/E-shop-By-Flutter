import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart' show MaterialPageRoute, Colors, MaterialButton, ListTile, Card;
import 'package:e_shop/details.dart';


class ProductCard extends StatelessWidget {
  final Map imagePath;
  final String brand;
  final String details;
  final String price;


  const ProductCard({
    super.key,
    required this.brand,
    required this.details,
    required this.imagePath,
    required this.price,

  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Expanded(
            flex: 4,
            child: Container(
              color: Colors.grey.shade300,
              width: 300,
              child: Image.asset(
                imagePath[0], height: 130, fit: BoxFit.fill,),
            ),
          ),
          Expanded(
            flex: 2,

            child: ListTile(
                trailing: Text("$price\$", textDirection: TextDirection.ltr,
                  style: TextStyle(fontSize: 20,
                      color: Colors.deepOrangeAccent,
                      fontWeight: FontWeight.bold),
                  softWrap: false,
                  overflow: TextOverflow.visible,),
                title: Text("$brand",
                  style: TextStyle(fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                  softWrap: false,
                  overflow: TextOverflow.visible,),
                subtitle: Text("$details", textDirection: TextDirection.ltr,
                  style: TextStyle(fontSize: 14,
                      color: Colors.blueGrey,
                      fontWeight: FontWeight.w400),
                  softWrap: false,
                  overflow: TextOverflow.visible,
                )

            ),
          ),
          Expanded(
            flex: 1,
            child:  MaterialButton(

            onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Details(imagePath: imagePath,)));
            },
            color: Colors.white54,
            child: Text("Buy!",textAlign: TextAlign.center,
              style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.deepOrangeAccent,),),
          ),)
        ],
      ),
    );
  }
}