import 'package:flutter/material.dart';

class PersonModel {
  final IconData iconoIzquierda;
  final IconData iconoDerecha;
  final String nombre;
  final String descripcion;

  PersonModel(
      {this.nombre, this.descripcion, this.iconoDerecha, this.iconoIzquierda});
}
