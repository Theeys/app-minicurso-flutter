
import 'package:app_minicurso_flutter/configs/app_theme.dart';
import 'package:app_minicurso_flutter/models/noticia.dart';
import 'package:flutter/material.dart';


class NoticiaDetalhesPage extends StatelessWidget {

  final Noticia noticia;

  const NoticiaDetalhesPage({Key? key, required this.noticia}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: const Text('Novidades', style: AppTheme.title),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: AppTheme.iconColor,
          ),
          onPressed:() => Navigator.pop(context),
        )
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              montarImagem(noticia),
              const SizedBox(height: 10,),
              Text(noticia.titulo, textAlign: TextAlign.center, style: AppTheme.tituloNoticia,),
              const SizedBox(height: 30),
              Text(noticia.descricao, textAlign: TextAlign.justify, style: AppTheme.corpoNoticia,)
            ],
          )
        )
      )
    );
  }

  Widget montarImagem(Noticia noticia){
    return Image.network(
      noticia.imagem,
      fit: BoxFit.contain,
    );
  }  
}