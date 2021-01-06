import 'package:flutter/material.dart';
import 'package:flutter_app/Controllers/main_controller.dart';

class CustomButton extends StatefulWidget {
  @override
  _CustomButtonState createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  String title;

  @override
  void initState() {
    super.initState();
    title = "Agregar Contacto";
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        presionadoBoton();
        setState(() {
          title = "Nuevo Titulo";
        });
      },
      child: Container(
        height: 60.0,
        width: double.infinity,
        decoration: BoxDecoration(
            border: Border.all(color: Theme.of(context).primaryColor),
            borderRadius: BorderRadius.circular(35.0)),
        margin: EdgeInsets.all(8.0),
        padding: EdgeInsets.all(8.0),
        child: Center(
            child: Text(
          title,
          style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontSize: 20.0,
              fontWeight: FontWeight.w600),
        )),
      ),
    );
  }
}
