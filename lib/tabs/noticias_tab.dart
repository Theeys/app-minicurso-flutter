import 'package:app_minicurso_flutter/widgets/feed_destaques.dart';
import 'package:app_minicurso_flutter/widgets/feed_noticias.dart';
import 'package:flutter/material.dart';

class NoticiasTab extends StatelessWidget {
  const NoticiasTab({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: const [
          FeedDestaques(),
          SizedBox(height: 20,),
          FeedNoticia()
        ],
      ),
    );
  }
}