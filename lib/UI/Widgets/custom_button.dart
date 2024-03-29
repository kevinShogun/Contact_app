import 'package:flutter/material.dart';
import 'package:flutter_app/Controllers/main_controller.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
  final ValueNotifier<String> titulo =
      ValueNotifier<String>('Lista de contactos');

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          presionadoBoton();
          Navigator.pushNamed(context, 'list_contact');
          // Navigator.of(context).push(MaterialPageRoute(builder: (context)
          //titulo.value = 'Value Notifaier button';
        },
        child: ValueListenableBuilder(
          valueListenable: titulo,
          builder: (context, value, child) {
            return Container(
              height: 60.0,
              width: double.infinity,
              decoration: BoxDecoration(
                  border: Border.all(
                      color: Theme.of(context).primaryColor, width: 2.5),
                  borderRadius: BorderRadius.circular(50.0)),
              margin: EdgeInsets.all(8.0),
              padding: EdgeInsets.all(8.0),
              child: Center(
                  child: Text(value,
                      style: GoogleFonts.ubuntu(
                          color: Theme.of(context).primaryColor,
                          fontSize: 22.0,
                          fontWeight: FontWeight.w800))),
            );
          },
        ));
  }
}
