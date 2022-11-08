import 'package:app_minicurso_flutter/configs/app_theme.dart';
import 'package:app_minicurso_flutter/tabs/noticias_tab.dart';
import 'package:app_minicurso_flutter/tabs/publicacao_tab.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const TabBar(
            isScrollable: true,
            labelColor: AppTheme.lightBlueText,
            labelStyle: AppTheme.title,
            indicatorColor: AppTheme.primaryColor,
            tabs: <Widget>[
              Tab(
                text: 'Notícias',
              ),
              Tab(
                text: 'Publicações',
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: <Widget>[
            NoticiasTab(),
            PublicacoesTab()
          ],
        ),
      ),
    );
  }
}