import 'package:cardapio/src/API/repository_Produto.dart';
import 'package:cardapio/src/assets/colors/colors.dart';
import 'package:cardapio/src/models/cardapioApiModel.dart';
import 'package:cardapio/src/pages/atualizaProduto.dart';
import 'package:cardapio/src/pages/cadatroProduto.dart';
import 'package:cardapio/src/widget/card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomeState();
}

class _HomeState extends State<HomePage> {
  // int x = 0;
  // void novCategoria(int valor) async {
  //   setState(() {
  //     x = valor;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    RepositoryProd cardap = Provider.of(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 10, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "ZM",
                      style: GoogleFonts.rockSalt(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),

                      // TextStyle(
                      //   color: Colors.white,
                      //   fontWeight: FontWeight.bold,
                      //   fontSize: 37,
                      //   //fontFamily: 'RockSalt',
                      // ),
                    ),
                    Text(
                      "  Lanches",
                      style: GoogleFonts.notoSans(
                        color: orange,
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    )
                  ],
                ),
              ),
              FutureBuilder(
                future: cardap.BuscaProdutos(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    CardapioApiModel cardapio =
                        snapshot.data as CardapioApiModel;

                    return SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Column(
                        children: cardapio.produtos!
                            .map(
                              (e) => Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  //decoration: BoxDecoration(borderRadius: BorderRadius),
                                  // decoration: BoxDecoration(

                                  //   border: Border.all(color: Colors.white, width: 3),
                                  // ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(color: orange, width: 3),
                                  ),

                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Stack(
                                          children: [
                                            CircleAvatar(
                                              radius: 50,
                                              backgroundImage: NetworkImage(
                                                  '${e.imagemurl}'),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 70, left: 60),
                                              child: Container(
                                                padding: EdgeInsets.all(6),
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                  color: red,
                                                ),
                                                child: Text(
                                                  'R\$ ${e.preco}',
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                //height: 30,
                                                // width: 60,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  bottom: 10),
                                              child: Text('${e.nome}',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      color: orange,
                                                      fontSize: 22,
                                                      fontWeight:
                                                          FontWeight.bold)),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 5, left: 5),
                                              child: Container(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    2,
                                                child: Text(
                                                  '${e.ingredientes}',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          //crossAxisAlignment: CrossAxisAlignment.end,
                                          children: [
                                            GestureDetector(
                                              onTap: () {
                                                Navigator.of(context).push(
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        AtualizaProduto(
                                                            id: int.parse(
                                                                '${e.id}')),
                                                  ),
                                                );
                                                //setState(() {});
                                              },
                                              child: Container(
                                                padding: EdgeInsets.all(6),
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                  color: Colors.green,
                                                ),
                                                child: Text(
                                                  'Editar',
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                //height: 30,
                                                // width: 60,
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 10),
                                              child: GestureDetector(
                                                onTap: () {
                                                  cardap.DeleteProduto(e.id!);
                                                  setState(() {});
                                                },
                                                child: Container(
                                                  padding: EdgeInsets.all(6),
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
                                                    color: red,
                                                  ),
                                                  child: Text(
                                                    'Remover',
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  //height: 30,
                                                  // width: 60,
                                                ),
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            )
                            .toList(),
                      ),
                    );
                  }
                  return const CircularProgressIndicator(
                    color: Colors.red,
                  );
                },
              ),
              Padding(
                padding: const EdgeInsets.only(right: 60, left: 60, top: 15),
                child: Center(
                  child: TextButton(
                    onPressed: () async {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => CadastroProduto(),
                        ),
                      );
                    },
                    child: Text(
                      'Adicionar',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                    style: TextButton.styleFrom(
                      primary: Colors.white,
                      backgroundColor: orange,
                      // elevation: 20,
                      minimumSize: const Size(800, 60),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
