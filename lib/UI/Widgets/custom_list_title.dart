import 'package:flutter/material.dart';
import 'package:flutter_app/Models/persona_modelo.dart';
import 'package:flutter_app/UI/Pages/contact_details_page.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

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
                icon: Image.asset("assets/images/whatsapp.ico",
                    fit: BoxFit.contain),
                onPressed: () {
                  launch("https/wa.me/+505${person.telefono}?text='hola'");
                },
              ),
              IconButton(
                icon: Icon(MdiIcons.phoneInTalkOutline),
                onPressed: () {
                  launch("tel:${person.telefono}");
                },
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
