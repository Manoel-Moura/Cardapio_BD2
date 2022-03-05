import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../API/repository_Produto.dart';
import '../models/cardapioApiModel.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    RepositoryProd cardap = Provider.of(context);
    return Scaffold(
      body: FutureBuilder(
        future: cardap.BuscaProdutos(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            CardapioApiModel cardapio = snapshot.data as CardapioApiModel;

            return SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: cardapio.produtos!
                    .map((e) => Container(
                          width: 50,
                          height: 50,
                          child: Center(
                            child: Text('${e.nome}'),
                          ),
                        ))
                    .toList(),
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
