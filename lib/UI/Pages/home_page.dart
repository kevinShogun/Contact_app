import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_app/Models/Person_Model.dart';
import 'package:flutter_app/UI/Widgets/custom_list_title.dart';
import 'package:flutter_app/UI/Widgets/custom_button.dart';

List<PersonModel> personas = [
  persona1,
  persona2,
  persona3,
  persona1,
  persona2,
  persona3,
  persona1,
  persona2,
  persona3,
  persona1,
  persona2,
  persona3
];

class HomePage extends StatelessWidget {
  String titulo = "Kevin App";

  Widget csButton = new CustomButton();

/* GestureDetector(
        onTap: () {
          print('Boton Presionado!');
        },
        onDoubleTap: () {
          print('Presionado 2 Veces');
        },
        onLongPress: () {
          print('Presionado Por Mucho Tiempo');
        }, 
  Widget customBottum() => 
  // This widget is the root of your application.
*/
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('Presionando Boton Flotante');
        },
        child: Icon(CupertinoIcons.plus_app),
      ),
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                print('Presionando Menu');
              }),
          IconButton(icon: Icon(Icons.message_rounded), onPressed: () {}),
          IconButton(icon: Icon(Icons.image_search_outlined), onPressed: () {})
        ],
        title: Text(titulo),
      ),
      body: Column(
        children: <Widget>[
          CustomButton(),
          Expanded(
            child: ListView(children: <Widget>[
              for (int i = 0; i < personas.length; i++)
                CustomListTitle(person: personas[i])
            ]),
          ),
        ],
      ),
    );
  }
}
