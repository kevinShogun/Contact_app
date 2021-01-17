import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/Controllers/contact_list_controller.dart';
import 'package:flutter_app/Models/persona_modelo.dart';

GlobalKey<FormState> formContactKey = GlobalKey<FormState>();
GlobalKey<ScaffoldState> scaffoldContactKey = GlobalKey<ScaffoldState>();

class FormContactPage extends StatefulWidget {
  @override
  _FormContactPageState createState() => _FormContactPageState();
}

class _FormContactPageState extends State<FormContactPage> {
  TextEditingController _nameController,
      _descriptionController,
      _cellphoneController;

  ContactListController _controller = ContactListController.instancia;
  PersonModel _personModel = PersonModel();

  Pattern whitelistedPattern;

  bool validateAll() {
    if (formContactKey.currentState.validate()) {
      return true;
    } else {
      scaffoldContactKey.currentState.showSnackBar(
          SnackBar(content: Text('Inserte correcatmente todos los campos')));
      return false;
    }
  }

  String validate(String value, String key) =>
      value.isEmpty ? "Inserte su $key" : null;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController(text: '');
    _descriptionController = TextEditingController(text: '');
    _cellphoneController = TextEditingController(text: '');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldContactKey,
        appBar: AppBar(
          //automaticallyImplyLeading: false,
          centerTitle: true,
          title: Text('Nuevo Contacto'),
        ),
        body: SingleChildScrollView(
            child: Form(
          key: formContactKey,
          child: Padding(
            padding: const EdgeInsets.all(9.0),
            child: Column(
              children: <Widget>[
                SizedBox(height: 8.5),
                /* Nombre del contacto*/
                TextFormField(
                    keyboardType: TextInputType.name,
                    maxLength: 30,
                    validator: (value) => validate(value, "Nombre"),
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person_outline_rounded),
                        labelText: 'Nombre',
                        contentPadding: const EdgeInsets.only(left: 25.0),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Theme.of(context).primaryColor),
                            borderRadius: BorderRadius.circular(50.0))),
                    onChanged: (value) => _personModel.nombre = value,
                    controller: _nameController),
                SizedBox(height: 8.5),
                /* Descripcion del Contacto*/
                TextFormField(
                    maxLength: 100,
                    validator: (value) => validate(value, "Descripcion"),
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.description_outlined),
                        labelText: 'Descripcion',
                        contentPadding: const EdgeInsets.only(left: 25.0),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Theme.of(context).primaryColor),
                            borderRadius: BorderRadius.circular(50.0))),
                    onChanged: (value) => _personModel.descripcion = value,
                    controller: _descriptionController),
                SizedBox(height: 8.5),
                /* Telefono del COntacto */
                TextFormField(
                    keyboardType: TextInputType.phone,
                    maxLength: 15,
                    validator: (value) => validate(value, "Telefono"),
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.phone_android_outlined),
                        labelText: 'Telefono',
                        contentPadding: const EdgeInsets.only(left: 25.0),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Theme.of(context).primaryColor),
                            borderRadius: BorderRadius.circular(50.0))),
                    onChanged: (value) => _personModel.telefono = value,
                    controller: _cellphoneController),
                SizedBox(height: 40),
                /**Boton de agregar Conacto */
                OutlinedButton(
                  onPressed: () {
                    if (validateAll()) {
                      _controller.contactos.value =
                          List.from(_controller.contactos.value)
                            ..add(_personModel);
                      Navigator.pushNamed(context, 'list_contact');
                    }
                  },
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: 11.5),
                      Text('   Agregar   '),
                      SizedBox(height: 11.5),
                    ],
                  ),
                  style: ElevatedButton.styleFrom(
                    side: BorderSide(
                        width: 2.5, color: Theme.of(context).primaryColor),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32.0),
                    ),
                  ),
                ),
              ],
            ),
          ),
        )));
  }
}
