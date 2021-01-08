import 'package:flutter/material.dart';

class FormContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text('Nuevo Contacto'),
      ),
      body: Center(
          child: RaisedButton(
        onPressed: () {
          // Navigator.of(context).pop();
          Navigator.pop(context);
        },
        child: Text('Ir hacia Atras'),
      )),
    );
  }
}
