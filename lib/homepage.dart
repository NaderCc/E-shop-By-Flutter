import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
          drawer: Drawer(),

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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Container(

                        height: 100,
                        width: 100,

                        child:MaterialButton(onPressed: (){},
                          child:ClipRRect(
                            borderRadius: BorderRadius.circular(150),

                            child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTxm9XKblXXPwZIdwihN6dZZLGSzyHhQADIfA&s"
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

                            child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTd5Vu-wkLgpa4qhz9CyehrOZOmf48mVWTRcw&s"
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

                            child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRzlSP0111Yyf2HscUDeU96eEqXT4FMsYjkcA&s"
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

                            child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR4jEyesGSDgUo0fP6BtG5p1fWMMGOwOll8jA&s"
                              ,fit: BoxFit.fill,),

                          ) ,
                        ),
                      ),
                      Text("Hobbies",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.blueGrey)),
                    ],
                  ),
                  
                ],
              )

            ],
          )
          );

    }
}