import 'package:app_minicurso_flutter/widgets/feed_noticias.dart';
import 'package:flutter/material.dart';

class PublicacoesTab extends StatelessWidget {
  const PublicacoesTab({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: const [
          FeedNoticia()
        ],
      ),
    );
  }
}


