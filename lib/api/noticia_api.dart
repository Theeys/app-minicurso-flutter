import 'dart:convert';

import 'package:app_minicurso_flutter/models/noticia.dart';
import 'package:http/http.dart';

import '../enum/rest_method.dart';

class NoticiaApi {

  Future<List<Noticia>> getNoticias() async {
    Request request = Request(RestMethod.GET.name, Uri.parse('http://localhost:8080/api/itens'));
    request.headers.addAll({'Content-Type': 'application/json'});
    StreamedResponse response = await request.send();
    
    if (response.statusCode == 200){
      String str = await response.stream.bytesToString();
      return List<Noticia>.from(json.decode(str).map((x) => Noticia.fromJson(x)));
    } else {
      return [];
      //throw const ApiRequestException('Não foi possivél obter a noticia');
    }
  }  

}