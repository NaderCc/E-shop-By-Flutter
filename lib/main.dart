import 'package:flutter/material.dart';
import 'package:untitled12/homepage.dart';

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
    return MaterialApp(
        home:  HomePage(),);

  }
}
