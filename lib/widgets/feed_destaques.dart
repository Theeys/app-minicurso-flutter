import 'package:app_minicurso_flutter/models/noticia.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../api/noticia_api.dart';

class FeedDestaques extends StatefulWidget {
  const FeedDestaques({Key? key}) : super(key: key);

  @override
  State<FeedDestaques> createState() => _FeedDestaquesState();
}

class _FeedDestaquesState extends State<FeedDestaques> {

  final NoticiaApi _noticiaApi = NoticiaApi(); 

  @override
  Widget build(BuildContext context) {
    return LimitedBox(
      child: montarLista(), 
      maxHeight: 200,
    );
  }
  
  Widget montarLista() {
    return FutureBuilder(
      future: _noticiaApi.getNoticias(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const CircularProgressIndicator();
        } else if (snapshot.hasError) {
          return const Text('Erro ao requisitar noticias :(');
        } else {      
          List<Noticia> noticias = snapshot.data as List<Noticia>;
          return ListView.separated(
            padding: const EdgeInsets.only(left: 10),
            shrinkWrap: true,      
            itemCount: noticias.length,
            scrollDirection: Axis.horizontal,
            physics: const ScrollPhysics(),
            itemBuilder: (context, index) {
              return montarDestaque(noticias[index]);
            },     
            separatorBuilder: (context, index) {
              return const SizedBox(width: 10);
            },
          );
        }
      }
    );
  }
  
  Widget montarDestaque(Noticia noticia) {
    return Image.network(
      noticia.imagem,
      height: 250,
      width: 300,
    );
  }
}