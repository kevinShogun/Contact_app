import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_app/Models/Person_Model.dart';

void main() {
  runApp(MyApp());
}

List<PersonModel> personas = [persona1, persona2, persona3];

class MyApp extends StatelessWidget {
  Widget customListTitle(PersonModel person) {
    return ListTile(
        trailing: Icon(person.iconoDerecha),
        leading: Icon(person.iconoIzquierda),
        title: Text(person.nombre),
        subtitle: Text(person.descripcion));
  }

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
              title: Text('Material App By Kevin'),
            ),
            body: Column(
              children: <Widget>[
                for (int i = 0; i < personas.length; i++)
                  customListTitle(personas[i])
              ],
            )));
  }
}
