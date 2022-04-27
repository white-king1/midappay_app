import 'package:flutter/material.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Widget> _children = [Text('Home'), Text('Shop'), Text('Account')];
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      bottomNavigationBar: SnakeNavigationBar.color( 
        items:[
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: 'tickets'),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: 'tickets'),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: 'tickets'),
        ],
      ),
      body: Container(),
    );
  }
}