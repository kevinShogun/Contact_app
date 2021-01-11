import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_app/Controllers/theme_controller.dart';
import 'package:flutter_app/UI/Widgets/custom_list_title.dart';
import 'package:flutter_app/UI/Widgets/custom_button.dart';
import 'package:flutter_app/Models/persona_modelo.dart';

List<PersonModel> personas = [
  persona1,
  persona2,
  persona3,
  persona4,
  persona5,
  persona2,
  persona1,
  persona3,
  persona4,
  persona5
];

List<Widget> pages = [
  Container(
    child: Column(
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
  ),
  Container(color: Colors.deepPurpleAccent)
];

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String titulo = "Kevin App";

  int picker;

  Widget csButton = new CustomButton();

  ThemeController _controller = ThemeController.instancia;

  @override
  void initState() {
    super.initState();
    picker = 0;
  }

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
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            DrawerHeader(
                padding: EdgeInsets.zero,
                child: Container(
                  color: Theme.of(context).primaryColor,
                )),
            ListTile(
                title: Text('Home'),
                onTap: () {
                  Navigator.pop(context);
                  setState(() {
                    picker = 0;
                  });
                }),
            ListTile(
              title: Text('Second Page'),
              onTap: () {
                Navigator.pushNamed(context, 'form_contact');
              },
            ),
            ListTile(
                title: Text('Change Home'),
                onTap: () {
                  Navigator.pop(context);
                  setState(() {
                    picker = 1;
                  });
                }),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('Presionando Boton Flotante');
        },
        child: Icon(CupertinoIcons.plus_app),
      ),
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.brightness_3),
              onPressed: () {
                print('Presionando Menu');
                _controller.changeTheme(true);
              }),
          IconButton(
              icon: Icon(Icons.wb_sunny),
              onPressed: () {
                _controller.changeTheme(false);
              }),
          IconButton(icon: Icon(Icons.image_search_outlined), onPressed: () {})
        ],
        title: Text(titulo),
      ),
      body: pages[picker],
    );
  }
}
