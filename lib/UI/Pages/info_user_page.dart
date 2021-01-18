import 'package:flutter/material.dart';
import 'package:flutter_app/Models/persona_modelo.dart';

class InfoUserPage extends StatelessWidget {
  final PersonModel contacto;

  InfoUserPage({this.contacto});

  @override
  Widget build(BuildContext context) {
    if (contacto.foto == null) {
      return SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 10.5),
            CircleAvatar(
              maxRadius: 60.0,
              child: Text(
                contacto.nombre[0].toUpperCase(),
                style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(height: 10.5),
            Text(contacto.telefono,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            SizedBox(height: 10.5),
            Text(contacto.descripcion,
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 15))
          ],
        ),
      );
    } else {
      return SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 10.5),
            imgCaratula(contacto.foto),
            SizedBox(height: 10.5),
            Text(contacto.telefono,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            SizedBox(height: 10.5),
            Text(contacto.descripcion,
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 15))
          ],
        ),
      );
    }
  }
}

Widget imgCaratula(String url) {
  return Container(
      height: 150.0,
      width: 150.0,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100.0),
          image: DecorationImage(
              /*  image: NetworkImage("url") */
              image: AssetImage(url),
              fit: BoxFit.cover)));
}
