// ignore_for_file: file_names

import 'package:cardapio/src/API/repository_Produto.dart';
import 'package:cardapio/src/assets/colors/colors.dart';
import 'package:cardapio/src/models/cardapioApiModel.dart';
import 'package:cardapio/src/pages/atualizaProduto.dart';
import 'package:cardapio/src/pages/cadatroProduto.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomeState();
}

class _HomeState extends State<HomePage> {
  bool islanche = false;
  bool ishaburguer = false;
  bool ispizza = false;
  bool isbebida = false;
  bool isreeficao = false;
  bool isall = true;
  String categoria = 'all';

  toggleLanche() {
    setState(() {
      if (islanche) {
        islanche = false;
      } else {
        islanche = true;
        ishaburguer = false;
        ispizza = false;
        isbebida = false;
        isreeficao = false;
        isall = false;
      }
    });
  }

  toggleHaburguer() {
    setState(() {
      if (ishaburguer) {
        ishaburguer = false;
      } else {
        islanche = false;
        ishaburguer = true;
        ispizza = false;
        isbebida = false;
        isreeficao = false;
        isall = false;
      }
    });
  }

  togglePizza() {
    setState(() {
      if (ispizza) {
        ispizza = false;
      } else {
        islanche = false;
        ishaburguer = false;
        ispizza = true;
        isbebida = false;
        isreeficao = false;
        isall = false;
      }
    });
  }

  toggleBebida() {
    setState(() {
      if (isbebida) {
        isbebida = false;
      } else {
        islanche = false;
        ishaburguer = false;
        ispizza = false;
        isbebida = true;
        isreeficao = false;
        isall = false;
      }
    });
  }

  toggleRefeicao() {
    setState(() {
      if (isreeficao) {
        isreeficao = false;
      } else {
        islanche = false;
        ishaburguer = false;
        ispizza = false;
        isbebida = false;
        isreeficao = true;
        isall = false;
      }
    });
  }

  toggleAll() {
    setState(() {
      if (isall) {
        isall = false;
      } else {
        islanche = false;
        ishaburguer = false;
        ispizza = false;
        isbebida = false;
        isreeficao = false;
        isall = true;
      }
    });
  }

  void novCategoria(String valor) async {
    setState(() {
      categoria = valor;
    });
  }

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
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.only(top: 5, bottom: 5),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          novCategoria('all');
                          toggleAll();
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 15, right: 15, bottom: 15),
                          child: Text(
                            'Todos',
                            style: TextStyle(
                              color: isall ? orange : Colors.white,
                              fontSize: 24.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          novCategoria('bebida');
                          toggleBebida();
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 15, right: 15, bottom: 15),
                          child: Text(
                            'Bebida',
                            style: TextStyle(
                              color: isbebida ? orange : Colors.white,
                              fontSize: 24.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          novCategoria('hamburguer');
                          toggleHaburguer();
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 15, right: 15, bottom: 15),
                          child: Text(
                            'Hamburguer',
                            style: TextStyle(
                              color: ishaburguer ? orange : Colors.white,
                              fontSize: 24.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          novCategoria('lanche');
                          toggleLanche();
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 15, right: 15, bottom: 15),
                          child: Text(
                            'Lanche',
                            style: TextStyle(
                              color: islanche ? orange : Colors.white,
                              fontSize: 24.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          novCategoria('pizza');
                          togglePizza();
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 15, right: 15, bottom: 15),
                          child: Text(
                            'Pizza',
                            style: TextStyle(
                              color: ispizza ? orange : Colors.white,
                              fontSize: 24.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          novCategoria('refeicao');
                          toggleRefeicao();
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 15, right: 15, bottom: 15),
                          child: Text(
                            'Refeição',
                            style: TextStyle(
                              color: isreeficao ? orange : Colors.white,
                              fontSize: 24.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              FutureBuilder(
                future: categoria == 'all'
                    ? cardap.BuscaProdutos()
                    : cardap.BuscaCategoriaProduto(categoria),
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
                                                padding:
                                                    const EdgeInsets.all(6),
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                  color: red,
                                                ),
                                                child: Text(
                                                  'R\$ ${e.preco}',
                                                  style: const TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
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
                                              child: SizedBox(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    2,
                                                child: Text(
                                                  '${e.ingredientes}',
                                                  textAlign: TextAlign.center,
                                                  style: const TextStyle(
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
                                                padding:
                                                    const EdgeInsets.all(6),
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                  color: Colors.green,
                                                ),
                                                child: const Text(
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
                                                  padding:
                                                      const EdgeInsets.all(6),
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
                                                    color: red,
                                                  ),
                                                  child: const Text(
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
                padding: const EdgeInsets.only(
                    right: 60, left: 60, top: 15, bottom: 15),
                child: Center(
                  child: TextButton(
                    onPressed: () async {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => CadastroProduto(),
                        ),
                      );
                    },
                    child: const Text(
                      'Adicionar',
                      style: TextStyle(
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
