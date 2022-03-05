class ProdutoApiModel {
  int? resultado;
  Produto? produto;

  ProdutoApiModel({this.resultado, this.produto});

  ProdutoApiModel.fromJson(Map<String, dynamic> json) {
    resultado = json['resultado'];
    produto =
        json['produto'] != null ? new Produto.fromJson(json['produto']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['resultado'] = this.resultado;
    if (this.produto != null) {
      data['produto'] = this.produto!.toJson();
    }
    return data;
  }
}

class Produto {
  int? id;
  String? nome;
  String? ingredientes;
  double? preco;
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
