// ignore_for_file: file_names

class ProdutoApiModel {
  int? resultado;
  Produto? produto;

  ProdutoApiModel({this.resultado, this.produto});

  ProdutoApiModel.fromJson(Map<String, dynamic> json) {
    resultado = json['resultado'];
    produto =
        json['produto'] != null ? Produto.fromJson(json['produto']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['resultado'] = resultado;
    if (produto != null) {
      data['produto'] = produto!.toJson();
    }
    return data;
  }
}

class Produto {
  int? id;
  String? nome;
  String? ingredientes;
  num? preco;
  String? categoria;
  String? imagemurl;
  String? createdAt;
  String? updatedAt;

  Produto(
      {this.id,
      this.nome,
      this.ingredientes,
      this.preco,
      this.categoria,
      this.imagemurl,
      this.createdAt,
      this.updatedAt});

  Produto.fromJson(Map<String, dynamic> json) {
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
