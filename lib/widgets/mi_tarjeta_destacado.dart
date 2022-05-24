import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../modelo/Noticia.dart';

class MiTarjetaDestacado extends StatelessWidget {
  Noticia noticia;
  MiTarjetaDestacado({Key? key,required this.noticia}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color:Colors.blue,
        child: Padding(
            padding: const EdgeInsets.only(left:10,top:20,right:10,bottom: 20),
            child: Row(
              children: [
                Icon(noticia.imagen,size:90,color: Colors.white,),
                const SizedBox(width: 20,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(noticia.titulo,style:GoogleFonts.robotoSlab(fontSize: 28,color: Colors.white) ),
                    Text(noticia.descripcion,style:const TextStyle(fontSize: 12,fontStyle:FontStyle.italic,color: Colors.white )),
                    Row(
                      children: [
                        Text(noticia.fecha,style:TextStyle(color: Colors.white)),
                        const Text("|",style:TextStyle(color: Colors.white)),
                        Text(noticia.categoria,style: const TextStyle(color: Colors.black,backgroundColor: Colors.red),),
                      ],
                    )
                  ],
                )

              ],
            )
        )
    );
  }



}