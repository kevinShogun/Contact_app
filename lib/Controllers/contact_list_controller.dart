import 'package:flutter/material.dart';
import 'package:flutter_app/Models/persona_modelo.dart';

class ContactListController {
  static List<PersonModel> personas = [
    persona1,
    persona2,
    persona3,
    persona4,
    persona5
  ];
  static final ContactListController instancia = ContactListController._();

  ContactListController._();

  ValueNotifier<List<PersonModel>> contactos =
      ValueNotifier<List<PersonModel>>(personas);
}
