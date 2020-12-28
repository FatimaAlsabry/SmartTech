//test merge
import 'package:flutter/material.dart';

List<String> products = ['Clothes', 'Electroincs', 'Losions', 'Mobiles'];

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
      ),
      //appBar
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            padding: EdgeInsets.all(5),
            child: ListTile(
              title: Text(products[index]),
              trailing: Image(
                image: AssetImage('images/img${index + 1}.jpeg'),
              ),
              onTap: () {},
            ),
          );
        },
      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue[500],
        child: Icon(Icons.add),
        onPressed: () {
          setState(() {
            //  random();
          });
        },
      ),
    );
  }
}
