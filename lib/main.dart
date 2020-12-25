import 'package:flutter/material.dart';

import 'myClasses.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MyStore(),
      ),
    );

class MyStore extends StatefulWidget {
  @override
  _MyStoreState createState() => _MyStoreState();
}

class _MyStoreState extends State<MyStore> {
  Generator randNumber = Generator();
  Products prodType = Products();

  Expanded myImage(int imgNum) {
    return Expanded(
      flex: 1,
      child: Image(
        height: 150.0,
        width: 200.0,
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
                myImage(prodType.kids[randNumber.random()]),
                SizedBox(width: 10.0),
                Text('Electronics'),
                myImage(prodType.electronics[randNumber.random()]),
              ],
            ),
            SizedBox(height: 20.0),
            Row(
              children: <Widget>[
                Text('Beauty'),
                myImage(prodType.beauty[randNumber.random()]),
                SizedBox(width: 10.0),
                Text('Furniture'),
                myImage(prodType.home[randNumber.random()]),
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
