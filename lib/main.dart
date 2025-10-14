import 'package:flutter/material.dart';
import 'package:e_shop/homepage.dart';
import 'package:get/get.dart';

import 'model/Contact.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget  {
  const MyApp({super.key});
  State<MyApp> createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin
{

  GlobalKey<ScaffoldState> scaff = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        home:  HomePage(),);

  }
}
