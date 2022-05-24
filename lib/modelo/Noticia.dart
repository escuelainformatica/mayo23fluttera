
import 'package:flutter/material.dart';

class Noticia {
  IconData imagen;
  String tipo;
  String titulo;
  String descripcion;
  String fecha;
  String categoria;

  Noticia(this.tipo, this.imagen, this.titulo, this.descripcion, this.fecha, this.categoria);
}