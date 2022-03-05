// import 'dart:ffi';

import 'package:cardapio/src/models/cardapioApiModel.dart';
import 'package:cardapio/src/models/produtoApiModel.dart';
import 'package:cardapio/src/models/userApiModel.dart';
// import 'package:cardapio/src/models/produtoApiModel.dart';
import 'package:dio/dio.dart';

class RepositoryProd {
  final String baseUrl = 'http://localhost:3333';
  //final String endpoint = '/flutter/produtos/listar.php';

  Future<LoginApiModel> CadastraProduto(String nome, String ingredientes,
      double preco, String categoria, String imagemurl) async {
    Dio dio = Dio();
    dio.options.baseUrl = baseUrl;
    var resposta;
    //print(dio.toString());

    resposta = await dio.post('/produto', data: {
      "nome": "$nome",
      "ingredientes": "$ingredientes",
      "preco": preco,
      "categoria": "$categoria",
      "imagemurl": "$imagemurl"
    });

    if (resposta.statusCode == 200) {
      return LoginApiModel.fromJson(resposta.data);
    }

    return LoginApiModel();
  }

  Future<CardapioApiModel> BuscaProdutos() async {
    Dio dio = Dio();
    dio.options.baseUrl = baseUrl;
    var resposta;
    //print(dio.toString());

    resposta = await dio.get('/produtos');

    if (resposta.statusCode == 200) {
      return CardapioApiModel.fromJson(resposta.data);
    }

    return CardapioApiModel();
  }

  Future<LoginApiModel> AlteraNomeProduto(int id, String nome) async {
    Dio dio = Dio();
    dio.options.baseUrl = baseUrl;
    var resposta;
    //print(dio.toString());

    resposta = await dio.put('/updateNome', data: {"id": id, "nome": '$nome'});

    if (resposta.statusCode == 200) {
      return LoginApiModel.fromJson(resposta.data);
    }

    return LoginApiModel();
  }

  Future<LoginApiModel> AlteraIngredientesProduto(
      int id, String ingredientes) async {
    Dio dio = Dio();
    dio.options.baseUrl = baseUrl;
    var resposta;
    //print(dio.toString());

    resposta = await dio.put('/updateIngredientes',
        data: {"id": id, "ingredientes": '$ingredientes'});

    if (resposta.statusCode == 200) {
      return LoginApiModel.fromJson(resposta.data);
    }

    return LoginApiModel();
  }

  Future<LoginApiModel> AlteraCategoriaProduto(int id, String categoria) async {
    Dio dio = Dio();
    dio.options.baseUrl = baseUrl;
    var resposta;
    //print(dio.toString());

    resposta = await dio
        .put('/updateCategoria', data: {"id": id, "categoria": '$categoria'});

    if (resposta.statusCode == 200) {
      return LoginApiModel.fromJson(resposta.data);
    }

    return LoginApiModel();
  }

  Future<LoginApiModel> AlteraPrecoProduto(int id, double preco) async {
    Dio dio = Dio();
    dio.options.baseUrl = baseUrl;
    var resposta;
    //print(dio.toString());

    resposta = await dio.put('/updatePreco', data: {"id": id, "preco": preco});

    if (resposta.statusCode == 200) {
      return LoginApiModel.fromJson(resposta.data);
    }

    return LoginApiModel();
  }

  Future<LoginApiModel> AlteraImagemProduto(int id, String imagemurl) async {
    Dio dio = Dio();
    dio.options.baseUrl = baseUrl;
    var resposta;
    //print(dio.toString());

    resposta = await dio
        .put('/updateImagem', data: {"id": id, "imagemurl": '$imagemurl'});

    if (resposta.statusCode == 200) {
      return LoginApiModel.fromJson(resposta.data);
    }

    return LoginApiModel();
  }

  Future<LoginApiModel> DeleteProduto(int id) async {
    Dio dio = Dio();
    dio.options.baseUrl = baseUrl;
    var resposta;
    //print(dio.toString());

    resposta = await dio.delete('/deleteProduto', data: {"id": id});

    if (resposta.statusCode == 200) {
      return LoginApiModel.fromJson(resposta.data);
    }

    return LoginApiModel();
  }

  Future<ProdutoApiModel> BuscaIdProduto(int id) async {
    Dio dio = Dio();
    dio.options.baseUrl = baseUrl;
    var resposta;
    //print(dio.toString());

    resposta = await dio.get('/buscaIdProduto/$id');

    if (resposta.statusCode == 200) {
      return ProdutoApiModel.fromJson(resposta.data);
    }

    return ProdutoApiModel();
  }
}
