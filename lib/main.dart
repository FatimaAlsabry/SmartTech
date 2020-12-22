import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyStore(),
    ),
  );
}

class MyStore extends StatefulWidget {
  @override
  _MyStoreState createState() => _MyStoreState();
}

class _MyStoreState extends State<MyStore> {
  int cell1 = 1;
  int cell2 = 1;
  int cell3 = 1;
  int cell4 = 1;
  void random() {
    cell1 = Random().nextInt(6) + 1;
    cell2 = Random().nextInt(6) + 1;
    cell3 = Random().nextInt(6) + 1;
    cell4 = Random().nextInt(6) + 1;
  }

  @override
  Expanded my_image(int cell) {
    return Expanded(
      flex: 1,
      child: Image(
        image: AssetImage('images/img$cell.jpeg'),
      ),
    );
  }

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
                my_image(cell1),
                SizedBox(width: 10.0),
                my_image(cell2)
              ],
            ),
            SizedBox(height: 20.0),
            Row(
              children: <Widget>[
                my_image(cell3),
                SizedBox(width: 10.0),
                my_image(cell4)
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
            random();
          });
        },
      ),
    );
  }
}
