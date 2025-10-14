
import 'package:e_shop/contoller/detailscontroller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:e_shop/main.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:get/get.dart';


import 'cartbutton.dart';


class Details extends StatefulWidget
{
  final Map? imagePath ;
  const  Details(
  {

    super.key,
    this.imagePath,
    });
  @override
  State<Details> createState() => MyApp();
}
class MyApp extends State<Details>
{
  List<Container> cards = [
    Container(
      alignment: Alignment.center,
      child: const Text('1'),
      color: Colors.blue,
    ),
    Container(
      alignment: Alignment.center,
      child: const Text('2'),
      color: Colors.red,
    ),
    Container(
      alignment: Alignment.center,
      child: const Text('3'),
      color: Colors.purple,
    )
  ];


  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      //-----------------------start  AppBar-----------------------
      endDrawer: Drawer(),
      appBar: AppBar(
        backgroundColor: Colors.grey.shade200,
        elevation: 0.0,
        iconTheme:IconThemeData(
          color: Colors.grey
        ),
            title: Row(
              children: [
                Text("Ranoosh ",style: TextStyle(fontSize: 20,color : Colors.blue,),),
                Text(" CandleShop",style: TextStyle(fontSize: 20,color : Colors.orangeAccent,fontWeight: FontWeight.bold),)
              ],

            ),
            centerTitle: true,
      ),
      //-------------------------finish AppBar--------------
      body: ListView(
        children: [
          Container(
            child:GetBuilder<DetailsController>(
            init: DetailsController(),
            builder:(controller)=> Row(

              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(30),
                    height: 400,
                    color: Colors.grey.shade300,
                    child:Column(
                      children: [
                        Expanded(
                          child: Image.asset(
                              "${widget.imagePath![controller.count]}"
                          ),
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(Icons.circle,color: Colors.grey,),
                              Radio(value: "grey", groupValue:controller.colorCh ,fillColor: MaterialStateProperty.all(Colors.grey),
                                onChanged: (val)
                                {
                                    controller.greyColor(val);
                                },
                              ),
                              Icon(Icons.circle,color: Colors.black,),
                              Radio(value: "black", groupValue:controller.colorCh ,fillColor: MaterialStateProperty.all(Colors.black),
                                onChanged: (val)
                                {
                                    controller.blackColor(val);
                                },
                              ),
                              Icon(Icons.circle,color: Colors.white,),
                              Radio(value: "white", groupValue:controller.colorCh ,fillColor: MaterialStateProperty.all(Colors.white),
                                onChanged: (val)
                                {
                                 controller.whiteColor(val);
                                },
                              )
                            ],
                          ),
                        )

                      ],
                    ),
                  ),
                )

              ],
            ),
          ),),
          Container(
            height: 100,
            child: CartButton(),
          )
        ],
      )
    );
  }
}
