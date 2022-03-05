import 'package:cardapio/src/models/userApiModel.dart';
import 'package:dio/dio.dart';
// import 'package:flutter/cupertino.dart';

class RepositoryUser {
  final String baseUrl = 'http://localhost:3333';
  //final String endpoint = '/flutter/produtos/listar.php';

  Future<LoginApiModel> CadastrarUsuario(
      String nome, String email, String senha) async {
    Dio dio = Dio();
    dio.options.baseUrl = baseUrl;
    var resposta;
    //print(dio.toString());

    resposta = await dio.post('/user',
        data: {"name": "$nome", "email": "$email", "password_hash": "$senha"});

    if (resposta.statusCode == 200) {
      return LoginApiModel.fromJson(resposta.data);
    }

    return LoginApiModel();
  }

  Future<LoginApiModel> LoginUsuario(String email, String senha) async {
    Dio dio = Dio();
    dio.options.baseUrl = baseUrl;
    var resposta;

    resposta = await dio
        .post('/login', data: {"email": "$email", "password_hash": "$senha"});

    if (resposta.statusCode == 200) {
      return LoginApiModel.fromJson(resposta.data);
    }

    return LoginApiModel();
  }

  // Future<UserApiModel>
}
