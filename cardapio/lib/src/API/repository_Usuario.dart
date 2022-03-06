// ignore_for_file: file_names

import 'package:cardapio/src/models/userApiModel.dart';
import 'package:dio/dio.dart';

class RepositoryUser {
  // final String baseUrl = 'http://localhost:3333';
  final String baseUrl = 'http://10.0.0.155:3333';
  //final String endpoint = '/flutter/produtos/listar.php';

  // ignore: non_constant_identifier_names
  Future<LoginApiModel> CadastrarUsuario(
      String nome, String email, String senha) async {
    Dio dio = Dio();
    dio.options.baseUrl = baseUrl;
    Response resposta;
    //print(dio.toString());

    resposta = await dio.post('/user',
        data: {"name": nome, "email": email, "password_hash": senha});

    if (resposta.statusCode == 200) {
      return LoginApiModel.fromJson(resposta.data);
    }

    return LoginApiModel();
  }

  // ignore: non_constant_identifier_names
  Future<LoginApiModel> LoginUsuario(String email, String senha) async {
    Dio dio = Dio();
    dio.options.baseUrl = baseUrl;
    Response resposta;

    resposta = await dio
        .post('/login', data: {"email": email, "password_hash": senha});

    if (resposta.statusCode == 200) {
      return LoginApiModel.fromJson(resposta.data);
    }

    return LoginApiModel();
  }

  // Future<UserApiModel>
}
