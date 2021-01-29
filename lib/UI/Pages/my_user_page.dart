import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_app/Services/shared_preference_service.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class MyUserPage extends StatelessWidget {
  Future<void> descargaImagen() async {
    print('Inicia la descarga');

    await Future.delayed(Duration(seconds: 2), () {
      print('Se descargo la imagen');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
              icon: Icon(MdiIcons.accountEditOutline),
              onPressed: () {
                Navigator.pushNamed(context, 'form_user_page');
              })
        ],
        title: Text('Información del Administrador'),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        children: <Widget>[
          SizedBox(height: 20.0),
          Text(
            "Identidad del Usuario",
            style: Theme.of(context).textTheme.headline6,
          ),
          SizedBox(height: 20.0),
          FutureBuilder(
              future: SharedPreferencesService.readString(key: 'imagen'),
              builder: (context, resultado) {
                if (resultado.hasData) {
                  return Container(
                      height: 150.0,
                      width: 150.0,
                      child: Image.memory(
                        base64Decode(resultado.data),
                        fit: BoxFit.cover,
                      ));
                } else {
                  return Container(
                      height: 150.0,
                      width: 150.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100.0),
                          image: DecorationImage(
                              /*  image: NetworkImage(
                          "https://livecoins.com.br/wp-content/uploads/2021/01/programador-blockchain.jpg"),
                      */
                              image: AssetImage('assets/images/yo.jpg'),
                              fit: BoxFit.cover)));
                }
              }),
          SizedBox(height: 30.0),
          FutureBuilder(
              future: DefaultAssetBundle.of(context)
                  .loadString("assets/scripts/data.json"),
              builder: (context, resultado) {
                if (resultado.hasData) {
                  final data = jsonDecode(resultado.data);

                  return Column(children: <Widget>[
                    Text(
                      data["nombre"],
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                    SizedBox(height: 30.0),
                    Text(
                      data["telefono"],
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                    Container(
                        padding: EdgeInsets.all(30.0),
                        child: Text(
                          data["descripcion"],
                          style: Theme.of(context).textTheme.bodyText2,
                        ))
                  ]);
                }
                return Container();
              })
        ],
      )),
    );
  }
}
