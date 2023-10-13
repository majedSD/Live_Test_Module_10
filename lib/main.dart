/**
 * -----------------------Majedul Islam---------------------
 * -----------------------Live Test Module-10---------------
 */
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp( const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }

}
class HomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return HomePageView();
  }

}
class HomePageView extends State<HomePage>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Sum App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
          child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
            children: [

            ],
        ),
      ),
    );
  }

}