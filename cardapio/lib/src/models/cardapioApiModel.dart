// ignore_for_file: file_names

class CardapioApiModel {
  List<Produtos>? produtos;

  CardapioApiModel({this.produtos});

  CardapioApiModel.fromJson(Map<String, dynamic> json) {
    if (json['produtos'] != null) {
      produtos = <Produtos>[];
      json['produtos'].forEach((v) {
        produtos!.add(Produtos.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (produtos != null) {
      data['produtos'] = produtos!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Produtos {
  int? id;
  String? nome;
  String? ingredientes;
  num? preco;
  String? categoria;
  String? imagemurl;
  String? createdAt;
  String? updatedAt;

  Produtos(
      {this.id,
      this.nome,
      this.ingredientes,
      this.preco,
      this.categoria,
      this.imagemurl,
      this.createdAt,
      this.updatedAt});

  Produtos.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nome = json['nome'];
    ingredientes = json['ingredientes'];
    preco = json['preco'];
    categoria = json['categoria'];
    imagemurl = json['imagemurl'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['nome'] = nome;
    data['ingredientes'] = ingredientes;
    data['preco'] = preco;
    data['categoria'] = categoria;
    data['imagemurl'] = imagemurl;
    data['createdAt'] = createdAt;
    data['updatedAt'] = updatedAt;
    return data;
  }
}
