import 'package:flutter/material.dart';
import 'package:flutter_app/Models/persona_modelo.dart';
import 'package:flutter_app/UI/Pages/contact_details_page.dart';

class CustomListTitle extends StatelessWidget {
  final PersonModel person;

  CustomListTitle({this.person});

  @override
  Widget build(BuildContext context) {
    return ListTile(
        onTap: () {
          Navigator.pushNamed(context, 'detalle_contacto',
              arguments: ContactDetailsArguments(
                  persona: person, contenido: person.descripcion));
        },
        trailing: SizedBox(
          width: 100.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.message_outlined),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.call_made_outlined),
                onPressed: () {},
              ),
            ],
          ),
        ),
        leading: CircleAvatar(
          child: Text(person.nombre[0].toUpperCase()),
        ),
        title: Text(person.nombre),
        subtitle: Text(person.descripcion));
  }
}
