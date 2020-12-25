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
  int rand;
  List<int> kids = [1, 2, 3, 4, 5, 6];
  List<int> electronics = [7, 8, 9];
  List<int> beauty = [10, 11, 12];
  List<int> home = [13, 14, 15];
  int random() {
    rand = Random().nextInt(3);
    return rand;
  }

  Expanded myImage(int imgNum) {
    return Expanded(
      flex: 1,
      child: Image(
        image: AssetImage('images/img$imgNum.jpeg'),
      ),
    );
  }

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
                Text('Outfit'),
                myImage(kids[random()]),
                SizedBox(width: 10.0),
                Text('Electronics'),
                myImage(electronics[random()]),
              ],
            ),
            SizedBox(height: 20.0),
            Row(
              children: <Widget>[
                Text('Beauty'),
                myImage(beauty[random()]),
                SizedBox(width: 10.0),
                Text('Furniture'),
                myImage(home[random()]),
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
            rand = 0;
          });
        },
      ),
    );
  }
}
