import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled12/productcard.dart';

import 'catagories.dart';

class IconCatagories extends StatelessWidget
{
  final String imagePath;
  final String iconName;
  final List<ProductCard> products;


  const IconCatagories(
  {
      super.key,
      required this.imagePath,
      required this.iconName,
      required this.products,

  }
  );
  @override
  Widget build(BuildContext context)
  {
    return Column(
      children: [
        Container(

          height: 100,
          width: 100,

          child:MaterialButton(onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Categories(nameCat: iconName,products: products,)));
          },
            child:ClipRRect(
              borderRadius: BorderRadius.circular(150),

              child: Image.asset("$imagePath"
                ,fit: BoxFit.fill,),

            ) ,
          ),
        ),
        Text("$iconName",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.blueGrey)),
      ],
    );
  }
}