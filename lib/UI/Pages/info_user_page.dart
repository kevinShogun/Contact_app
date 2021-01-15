import 'package:flutter/material.dart';

class InfoUserPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height: 20.0),
        Center(
          child: Container(
            height: 150.0,
            width: 150.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100.0),
                color: Theme.of(context).primaryColor,
                image: DecorationImage(image: NetworkImage("url"))),
          ),
        ),
      ],
    );
  }
}
