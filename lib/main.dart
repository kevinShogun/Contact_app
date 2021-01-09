import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_app/UI/Pages/contact_details_page.dart';
import 'package:flutter_app/UI/Pages/form_contact_page.dart';
import 'package:flutter_app/UI/Pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
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
        routes: {
          'detalle_contacto': (context) => ContactDetails(),
          'form_contact': (context) => FormContactPage()
        },
        title: 'Flutter App de Kevin',
        theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: HomePage());
  }
}
