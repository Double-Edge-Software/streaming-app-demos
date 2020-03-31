import 'package:flutter/material.dart';

class ShoppingListFruit extends StatefulWidget {
  @override
  _ShoppingListFruitState createState() => _ShoppingListFruitState();
}

var _fruits = {
  'item1':'Banana',
  'item2': 'Orange'
};

var _listOfFruits = _fruits.values.toList();

class _ShoppingListFruitState extends State<ShoppingListFruit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading:null,
        title:Text("Shopping List", style: TextStyle(color:Colors.black,fontSize: 25),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.notifications_none, color: Colors.black),
          ),
          IconButton(
            icon: Icon(
              Icons.shopping_cart, color: Colors.black,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: 20,
          child: Text(_listOfFruits[1], style: TextStyle(color: Colors.black, fontSize: 40)),
        )
      )
      
      
    );
  }
}