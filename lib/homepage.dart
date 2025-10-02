import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:untitled12/iconcatagories.dart';
import 'package:untitled12/productcard.dart';


// starting stateful class
class HomePage extends StatefulWidget {
  HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePage();
}
//End of the class

//Homepage class
class _HomePage extends State<HomePage>
{
  GlobalKey<ScaffoldState> scaff = GlobalKey();
  @override
  Widget build(BuildContext context) {
    //Start Scaffold to Organize The body of the app
    return  Scaffold(
      key: scaff, //
        bottomNavigationBar: BottomNavigationBar(
            iconSize: 30,
            //selectedLabelStyle:TextStyle( color:Colors.deepOrangeAccent),
            selectedItemColor: Colors.deepOrange,
            items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "*"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_bag),label: "*"),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: "*"),

        ]),
          drawer: Drawer(
            child: ListView(
              children: [
                Center(child:Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  margin: EdgeInsets.only(top: 20,bottom: 15),
                  height: 100,
                  width: 100,

                  child: Icon(Icons.person,size: 80,),
                )),
                Text("Hi Guest",textAlign: TextAlign.center,style: TextStyle(fontSize: 15)),
                MaterialButton(onPressed: (){},
                    color: Colors.white38,

                  child:Text("Sign In",textAlign: TextAlign.center,style: TextStyle(fontSize: 20),)
                ),
                MaterialButton(onPressed: (){},
                    color: Colors.white38,

                    child:Text("Sign Up",textAlign: TextAlign.center,style: TextStyle(fontSize: 20),)
                )
              ],
            ),
          ),

          body: ListView(

            children: [

                  Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.all(10),
                    height: 80,
                    width: 400,
                      child:Row(
                        children: [
                     Expanded(
                       flex: 3,
                       child:  TextField(
                        
                        decoration: InputDecoration(
                          fillColor: Colors.grey.shade300,
                          filled: true,
                          hintText:"  Search" ,
                          hintStyle: TextStyle(fontSize: 20),
                          prefix: Icon(Icons.search),
                          border: InputBorder.none,
                        ),),
                      ),
                          Expanded(
                            flex: 1,
                              child: MaterialButton(
                                  onPressed: (){
                                    setState(() {
                                      scaff.currentState!.openDrawer();
                                    });
                          },
                                child: Icon(Icons.menu),
                          ))

              ],
                  )
              ),
              Container(

                margin: EdgeInsets.only(left: 30,top: 20),
                child: Text("Catagories",textAlign: TextAlign.left,style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,),),
              ),
              Container(
                height: 150,

                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    IconCatagories(imagePath: "image/men.jpg", iconName: "Men",
                    products: [
                      ProductCard(imagePath: {
                        0:"image/shoeG.png",
                        1:"image/shoeB.png",
                        2:"image/shoeW.png"
                      },brand: "MenShoe",details: "lizard skin",price: "299",),
                      ProductCard(brand: "Nike", details: "sport shoes", imagePath: {

                        0:"image/kutchG.png",
                        1:"image/kutchB.png",
                        2:"image/kutchW.png"
                      }, price: "999"),
                      ProductCard(brand: "Zara", details: "soft T-shirt", imagePath: {
                        0:"image/TG.png",
                        1:"image/TB.png",
                        2:"image/TW.png"
                      }, price: "859"),
                    ],),
                    IconCatagories(imagePath: "image/women.jpg", iconName: "Women",
                    products: [
                      ProductCard(imagePath: {
                        0:"image/shoeG.png",
                        1:"image/shoeB.png",
                        2:"image/shoeW.png"
                      },brand: "MenShoe",details: "lizard skin",price: "299",),
                      ProductCard(brand: "Nike", details: "sport shoes", imagePath: {

                        0:"image/kutchG.png",
                        1:"image/kutchB.png",
                        2:"image/kutchW.png"
                      }, price: "999"),
                      ProductCard(brand: "Zara", details: "soft T-shirt", imagePath: {
                        0:"image/TG.png",
                        1:"image/TB.png",
                        2:"image/TW.png"
                      }, price: "859"),
                    ],),
                    IconCatagories(imagePath: "image/ele.jpg", iconName: "Electrical",
                    products: [ProductCard(imagePath: {
                      0:"image/shoeG.png",
                      1:"image/shoeB.png",
                      2:"image/shoeW.png"
                    },brand: "MenShoe",details: "lizard skin",price: "299",),
                      ProductCard(brand: "Nike", details: "sport shoes", imagePath: {

                        0:"image/kutchG.png",
                        1:"image/kutchB.png",
                        2:"image/kutchW.png"
                      }, price: "999"),
                      ProductCard(brand: "Zara", details: "soft T-shirt", imagePath: {
                        0:"image/TG.png",
                        1:"image/TB.png",
                        2:"image/TW.png"
                      }, price: "859"),],),
                    IconCatagories(imagePath: "image/hop.png", iconName: "Hobbies",
                    products: [
                      ProductCard(imagePath: {
                        0:"image/shoeG.png",
                        1:"image/shoeB.png",
                        2:"image/shoeW.png"
                      },brand: "MenShoe",details: "lizard skin",price: "299",),
                      ProductCard(brand: "Nike", details: "sport shoes", imagePath: {

                        0:"image/kutchG.png",
                        1:"image/kutchB.png",
                        2:"image/kutchW.png"
                      }, price: "999"),
                      ProductCard(brand: "Zara", details: "soft T-shirt", imagePath: {
                        0:"image/TG.png",
                        1:"image/TB.png",
                        2:"image/TW.png"
                      }, price: "859"),
                    ],),
                  ],
                ),
              ),
              Container(

                margin: EdgeInsets.only(left: 30,top: 20),
                child: Text("!! Best Selling !!",textAlign: TextAlign.left,style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.red.shade200),),
              ),

              GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisExtent: 230),
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              children: [

                ProductCard(imagePath: {
                  0:"image/shoeG.png",
                  1:"image/shoeB.png",
                  2:"image/shoeW.png"
                },brand: "MenShoe",details: "lizard skin",price: "299",),
                ProductCard(brand: "Hails", details: "Natural Skin", imagePath: {

                  0:"image/Hg.png",
                  1:"image/Hb.png",
                  2:"image/Hw.png"
                }, price: "999"),
                ProductCard(brand: "Apple", details: "water proov", imagePath: {
                  0:"image/ear.png",
                  1:"image/w2.png",
                  2:"image/watch.png"
                }, price: "859"),
                ProductCard(brand: "Logtic", details: "Suitable Cs",imagePath: {
                  0:"image/watch.png",
                  1:"image/ear.png",
                  2:"image/w2.png",

                }, price: "399",)
              ],)
            ],
          )
          );

    }
}