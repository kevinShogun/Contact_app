import 'package:flutter/material.dart';
import 'package:flutter_app/Models/persona_modelo.dart';
import 'package:flutter_app/UI/Widgets/custom_list_title.dart';

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

class ContactList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Lista de Contactos'),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Expanded(
              child: ListView.builder(
                itemCount: personas.length,
                itemBuilder: (BuildContext context, int picker) {
                  return Dismissible(
                      background: Container(
                        color: Colors.deepPurple,
                      ),
                      onDismissed: (direction) => personas.removeAt(picker),
                      key: Key(picker.toString()),
                      child: CustomListTitle(
                        person: personas[picker],
                      ));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
