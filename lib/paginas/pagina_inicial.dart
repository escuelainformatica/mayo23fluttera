import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mayo23b/modelo/Noticia.dart';
import 'package:mayo23b/widgets/mi_tarjeta.dart';
import 'package:mayo23b/widgets/mi_tarjeta_destacado.dart';
import 'package:mayo23b/widgets/mi_tarjetas.dart';

class PaginaInicial extends StatefulWidget {
  const PaginaInicial({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<PaginaInicial> createState() => _PaginaInicial();
}

class _PaginaInicial extends State<PaginaInicial> {
  int _counter = 0;
//{"imagen":"imagen.jpg","titulo":"titulo 1","descripcion":"descripcion 1\nsasasasas\nssdsdsdsd","fecha":"fecha","categoria":"categoria"},
  var valores=[
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

  Widget itemLista(contexto, indice)  {
    switch(valores[indice].tipo) {
      case 'normal':
        return MiTarjeta(noticia: valores[indice]);
        break;
      case 'destacada':
        return MiTarjetaDestacado(noticia: valores[indice]);
      case 'listado':
        return MiTarjetas();
    }
    return MiTarjeta(noticia: valores[indice]);


//
  }


  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: ListView.builder(
          itemCount: valores.length,
          itemBuilder: itemLista
      )

    );
  }
}
