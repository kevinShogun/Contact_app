import 'package:flutter/material.dart';

class InfoUserPage extends StatelessWidget {
  final String foto;

  InfoUserPage({this.foto});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height: 20.0),
        Center(
          child: imgCaratula(foto),
        ),
      ],
    );
  }
}

Widget imgCaratula(String url) {
  return Container(
      height: 100.0,
      width: 100.0,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100.0),
          image: DecorationImage(
              /*  image: NetworkImage("url") */
              image: AssetImage(url),
              fit: BoxFit.cover)));
}
