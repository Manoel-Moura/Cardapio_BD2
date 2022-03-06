// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../API/repository_Produto.dart';
import '../models/userApiModel.dart';

class DeletaProduto extends StatelessWidget {
  const DeletaProduto({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    RepositoryProd cardap = Provider.of(context);
    return Scaffold(
      body: FutureBuilder(
        future: cardap.DeleteProduto(2),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            LoginApiModel cardapio = snapshot.data as LoginApiModel;

            if (cardapio.resultado == 0) {
              return const Center(
                child: Text(
                  "Produto Deletado",
                ),
              );
            } else {
              return const Center(
                child: Text(
                  "Produto nao encontrado",
                ),
              );
            }
          }
          return const CircularProgressIndicator(
            color: Colors.red,
          );
        },
      ),
    );
  }
}
