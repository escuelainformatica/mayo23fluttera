import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../modelo/Noticia.dart';
import 'mi_tarjeta.dart';

class MiTarjetas extends StatelessWidget {
  var valores = [
    Noticia("destacada",Icons.add_alert, "titulo #1", "descipcion #1\naaaa\nbbbbb", "23 Mayo 2022","cat1"),
    Noticia("normal",Icons.add_alert, "titulo #2", "descipcion #2\naaaa\nbbbbb", "23 Mayo 2022","cat2"),
    Noticia("normal",Icons.add_alert, "titulo #3", "descipcion #3\naaaa\nbbbbb", "23 Mayo 2022","cat3"),
    Noticia("listado",Icons.add_alert, "titulo #4", "descipcion #4\naaaa\nbbbbb", "23 Mayo 2022","cat4"),
    Noticia("normal",Icons.add_alert, "titulo #4", "descipcion #4\naaaa\nbbbbb", "23 Mayo 2022","cat4"),
    Noticia("normal",Icons.add_alert, "titulo #4", "descipcion #4\naaaa\nbbbbb", "23 Mayo 2022","cat4"),
    Noticia("listado",Icons.add_alert, "titulo #4", "descipcion #4\naaaa\nbbbbb", "23 Mayo 2022","cat4"),
    Noticia("normal",Icons.add_alert, "titulo #4", "descipcion #4\naaaa\nbbbbb", "23 Mayo 2022","cat4"),
    Noticia("normal",Icons.add_alert, "titulo #4", "descipcion #4\naaaa\nbbbbb", "23 Mayo 2022","cat4"),
    Noticia("normal",Icons.add_alert, "titulo #4", "descipcion #4\naaaa\nbbbbb", "23 Mayo 2022","cat4"),
    Noticia("normal",Icons.add_alert, "titulo #4", "descipcion #4\naaaa\nbbbbb", "23 Mayo 2022","cat4"),
    Noticia("normal",Icons.add_alert, "titulo #4", "descipcion #4\naaaa\nbbbbb", "23 Mayo 2022","cat4"),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisSize: MainAxisSize.min,
        children:[ SizedBox(
      height: 160,
      child: ListView.builder(
          //primary: true,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          //physics: const ClampingScrollPhysics(),
          //physics: const NeverScrollableScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: valores.length,
          itemBuilder: (BuildContext, int) {
            return MiTarjeta(noticia: valores[int]);
          }),
    )]);
  }
}
