import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../API/repository_Produto.dart';
import '../models/userApiModel.dart';

class CadastroProduto extends StatelessWidget {
  const CadastroProduto({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    RepositoryProd cardap = Provider.of(context);
    return Scaffold(
      body: FutureBuilder(
        future: cardap.CadastraProduto(
            "Coquinha",
            "Uma coca de 300ml juntamente com uma Loli",
            54.93,
            "Bebidas",
            "https://ih1.redbubble.net/image.434510290.8389/st,small,507x507-pad,600x600,f8f8f8.u4.jpg"),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            LoginApiModel cardapio = snapshot.data as LoginApiModel;

            if (cardapio.resultado == 0)
              return Center(
                child: Container(
                  child: Text(
                    "Cadastrado",
                  ),
                ),
              );
            else
              return Center(
                child: Container(
                  child: Text(
                    "Produto ja cadatrado",
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
