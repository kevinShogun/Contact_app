import 'package:flutter/material.dart';

class PersonModel {
  final IconData iconoIzquierda;
  final IconData iconoDerecha;
  final String nombre;
  final String descripcion;
  final String nickName;

  PersonModel(
      {this.nombre,
      this.nickName,
      this.descripcion,
      this.iconoDerecha,
      this.iconoIzquierda});
}

PersonModel persona1 = PersonModel(
    nickName: 'Kevin Garcia',
    nombre: 'Kevin Garcia',
    descripcion: 'Ejemplo',
    iconoDerecha: Icons.message_sharp,
    iconoIzquierda: Icons.person_pin_circle_sharp);

PersonModel persona2 = PersonModel(
    nickName: 'Kevin Garcia',
    nombre: 'Ejemplo 2',
    descripcion: 'Ejemplo',
    iconoDerecha: Icons.message_sharp,
    iconoIzquierda: Icons.person_pin_circle_sharp);

PersonModel persona3 = PersonModel(
    nickName: 'Kevin Garcia',
    nombre: 'Ejemplo 3',
    descripcion: 'Ejemplo',
    iconoDerecha: Icons.message_sharp,
    iconoIzquierda: Icons.person_pin_circle_sharp);
