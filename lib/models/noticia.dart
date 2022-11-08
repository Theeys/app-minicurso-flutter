import 'dart:convert';

class Noticia {
    Noticia({
        required this.titulo,
        required this.descricao,
        required this.ativo,
        required this.imagem,
    });

    String titulo;
    String descricao;
    bool ativo;
    String imagem;

    factory Noticia.fromRawJson(String str) => Noticia.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Noticia.fromJson(Map<String, dynamic> json) => Noticia(
        titulo: json["titulo"],
        descricao: json["descricao"],
        ativo: json["ativo"],
        imagem: json["imagem"],
    );

    Map<String, dynamic> toJson() => {
        "titulo": titulo,
        "descricao": descricao,
        "ativo": ativo,
        "imagem": imagem,
    };
}