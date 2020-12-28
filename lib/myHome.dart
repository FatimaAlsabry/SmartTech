import 'package:flutter/material.dart';

import 'myClasses.dart';
import 'myMethods.dart';
import 'myWidget.dart';

class MyStore extends StatefulWidget {
  @override
  _MyStoreState createState() => _MyStoreState();
}

class _MyStoreState extends State<MyStore> {
  Generator randNumber = Generator();
  Products prodType = Products();
  List<String> heads = ['Outfit', 'Electronics', 'Beauty', 'Furniture'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: AppBar(
        backgroundColor: Colors.blue[500],
        centerTitle: true,
        elevation: 0.0, //title container without shadow
        title: Text(
          'Smart-Tech Store',
          style: TextStyle(
            fontSize: 20.0,
          ),
        ),
      ), //appBar
      body: Container(
        padding: EdgeInsets.all(10.0),
        margin: EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                categories('${heads[0]}'),
                MyImage(prodType.kids[randNumber.random()]),
                SizedBox(width: 10.0),
                categories('${heads[1]}'),
                MyImage(prodType.electronics[randNumber.random()]),
              ],
            ),
            SizedBox(height: 20.0),
            Row(
              children: <Widget>[
                categories('${heads[2]}'),
                MyImage(prodType.beauty[randNumber.random()]),
                SizedBox(width: 10.0),
                categories('${heads[3]}'),
                MyImage(prodType.home[randNumber.random()]),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue[500],
        child: Icon(Icons.add),
        onPressed: () {
          setState(() {
            randNumber.rand = 0;
          });
        },
      ),
    );
  }
}
