import 'package:flutter/material.dart';
import 'package:flutter_app/Controllers/contact_list_controller.dart';
import 'package:flutter_app/UI/Widgets/custom_list_title.dart';

ContactListController controller = ContactListController.instancia;

class ContactList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Lista de Contactos'),
      ),
      body: ValueListenableBuilder(
          valueListenable: controller.contactos,
          builder: (context, value, child) {
            return Container(
              child: Column(
                children: <Widget>[
                  Expanded(
                    child: ListView.builder(
                      itemCount: value.length,
                      itemBuilder: (BuildContext context, int picker) {
                        return Dismissible(
                            background: Container(
                              color: Colors.deepPurple,
                            ),
                            onDismissed: (direction) => value.removeAt(picker),
                            key: Key(picker.toString()),
                            child: CustomListTitle(
                              person: value[picker],
                            ));
                      },
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
