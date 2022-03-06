// ignore_for_file: file_names, unused_local_variable

import 'package:cardapio/src/assets/colors/colors.dart';
import 'package:cardapio/src/models/produtoApiModel.dart';
import 'package:cardapio/src/pages/homePage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../API/repository_Produto.dart';
import '../models/userApiModel.dart';

// ignore: must_be_immutable
class AtualizaProduto extends StatelessWidget {
  AtualizaProduto({Key? key, required this.id}) : super(key: key);
  final int id;
  TextEditingController nameController = TextEditingController();
  TextEditingController ingredientesController = TextEditingController();
  TextEditingController precoController = TextEditingController();
  TextEditingController categoriaController = TextEditingController();
  TextEditingController urlController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    RepositoryProd cardap = Provider.of(context);

    // ProdutoApiModel x = cardap.BuscaIdProduto(id) as ProdutoApiModel;
    // String? nome = x.produto!.nome;
    // String? categoria = x.produto!.categoria;
    // String? ingredientes = x.produto!.ingredientes;
    // String? url = x.produto!.imagemurl;
    // double? preco = x.produto!.preco;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: FutureBuilder(
            future: cardap.BuscaIdProduto(id),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                ProdutoApiModel cardapio = snapshot.data as ProdutoApiModel;

                if (cardapio.resultado == 0) {
                  return Container(
                    margin: const EdgeInsets.symmetric(
                        vertical: 29, horizontal: 29),
                    child: Column(
                      //mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(bottom: 50, top: 30),
                          child: Center(
                            child: Column(
                              children: [
                                Text(
                                  "ZM",
                                  style: GoogleFonts.rockSalt(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 70,
                                  ),

                                  // TextStyle(
                                  //   color: Colors.white,
                                  //   fontWeight: FontWeight.bold,
                                  //   fontSize: 37,
                                  //   //fontFamily: 'RockSalt',
                                  // ),
                                ),
                                Text(
                                  "Lanches",
                                  style: GoogleFonts.notoSans(
                                    color: orange,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 50,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 15),
                          child: Container(
                            margin: const EdgeInsets.only(left: 29),
                            child: Text(
                              "Editar Produto",
                              style: GoogleFonts.notoSans(
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 15.0),
                          child: TextField(
                            // cursorColor: Colors.black,
                            controller: nameController,
                            //obscureText: password,
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.all(
                                  20), //Largura do TextFild
                              filled: true,
                              fillColor: Colors.grey.shade300, //Cor do TextFild
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: const BorderSide(
                                  color: Colors.black,
                                  width: 1.0,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide(
                                  color: orange,
                                  width: 2.0,
                                ),
                              ),
                              prefixIcon: const Icon(
                                Icons.fastfood_outlined,
                                color: Color(0XFF1E2841),
                              ),
                              hintText: "  ${cardapio.produto!.nome}",
                              hintStyle: const TextStyle(
                                color: Color(0XFF1E2841),
                              ),
                            ),
                          ),
                        ),
                        TextField(
                          // cursorColor: Colors.black,
                          controller: ingredientesController,
                          //obscureText: password,
                          decoration: InputDecoration(
                            contentPadding:
                                const EdgeInsets.all(20), //Largura do TextFild
                            filled: true,
                            fillColor: Colors.grey.shade300, //Cor do TextFild
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: const BorderSide(
                                color: Colors.black,
                                width: 1.0,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(
                                color: orange,
                                width: 2.0,
                              ),
                            ),
                            prefixIcon: const Icon(
                              Icons.restaurant,
                              color: Color(0XFF1E2841),
                            ),
                            hintText: "  ${cardapio.produto!.ingredientes}",
                            hintStyle: const TextStyle(
                              color: Color(0XFF1E2841),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: TextField(
                            // cursorColor: Colors.black,
                            controller: precoController,
                            keyboardType: TextInputType.number,
                            //obscureText: true,
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.all(
                                  20), //Largura do TextFild
                              filled: true,
                              fillColor: Colors.grey.shade300, //Cor do TextFild
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: const BorderSide(
                                  color: Colors.black,
                                  width: 1.0,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide(
                                  color: orange,
                                  width: 2.0,
                                ),
                              ),
                              prefixIcon: const Icon(
                                Icons.attach_money,
                                color: Color(0XFF1E2841),
                              ),
                              hintText: "  ${cardapio.produto!.preco}",
                              hintStyle: const TextStyle(
                                color: Color(0XFF1E2841),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15, bottom: 15.0),
                          child: TextField(
                            // cursorColor: Colors.black,
                            controller: categoriaController,
                            // obscureText: true,
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.all(
                                  20), //Largura do TextFild
                              filled: true,
                              fillColor: Colors.grey.shade300, //Cor do TextFild
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: const BorderSide(
                                  color: Colors.black,
                                  width: 1.0,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide(
                                  color: orange,
                                  width: 2.0,
                                ),
                              ),
                              prefixIcon: const Icon(
                                Icons.category_outlined,
                                color: Color(0XFF1E2841),
                              ),
                              hintText: "  ${cardapio.produto!.categoria}",
                              hintStyle: const TextStyle(
                                color: Color(0XFF1E2841),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 15.0),
                          child: TextField(
                            // cursorColor: Colors.black,
                            controller: urlController,
                            //obscureText: password,
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.all(
                                  20), //Largura do TextFild
                              filled: true,
                              fillColor: Colors.grey.shade300, //Cor do TextFild
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: const BorderSide(
                                  color: Colors.black,
                                  width: 1.0,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide(
                                  color: orange,
                                  width: 2.0,
                                ),
                              ),
                              prefixIcon: const Icon(
                                Icons.link,
                                color: Color(0XFF1E2841),
                              ),
                              hintText: "  ${cardapio.produto!.imagemurl}",
                              hintStyle: const TextStyle(
                                color: Color(0XFF1E2841),
                              ),
                            ),
                          ),
                        ),
                        Center(
                          child: TextButton(
                            onPressed: () async {
                              LoginApiModel produto;
                              if (nameController.text != '') {
                                produto = await cardap.AlteraNomeProduto(
                                    id, nameController.text);
                              }
                              if (categoriaController.text != '') {
                                produto = await cardap.AlteraCategoriaProduto(
                                    id, categoriaController.text.toLowerCase());
                              }
                              if (ingredientesController.text != '') {
                                produto =
                                    await cardap.AlteraIngredientesProduto(
                                        id, ingredientesController.text);
                              }
                              if (urlController.text != '') {
                                produto = await cardap.AlteraImagemProduto(
                                    id, urlController.text);
                              }
                              if (precoController.text != '') {
                                produto = await cardap.AlteraPrecoProduto(
                                    id, double.parse(precoController.text));
                              }
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => const HomePage(),
                                ),
                              );
                            },
                            child: const Text(
                              'Atualizar',
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
                      ],
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
        ),
      ),
    );
  }
}
