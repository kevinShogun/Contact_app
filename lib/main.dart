import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App de Kevin',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Container(
          color: Colors.blueAccent,
          child: Center(
            child: Text(
              'Mi Primer Widget by Kevin Yamil',
              textAlign: TextAlign.center,
              style: TextStyle(
                  decoration: TextDecoration.none, color: Colors.white),
            ),
          )),
    );
  }
}
