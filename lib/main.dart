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
          primarySwatch: Colors.red,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Scaffold(
          floatingActionButton: FloatingActionButton(
            child: Icon(CupertinoIcons.plus_app),
          ),
          appBar: AppBar(
            actions: <Widget>[
              IconButton(icon: Icon(Icons.menu), onPressed: () {}),
              IconButton(icon: Icon(Icons.message_rounded), onPressed: () {}),
              IconButton(
                  icon: Icon(Icons.image_search_outlined), onPressed: () {})
            ],
            title: Text('Material App By Me'),
          ),
          body: Container(
              child: ListTile(
            trailing: Icon(CupertinoIcons.mail),
            leading: Icon(Icons.person_pin),
            title: Text('Kevin Yamil'),
            subtitle: Text('Trabajando con Modularización en Fluter'),
          )),
        ));
  }
}
