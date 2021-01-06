import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_app/Controllers/main_controller.dart';
import 'package:flutter_app/Models/Person_Model.dart';
import 'package:flutter_app/UI/Widgets/custom_list_title.dart';

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

class CustomButton extends StatefulWidget {
  @override
  _CustomButtonState createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  String title;

  @override
  void initState() {
    super.initState();
    title = "Agregar Contacto";
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        presionadoBoton();
        setState(() {
          title = "Nuevo Titulo";
        });
      },
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
          title,
          style: TextStyle(
              color: Colors.redAccent,
              fontSize: 20.0,
              fontWeight: FontWeight.w600),
        )),
      ),
    );
  }
}
