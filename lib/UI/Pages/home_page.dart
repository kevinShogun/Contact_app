import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_app/Controllers/theme_controller.dart';
import 'package:flutter_app/UI/Pages/contact_list_page.dart';
import 'package:flutter_app/UI/Widgets/custom_button.dart';

/*----------- Aqui Colocamos el Home --------------*/

List<Widget> pages = [
  Container(
    child: Column(children: <Widget>[
      CustomButton(),
      Icon(
        Icons.list_alt_rounded,
        size: 350,
        color: Colors.deepPurple[300],
      ),
    ]),
  ),
  ContactList(),
];

/*---------------------*/

GlobalKey<ScaffoldState> homeKey = GlobalKey<ScaffoldState>();
/*Aqui comienza el Home Page */

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: homeKey,
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
                title: Text('Contact List'),
                onTap: () {
                  Navigator.pop(context);
                  setState(() {
                    picker = 1;
                  });
                }),
          ],
        ),
      ),
      floatingActionButton: Builder(
        builder: (BuildContext context) {
          return FloatingActionButton(
            onPressed: () {
              Navigator.pushNamed(context, 'form_contact');
              // Scaffold.of(context).showSnackBar(
              //     SnackBar(content: Text('No puede agregar nuevos contactos')));
              print('Presionando Boton Flotante');
            },
            child: Icon(CupertinoIcons.plus_app),
          );
        },
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
          IconButton(
              icon: Icon(Icons.image_search_outlined),
              onPressed: () {
                homeKey.currentState.showSnackBar(
                    SnackBar(content: Text('No se pueden insertar imagenes')));
              })
        ],
        title: Text(titulo),
      ),
      body: pages[picker],
    );
  }
}
