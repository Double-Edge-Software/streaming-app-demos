import 'package:flutter/material.dart';
import 'package:shoppinglist/screens/shoppingList.dart';
import 'package:shoppinglist/screens/shoppingListFruit.dart';

class Homepage extends StatelessWidget {
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
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              Container(
                height: 40,
                child:ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    AspectRatio(
                      aspectRatio: 2/1,
                      child: Container(
                        margin: EdgeInsets.only(right:10),
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: Center(
                          child: Text("All", style:TextStyle() ,)
                        ),
                      ),
                    ),
                    AspectRatio(
                      aspectRatio: 2/1,
                      child: Container(
                        margin: EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: Center(
                          child: Text("Fruits", style:TextStyle() ,)
                        ),
                      ),
                    ),
                    AspectRatio(
                      aspectRatio: 2/1,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: Center(
                          child: Text("House", style:TextStyle() ,)
                        ),
                      ),
                    )
                  ],
                )
              ),
              SizedBox(height: 20,),
                makeItem(image: 'assets/images/cleaning1.jpg', tag:'red', heroText:'House-Hold Cleaners', textColor: Colors.black, context: context, navItem:ShoppingList() ),
                makeItem(image: 'assets/images/fruit.jpg', tag:'blue',  heroText:'Fruit',textColor: Colors.white, context: context, navItem: ShoppingListFruit())
            ],
          ),
        ),
      ),
    );
  }
}

Widget makeItem({image, tag, navItem, heroText, textColor, context}){
  return Hero(
    tag:tag,
    child:GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder:(context) => ShoppingList() ));
      },
          child: Container(
        height: 250,
        width: double.infinity,
        margin: EdgeInsets.only(bottom: 20),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 10,
              offset: Offset(0, 10)
            )
          ]
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(heroText, style:TextStyle(color: textColor, fontSize: 30, fontWeight: FontWeight.bold))
                    ],
                  )
                )
              ],
            )
          ],
        ),
      ),
    )
  );
}