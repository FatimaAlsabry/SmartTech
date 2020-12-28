import 'package:flutter/material.dart';

class MyImage extends StatelessWidget {
  MyImage(this.imgNum);
  final int imgNum;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Image(
        height: 150.0,
        width: 200.0,
        image: AssetImage('images/img$imgNum.jpeg'),
      ),
    );
  }
}
