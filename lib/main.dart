import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

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
        secondaryHeaderColor: Colors.blueGrey,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.indigoAccent,
          child: Icon(Icons.add_business),
        ),
        appBar: AppBar(
          title: Text('Material App By Me'),
        ),
        body: Container(
          child: Center(
            child: Text(
              'Mi Primera App',
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
