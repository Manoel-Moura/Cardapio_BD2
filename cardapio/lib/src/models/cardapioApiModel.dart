class CardapioApiModel {
  List<Produtos>? produtos;

  CardapioApiModel({this.produtos});

  CardapioApiModel.fromJson(Map<String, dynamic> json) {
    if (json['produtos'] != null) {
      produtos = <Produtos>[];
      json['produtos'].forEach((v) {
        produtos!.add(new Produtos.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.produtos != null) {
      data['produtos'] = this.produtos!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Produtos {
  int? id;
  String? nome;
  String? ingredientes;
  double? preco;
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
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['nome'] = this.nome;
    data['ingredientes'] = this.ingredientes;
    data['preco'] = this.preco;
    data['categoria'] = this.categoria;
    data['imagemurl'] = this.imagemurl;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    return data;
  }
}
