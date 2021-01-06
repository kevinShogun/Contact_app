import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_app/Models/Person_Model.dart';
import 'package:flutter_app/Controllers/main_controller.dart';

void main() {
  runApp(MyApp());
}

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

class MyApp extends StatelessWidget {
  Widget customListTitle(PersonModel person) {
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

  Widget customBottum() => InkWell(
        onTap: () {
          presionadoBoton();
        },
        /* GestureDetector(
        onTap: () {
          print('Boton Presionado!');
        },
        onDoubleTap: () {
          print('Presionado 2 Veces');
        },
        onLongPress: () {
          print('Presionado Por Mucho Tiempo');
        }, */
        child: Container(
          height: 60.0,
          width: double.infinity,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.redAccent),
              borderRadius: BorderRadius.circular(15.0)),
          margin: EdgeInsets.all(8.0),
          padding: EdgeInsets.all(8.0),
          child: Center(
              child: Text(
            'Agregar Contacto',
            style: TextStyle(
                color: Colors.redAccent,
                fontSize: 20.0,
                fontWeight: FontWeight.w600),
          )),
        ),
      );
  // This widget is the root of your application.

  Widget botones() {
    return OutlineButton(
      onPressed: () {},
      child: Text('Outline Button'),
      color: Colors.red.shade400,
    );
  }

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
              IconButton(
                  icon: Icon(Icons.image_search_outlined), onPressed: () {})
            ],
            title: Text('Material App By Kevin'),
          ),
          body: Column(
            children: <Widget>[
              customBottum(),
              botones(),
              Expanded(
                child: ListView(children: <Widget>[
                  for (int i = 0; i < personas.length; i++)
                    customListTitle(personas[i])
                ]),
              ),
            ],
          ),
        ));
  }
}
