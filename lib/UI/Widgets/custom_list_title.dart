import 'package:flutter/material.dart';
import 'package:flutter_app/Models/Person_Model.dart';

class CustomListTitle extends StatelessWidget {
  final PersonModel person;

  CustomListTitle({this.person});

  @override
  Widget build(BuildContext context) {
    return ListTile(
        trailing: SizedBox(
          width: 100.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Icon(person.iconoDerecha),
              SizedBox(width: 20.0),
              Icon(Icons.call)
            ],
          ),
        ),
        leading: Icon(person.iconoIzquierda),
        title: Text(person.nombre),
        subtitle: Text(person.descripcion));
  }
}
