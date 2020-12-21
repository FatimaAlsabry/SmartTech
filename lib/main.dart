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
  @override
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
                Expanded(
                  flex: 1,
                  child: Image(
                    // image: NetworkImage('https://smartcdn.prod.postmedia.digital/healthing/images?url=https%3A%2F%2Fsmartcdn.prod.postmedia.digital%2Fhealthing%2Fwp-content%2Fuploads%2F2020%2F01%2Fhappysadlight-scaled-2560.jpg&w=960'),
                    image: AssetImage('images/img$cell1.jpeg'),
                  ),
                ),
                SizedBox(width: 10.0),
                Expanded(
                  flex: 1,
                  child: Image(
                    //image: NetworkImage('https://smartcdn.prod.postmedia.digital/healthing/images?url=https%3A%2F%2Fsmartcdn.prod.postmedia.digital%2Fhealthing%2Fwp-content%2Fuploads%2F2020%2F01%2Fhappysadlight-scaled-2560.jpg&w=960'),
                    image: AssetImage('images/img$cell2.jpeg'),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.0),
            Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Image(
                    //image: NetworkImage(
                    // 'https://smartcdn.prod.postmedia.digital/healthing/images?url=https%3A%2F%2Fsmartcdn.prod.postmedia.digital%2Fhealthing%2Fwp-content%2Fuploads%2F2020%2F01%2Fhappysadlight-scaled-2560.jpg&w=960'),
                    image: AssetImage('images/img$cell3.jpeg'),
                  ),
                ),
                SizedBox(width: 10.0),
                Expanded(
                  flex: 1,
                  child: Image(
                    // image: NetworkImage(
                    // 'https://smartcdn.prod.postmedia.digital/healthing/images?url=https%3A%2F%2Fsmartcdn.prod.postmedia.digital%2Fhealthing%2Fwp-content%2Fuploads%2F2020%2F01%2Fhappysadlight-scaled-2560.jpg&w=960'),
                    image: AssetImage('images/img$cell4.jpeg'),
                  ),
                ),
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
