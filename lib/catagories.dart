import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:e_shop/productcard.dart';

import 'CustomSearch.dart';

class Categories extends StatefulWidget {
  final String nameCat ;
  final List<ProductCard> products;
  @override
  Categories
  ({
    super.key,
    required this.nameCat,
    required this.products,
  });

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  String? selectedValue;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleTextStyle: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
        title: Text("${widget.nameCat} Categories"),
        actions: [
          IconButton(onPressed: (){
            showSearch(context: (context), delegate: CustomSearch(searchWords:
              [
                "Zara",
                "Guchi",
                "MenShoe",
                "Nike"
              ]
            ),);
    },icon:Icon(Icons.search)),
        ],

      ),
      body:
      Center(
        child: ListView(
          children: [
            Container(

              margin: EdgeInsets.only(left: 30,top: 20),
              child: Text("!! Best Selling !!",textAlign: TextAlign.left,style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.red.shade200),),
            ),

              Container(
                height: 400,
              child: CardSwiper(
              cardsCount: widget.products.length,
              cardBuilder: (context, index, percentThresholdX, percentThresholdY) => widget.products[index],
            ),
        ),
          ],
        ),
      ),
    );
  }
}
