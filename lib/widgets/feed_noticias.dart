import 'package:app_minicurso_flutter/api/noticia_api.dart';
import 'package:app_minicurso_flutter/configs/app_theme.dart';
import 'package:app_minicurso_flutter/models/noticia.dart';
import 'package:app_minicurso_flutter/pages/noticia_detalhe_page.dart';
import 'package:app_minicurso_flutter/widgets/box.dart';
import 'package:flutter/material.dart';

class FeedNoticia extends StatefulWidget {
  const FeedNoticia({Key? key}) : super(key: key);

  @override
  State<FeedNoticia> createState() => _FeedNoticiaState();
}

class _FeedNoticiaState extends State<FeedNoticia> {

  final NoticiaApi _noticiaApi = NoticiaApi(); 

  @override
  Widget build(BuildContext context) {

    return FutureBuilder(
      future: _noticiaApi.getNoticias(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const CircularProgressIndicator();
        } else if (snapshot.hasError) {
          return const Text('Erro ao requisitar noticias :(');
        } else {
          List<Noticia> noticias = snapshot.data as List<Noticia>;
          return ListView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            physics: const ScrollPhysics(),
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemCount: noticias.length,
            itemBuilder: (context, index) {
              return Box(child:  montarNoticia(context, noticias[index]));
            },
          );
        }
      }
    );
  }
  
  Widget montarNoticia(BuildContext context, Noticia noticia) {
    return GestureDetector(
      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=> NoticiaDetalhesPage(noticia: noticia))),
      child: Row(
        children: [
          montarImagem(noticia),
          montarCorpo(noticia)
        ],
      )
    );
  }  

  Widget montarImagem(Noticia noticia){
    return Image.network(
      noticia.imagem,
      height: 100,
      width: 100,
    );
  }

  Widget montarCorpo(Noticia noticia){
    return Flexible(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              noticia.titulo , 
              textAlign: TextAlign.center,
              style: AppTheme.tituloNoticia,
              ),
            const SizedBox(height: 5),
            LimitedBox(
              maxHeight: 80,
              child: Text(
                noticia.descricao,
                overflow: TextOverflow.clip,
                textAlign: TextAlign.justify,
                style: AppTheme.corpoNoticia,
              ),
            ),
          ],
        )
      )
    );
  }
}