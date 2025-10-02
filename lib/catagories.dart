import 'package:flutter/material.dart';
import 'package:untitled12/productcard.dart';

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
          PopupMenuButton<String>(
            onSelected: (val) {
              setState(() {
                selectedValue = val; // ✅ هنا بتخزن القيمة المختارة
              });
            },
            itemBuilder: (context) => [
              PopupMenuItem(child: Text("Adult"), value: "adult"),
              PopupMenuItem(child: Text("Child"), value: "child"),
            ],
          ),
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
            GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisExtent: 230),
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              children: [
                ...List.generate( widget.products.length
                , (index)
                {
                  return widget.products[index];
                }),


              ],),
          ],
        ),
      ),
    );
  }
}
