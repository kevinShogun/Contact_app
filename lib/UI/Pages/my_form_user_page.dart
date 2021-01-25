import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/Services/file_service.dart';
/* import 'package:flutter_app/Controllers/contact_list_controller.dart';
import 'package:flutter_app/Models/persona_modelo.dart'; */
import 'package:image_picker/image_picker.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

GlobalKey<FormState> formUsertKey = GlobalKey<FormState>();
GlobalKey<ScaffoldState> scaffoldUserKey = GlobalKey<ScaffoldState>();

class FormUserPage extends StatefulWidget {
  @override
  _FormUserPage createState() => _FormUserPage();
}

class _FormUserPage extends State<FormUserPage> {
/*   TextEditingController _nameController,
      _descriptionController,
      _cellphoneController;

  ContactListController _controller = ContactListController.instancia;
  PersonModel _personModel = PersonModel();
 */
  String path = "";

  bool validateAll() {
    if (formUsertKey.currentState.validate()) {
      return true;
    } else {
      scaffoldUserKey.currentState.showSnackBar(
          SnackBar(content: Text('Inserte correcatmente todos los campos')));
      return false;
    }
  }

  String validate(String value, String key) =>
      value.isEmpty ? "Inserte su $key" : null;

  @override
  void initState() {
    super.initState();
    /*  _nameController = TextEditingController(text: '');
    _descriptionController = TextEditingController(text: '');
    _cellphoneController = TextEditingController(text: ''); */
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldUserKey,
        appBar: AppBar(
          //automaticallyImplyLeading: false,
          centerTitle: true,
          title: Text('Editar Informacion'),
        ),
        body: SingleChildScrollView(
            child: Form(
          key: formUsertKey,
          child: Padding(
            padding: const EdgeInsets.all(9.0),
            child: Column(
              children: <Widget>[
                SizedBox(height: 8.5),
                /*
                *Imagen del Perfil 
                */
                path == ""
                    ? Container(
                        height: 150.0,
                        width: 150.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100.0),
                            image: DecorationImage(
                                image: AssetImage("assets/images/account.jpg"),
                                fit: BoxFit.contain)))
                    : Container(
                        height: 150.0,
                        width: 150.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: Image.file(
                          File(path),
                          fit: BoxFit.cover,
                        )),
                SizedBox(height: 12.0),
                /* 
                *Nombre del contacto
                */
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
                    onChanged: (value) => () {}),
                SizedBox(height: 8.5),
                /* 
                *Descripcion del Contacto
                */
                TextFormField(
                  maxLength: 100,
                  validator: (value) => validate(value, "Descripcion"),
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.description_outlined),
                      labelText: 'Descripcion',
                      contentPadding: const EdgeInsets.only(left: 25.0),
                      border: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Theme.of(context).primaryColor),
                          borderRadius: BorderRadius.circular(50.0))),
                  onChanged: (value) => () {},
                ),
                SizedBox(height: 8.5),
                /*
                 *Telefono del Contacto
                 */
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
                    onChanged: (value) => () {}),
                SizedBox(height: 40),

                /* 
                  *Acceso a Camara y Galeria 
                */

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    RaisedButton.icon(
                      onPressed: () async {
                        /* var image = await ImagePicker.platform
                            .pickImage(source: ImageSource.camera);
                            *ASi se accede a la camara
                            */

                        String image = await FileService.getImage(camera: true);

                        setState(() {
                          path = image;
                        });
                      },
                      icon: Icon(
                        MdiIcons.cameraAccount,
                        color: Colors.white,
                      ),
                      label: Text('Abrir Camara',
                          style: TextStyle(color: Colors.white)),
                      color: Colors.deepPurpleAccent.shade200,
                    ),
                    RaisedButton.icon(
                      onPressed: () async {
                        /*  var image = ImagePicker.platform
                            .pickImage(source: ImageSource.gallery); */
                        String image = await FileService.getImage();

                        setState(() {
                          path = image;
                        });
                      },
                      icon: Icon(
                        MdiIcons.image,
                        color: Colors.white,
                      ),
                      label: Text('Abrir Galeria',
                          style: TextStyle(color: Colors.white)),
                      color: Colors.deepPurpleAccent.shade200,
                    ),
                  ],
                ),
                SizedBox(height: 20),
                /**Boton de agregar Conacto */
                OutlinedButton(
                  onPressed: () {
                    if (validateAll()) {
                      // TODO: cambiar valores del usuario Admin.
                    }
                  },
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: 11.5),
                      Text('   Actualizar   '),
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
