import 'package:flutter/material.dart';

class ShoppingList extends StatefulWidget {
  @override
  _ShoppingListState createState() => _ShoppingListState();
}

class _ShoppingListState extends State<ShoppingList> {
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
      
    );
  }
}