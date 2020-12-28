import 'package:flutter/material.dart';

import 'myHome.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Colors.red,
          scaffoldBackgroundColor: Colors.pink,
          accentColor: Colors.purple,
        ),
        home: MyStore(),
      ),
    );
