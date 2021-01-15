import 'package:flutter/material.dart';

//kevn
class PersonModel {
  IconData iconoIzquierda;
  IconData iconoDerecha;
  String nombre;
  String descripcion;
  String nickName;
  String telefono;
  String foto;

  PersonModel(
      {this.nombre,
      this.nickName,
      this.descripcion,
      this.iconoDerecha,
      this.iconoIzquierda,
      this.telefono,
      this.foto});
}

PersonModel persona1 = PersonModel(
    nickName: 'Kevin Garcia',
    nombre: 'Kevin Garcia',
    descripcion: 'Ejemplo Kevin',
    foto: 'assets/images/yo.jpg',
    iconoDerecha: Icons.message_outlined,
    iconoIzquierda: Icons.person_outline_sharp);

PersonModel persona2 = PersonModel(
    nickName: 'Kevin Garcia',
    nombre: 'Maria Luisa',
    descripcion: 'Ejemplo Maria',
    foto: 'assets/images/yo2.jpg',
    iconoDerecha: Icons.message_outlined,
    iconoIzquierda: Icons.person_outline_sharp);

PersonModel persona3 = PersonModel(
    nickName: 'Kevin Garcia',
    nombre: 'Dimas Elias',
    descripcion: 'Ejemplo Dimas',
    foto: 'assets/images/yo.jpg',
    iconoDerecha: Icons.message_outlined,
    iconoIzquierda: Icons.person_outline_sharp);

PersonModel persona4 = PersonModel(
    nickName: 'Kevin Garcia',
    nombre: 'Caleb Jireh',
    descripcion: 'Ejemplo Caleb',
    foto: 'assets/images/yo2.jpg',
    iconoDerecha: Icons.message_outlined,
    iconoIzquierda: Icons.person_outline_sharp);

PersonModel persona5 = PersonModel(
    nickName: 'Kevin Garcia',
    nombre: 'Josias Israel',
    descripcion: 'Ejemplo Josias',
    foto: 'assets/images/yo.jpg',
    iconoDerecha: Icons.message_outlined,
    iconoIzquierda: Icons.person_outline_sharp);
