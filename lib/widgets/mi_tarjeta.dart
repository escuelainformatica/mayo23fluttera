import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../modelo/Noticia.dart';

class MiTarjeta extends StatelessWidget {
  Noticia noticia;
  MiTarjeta({Key? key,required this.noticia}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {},
        child: Card(
        child: Padding(
            padding: const EdgeInsets.only(left:10,top:20,right:10,bottom: 20),
            child: Row(
              children: [
                Icon(noticia.imagen,size:90),
                const SizedBox(width: 20,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(noticia.titulo,style:GoogleFonts.robotoSlab(fontSize: 28) ),
                    Text(noticia.descripcion,style:const TextStyle(fontSize: 12,fontStyle:FontStyle.italic )),
                    Row(
                      children: [
                        Text(noticia.fecha),
                        const Text("|"),
                        InkWell(
                          onTap: () {

                          },
                          child: Text(noticia.categoria,style: const TextStyle(color: Colors.red),),
                        ),
                      ],
                    )
                  ],
                )

              ],
            )
        )
    )
    );
  }



}