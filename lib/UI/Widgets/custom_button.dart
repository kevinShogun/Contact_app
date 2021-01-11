import 'package:flutter/material.dart';
import 'package:flutter_app/Controllers/main_controller.dart';

class CustomButton extends StatelessWidget {
  final ValueNotifier<String> titulo =
      ValueNotifier<String>('Agregar Contacto');

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          presionadoBoton();
          // Navigator.of(context).push(MaterialPageRoute(builder: (context)
          Navigator.pushNamed(context, 'form_contact');
          titulo.value = 'Value Notifaier button';
        },
        onDoubleTap: () {
          presionadoBoton();
        },
        child: ValueListenableBuilder(
          valueListenable: titulo,
          builder: (context, value, child) {
            return Container(
              height: 60.0,
              width: double.infinity,
              decoration: BoxDecoration(
                  border: Border.all(color: Theme.of(context).primaryColor),
                  borderRadius: BorderRadius.circular(35.0)),
              margin: EdgeInsets.all(8.0),
              padding: EdgeInsets.all(8.0),
              child: Center(
                  child: Text(
                value,
                style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600),
              )),
            );
          },
        ));
  }
}
