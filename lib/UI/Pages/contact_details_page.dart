import 'package:flutter/material.dart';
import 'package:flutter_app/Models/persona_modelo.dart';

class ContactDetails extends StatelessWidget {
  ContactDetails();

  Widget build(BuildContext context) {
    final ContactDetailsArguments argumentos =
        ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text(argumentos.persona.nombre),
        centerTitle: true,
      ),
      body: Center(
        child: Text(argumentos.contenido),
      ),
    );
  }
}

class ContactDetailsArguments {
  final PersonModel persona;
  final String contenido;

  ContactDetailsArguments({this.persona, this.contenido = "Ejemplode Texto"});
}
