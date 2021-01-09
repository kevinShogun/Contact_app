import 'package:flutter/material.dart';

//kevn
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
    descripcion: 'Ejemplo Kevin',
    iconoDerecha: Icons.message_sharp,
    iconoIzquierda: Icons.person_outline_sharp);

PersonModel persona2 = PersonModel(
    nickName: 'Kevin Garcia',
    nombre: 'Maria Luisa',
    descripcion: 'Ejemplo Maria',
    iconoDerecha: Icons.message_sharp,
    iconoIzquierda: Icons.person_outline_sharp);

PersonModel persona3 = PersonModel(
    nickName: 'Kevin Garcia',
    nombre: 'Dimas Elias',
    descripcion: 'Ejemplo Dimas',
    iconoDerecha: Icons.message_sharp,
    iconoIzquierda: Icons.person_outline_sharp);

PersonModel persona4 = PersonModel(
    nickName: 'Kevin Garcia',
    nombre: 'Caleb Jireh',
    descripcion: 'Ejemplo Caleb',
    iconoDerecha: Icons.message_sharp,
    iconoIzquierda: Icons.person_outline_sharp);

PersonModel persona5 = PersonModel(
    nickName: 'Kevin Garcia',
    nombre: 'Josias Israel',
    descripcion: 'Ejemplo Josias',
    iconoDerecha: Icons.message_sharp,
    iconoIzquierda: Icons.person_outline_sharp);
