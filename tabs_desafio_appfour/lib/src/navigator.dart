import 'package:flutter/material.dart';
import 'package:tabs_desafio_appfour/src/screens/first.dart';
import 'package:tabs_desafio_appfour/src/screens/second.dart';
import 'package:tabs_desafio_appfour/src/screens/third.dart';

class MyNavigatorState extends StatefulWidget {
  MyNavigatorState({Key key}) : super(key: key);

  @override
  _MyNavigatorStateState createState() => _MyNavigatorStateState();
}

class _MyNavigatorStateState extends State<MyNavigatorState> {
  @override
  Widget build(BuildContext context) {
    return 
    DefaultTabController(
      length: 3,
       child: Scaffold(
       appBar: AppBar(
         title: Text("Desafio de Bottom Navigation"),
       ),
       body: TabBarView(
         children: <Widget>[
           FirstTab(), SecondTab(), ThirdTab()
         ],
       ),
       bottomNavigationBar: Material(
         color: Colors.blueAccent,
         child: TabBar(
           tabs: <Tab>[
           Tab(icon: Icon(Icons.alarm),),
           Tab(icon: Icon(Icons.watch_later),),
           Tab(icon: Icon(Icons.airplanemode_active),)
           ],
         ),
       ),
       )
    );
  }
}