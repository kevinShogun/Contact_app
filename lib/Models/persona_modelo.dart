import 'package:flutter/material.dart';

//kevn
class PersonModel {
  IconData iconoIzquierda;
  IconData iconoDerecha;
  String nombre;
  String descripcion;
  String nickName;
  String telefono;

  PersonModel(
      {this.nombre,
      this.nickName,
      this.descripcion,
      this.iconoDerecha,
      this.iconoIzquierda,
      this.telefono});
}

PersonModel persona1 = PersonModel(
    nickName: 'Kevin Garcia',
    nombre: 'Kevin Garcia',
    descripcion: 'Ejemplo Kevin',
    iconoDerecha: Icons.message_outlined,
    iconoIzquierda: Icons.person_outline_sharp);

PersonModel persona2 = PersonModel(
    nickName: 'Kevin Garcia',
    nombre: 'Maria Luisa',
    descripcion: 'Ejemplo Maria',
    iconoDerecha: Icons.message_outlined,
    iconoIzquierda: Icons.person_outline_sharp);

PersonModel persona3 = PersonModel(
    nickName: 'Kevin Garcia',
    nombre: 'Dimas Elias',
    descripcion: 'Ejemplo Dimas',
    iconoDerecha: Icons.message_outlined,
    iconoIzquierda: Icons.person_outline_sharp);

PersonModel persona4 = PersonModel(
    nickName: 'Kevin Garcia',
    nombre: 'Caleb Jireh',
    descripcion: 'Ejemplo Caleb',
    iconoDerecha: Icons.message_outlined,
    iconoIzquierda: Icons.person_outline_sharp);

PersonModel persona5 = PersonModel(
    nickName: 'Kevin Garcia',
    nombre: 'Josias Israel',
    descripcion: 'Ejemplo Josias',
    iconoDerecha: Icons.message_outlined,
    iconoIzquierda: Icons.person_outline_sharp);
