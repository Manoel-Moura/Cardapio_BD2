import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../API/repository_Produto.dart';
import '../models/produtoApiModel.dart';
import '../models/userApiModel.dart';

class BuscaIdProduto extends StatelessWidget {
  const BuscaIdProduto({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    RepositoryProd cardap = Provider.of(context);
    return Scaffold(
      body: FutureBuilder(
        future: cardap.BuscaIdProduto(4),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            ProdutoApiModel cardapio = snapshot.data as ProdutoApiModel;

            if (cardapio.resultado == 0)
              return Center(
                child: Container(
                  child: Text(
                    "${cardapio.produto!.nome}",
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
