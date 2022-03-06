// ignore_for_file: file_names

import 'package:cardapio/src/models/cardapioApiModel.dart';
import 'package:cardapio/src/models/produtoApiModel.dart';
import 'package:cardapio/src/models/userApiModel.dart';
import 'package:dio/dio.dart';

class RepositoryProd {
  // final String baseUrl = 'http://localhost:3333';
  final String baseUrl = 'http://10.0.0.155:3333';

  // ignore: non_constant_identifier_names
  Future<LoginApiModel> CadastraProduto(String nome, String ingredientes,
      double preco, String categoria, String imagemurl) async {
    Dio dio = Dio();
    dio.options.baseUrl = baseUrl;
    Response resposta;
    //print(dio.toString());

    resposta = await dio.post('/produto', data: {
      "nome": nome,
      "ingredientes": ingredientes,
      "preco": preco,
      "categoria": categoria,
      "imagemurl": imagemurl
    });

    if (resposta.statusCode == 200) {
      return LoginApiModel.fromJson(resposta.data);
    }

    return LoginApiModel();
  }

  // ignore: non_constant_identifier_names
  Future<CardapioApiModel> BuscaProdutos() async {
    Dio dio = Dio();
    dio.options.baseUrl = baseUrl;
    Response resposta;
    //print(dio.toString());

    resposta = await dio.get('/produtos');

    if (resposta.statusCode == 200) {
      return CardapioApiModel.fromJson(resposta.data);
    }

    return CardapioApiModel();
  }

  // ignore: non_constant_identifier_names
  Future<LoginApiModel> AlteraNomeProduto(int id, String nome) async {
    Dio dio = Dio();
    dio.options.baseUrl = baseUrl;
    Response resposta;
    //print(dio.toString());

    resposta = await dio.put('/updateNome', data: {"id": id, "nome": nome});

    if (resposta.statusCode == 200) {
      return LoginApiModel.fromJson(resposta.data);
    }

    return LoginApiModel();
  }

  // ignore: non_constant_identifier_names
  Future<LoginApiModel> AlteraIngredientesProduto(
      int id, String ingredientes) async {
    Dio dio = Dio();
    dio.options.baseUrl = baseUrl;
    Response resposta;
    //print(dio.toString());

    resposta = await dio.put('/updateIngredientes',
        data: {"id": id, "ingredientes": ingredientes});

    if (resposta.statusCode == 200) {
      return LoginApiModel.fromJson(resposta.data);
    }

    return LoginApiModel();
  }

  // ignore: non_constant_identifier_names
  Future<LoginApiModel> AlteraCategoriaProduto(int id, String categoria) async {
    Dio dio = Dio();
    dio.options.baseUrl = baseUrl;
    Response resposta;
    //print(dio.toString());

    resposta = await dio
        .put('/updateCategoria', data: {"id": id, "categoria": categoria});

    if (resposta.statusCode == 200) {
      return LoginApiModel.fromJson(resposta.data);
    }

    return LoginApiModel();
  }

  // ignore: non_constant_identifier_names
  Future<LoginApiModel> AlteraPrecoProduto(int id, double preco) async {
    Dio dio = Dio();
    dio.options.baseUrl = baseUrl;
    Response resposta;
    //print(dio.toString());

    resposta = await dio.put('/updatePreco', data: {"id": id, "preco": preco});

    if (resposta.statusCode == 200) {
      return LoginApiModel.fromJson(resposta.data);
    }

    return LoginApiModel();
  }

  // ignore: non_constant_identifier_names
  Future<LoginApiModel> AlteraImagemProduto(int id, String imagemurl) async {
    Dio dio = Dio();
    dio.options.baseUrl = baseUrl;
    Response resposta;
    //print(dio.toString());

    resposta = await dio
        .put('/updateImagem', data: {"id": id, "imagemurl": imagemurl});

    if (resposta.statusCode == 200) {
      return LoginApiModel.fromJson(resposta.data);
    }

    return LoginApiModel();
  }

  // ignore: non_constant_identifier_names
  Future<LoginApiModel> DeleteProduto(int id) async {
    Dio dio = Dio();
    dio.options.baseUrl = baseUrl;
    Response resposta;
    //print(dio.toString());

    resposta = await dio.delete('/deleteProduto', data: {"id": id});

    if (resposta.statusCode == 200) {
      return LoginApiModel.fromJson(resposta.data);
    }

    return LoginApiModel();
  }

  // /buscaCategoriaProduto/:categoria

  // ignore: non_constant_identifier_names
  Future<ProdutoApiModel> BuscaIdProduto(int id) async {
    Dio dio = Dio();
    dio.options.baseUrl = baseUrl;
    Response resposta;
    //print(dio.toString());

    resposta = await dio.get('/buscaIdProduto/$id');

    if (resposta.statusCode == 200) {
      return ProdutoApiModel.fromJson(resposta.data);
    }

    return ProdutoApiModel();
  }

  // ignore: non_constant_identifier_names
  Future<CardapioApiModel> BuscaCategoriaProduto(String categoria) async {
    Dio dio = Dio();
    dio.options.baseUrl = baseUrl;
    Response resposta;
    //print(dio.toString());

    resposta = await dio.get('/buscaCategoriaProduto/$categoria');

    if (resposta.statusCode == 200) {
      return CardapioApiModel.fromJson(resposta.data);
    }

    return CardapioApiModel();
  }
}
