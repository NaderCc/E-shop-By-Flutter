import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePage();
}


class _HomePage extends State<HomePage>
{
  GlobalKey<ScaffoldState> scaff = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      key: scaff,
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
                    Column(
                      children: [
                        Container(

                          height: 100,
                          width: 100,

                          child:MaterialButton(onPressed: (){},
                            child:ClipRRect(
                              borderRadius: BorderRadius.circular(150),

                              child: Image.asset("image/men.jpg"
                                ,fit: BoxFit.fill,),

                            ) ,
                          ),
                    ),
                        Text("Men",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.blueGrey)),
                      ],
                    ),
                    Column(
                      children: [
                        Container(

                          height: 100,
                          width: 100,

                          child:MaterialButton(onPressed: (){},
                            child:ClipRRect(
                              borderRadius: BorderRadius.circular(150),

                              child: Image.asset("image/women.jpg"
                                ,fit: BoxFit.fill,),

                            ) ,
                          ),
                        ),
                        Text("Women",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.blueGrey)),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          height: 100,
                          width: 100,

                          child:MaterialButton(onPressed: (){},
                            child:ClipRRect(
                              borderRadius: BorderRadius.circular(150),

                              child: Image.asset("image/ele.jpg"
                                ,fit: BoxFit.fill,),

                            ) ,
                          ),
                        ),
                        Text("Electrical",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.blueGrey)),
                      ],
                    ),
                    Column(
                      children: [
                        Container(

                          height: 100,
                          width: 100,

                          child:MaterialButton(onPressed: (){},
                            child:ClipRRect(
                              borderRadius: BorderRadius.circular(150),

                              child: Image.asset("image/hop.png"
                                ,fit: BoxFit.fill,),

                            ) ,
                          ),
                        ),
                        Text("Hobbies",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.blueGrey)),
                      ],
                    ),

                  ],
                ),
              ),
              Container(

                margin: EdgeInsets.only(left: 30,top: 20),
                child: Text("!! Best Selling !!",textAlign: TextAlign.left,style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.red.shade200),),
              ),

              GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),

              shrinkWrap: true,
              children: [
                Card(

                )
              ],)
            ],
          )
          );

    }
}