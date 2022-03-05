import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../API/repository_Produto.dart';
import '../models/userApiModel.dart';

class AtualizaImagemProduto extends StatelessWidget {
  const AtualizaImagemProduto({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    RepositoryProd cardap = Provider.of(context);
    return Scaffold(
      body: FutureBuilder(
        future: cardap.AlteraImagemProduto(2,
            "https://cf.shopee.com.br/file/9165b340aa13246c59c32706e8ef4ebf"),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            LoginApiModel cardapio = snapshot.data as LoginApiModel;

            if (cardapio.resultado == 0)
              return Center(
                child: Container(
                  child: Text(
                    "Imagem Alterada",
                  ),
                ),
              );
            else
              return Center(
                child: Container(
                  child: Text(
                    "Produto nao encontrado",
                  ),
                ),
              );
          }
          return const CircularProgressIndicator(
            color: Colors.red,
          );
        },
      ),
      // Container(
      //   child: ListView.builder(
      //     itemCount: lista.dados != null ? lista.dados.lenth : 0,
      //     itemBuilder: (context, i) {
      //       final item = lista.dados[i];
      //       print(lista);
      //       return Container();
      //     },
      //   ),
      // ),
    );
  }
}
