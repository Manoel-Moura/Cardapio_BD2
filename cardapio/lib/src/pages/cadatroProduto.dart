import 'package:cardapio/src/assets/colors/colors.dart';
import 'package:cardapio/src/pages/homePage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../API/repository_Produto.dart';
import '../models/userApiModel.dart';

class CadastroProduto extends StatelessWidget {
  CadastroProduto({Key? key}) : super(key: key);
  TextEditingController nameController = TextEditingController();
  TextEditingController ingredientesController = TextEditingController();
  TextEditingController precoController = TextEditingController();
  TextEditingController categoriaController = TextEditingController();
  TextEditingController urlController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    RepositoryProd cardap = Provider.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 29, horizontal: 29),
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
                      "Cadastro de Produtos",
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
                      prefixIcon: Icon(
                        Icons.fastfood_outlined,
                        color: Color(0XFF1E2841),
                      ),
                      hintText: "   Nome do Produto",
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
                    prefixIcon: Icon(
                      Icons.restaurant,
                      color: Color(0XFF1E2841),
                    ),
                    hintText: "   Ingredientes",
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
                      prefixIcon: Icon(
                        Icons.attach_money,
                        color: Color(0XFF1E2841),
                      ),
                      hintText: "   Preço",
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
                      prefixIcon: Icon(
                        Icons.category_outlined,
                        color: Color(0XFF1E2841),
                      ),
                      hintText: "   Categoria",
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
                      prefixIcon: Icon(
                        Icons.link,
                        color: Color(0XFF1E2841),
                      ),
                      hintText: "   Link imagem",
                      hintStyle: const TextStyle(
                        color: Color(0XFF1E2841),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: TextButton(
                    onPressed: () async {
                      print(nameController.text);
                      print(ingredientesController.text);
                      print(categoriaController.text);
                      print(precoController.text);
                      print(urlController.text);
                      // print(passwordController.text);
                      if (nameController.text != '' &&
                          precoController.text != null &&
                          urlController.text != '' &&
                          categoriaController != '') {
                        var produto = await cardap.CadastraProduto(
                          '${nameController.text}',
                          '${ingredientesController.text}',
                          double.parse('${precoController.text}'),
                          '${categoriaController.text}',
                          '${urlController.text}',
                        );
                        print(produto.resultado);
                        if (produto.resultado == 0) {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => HomePage(),
                            ),
                          );
                        }
                        // } else {
                        //   print("Senha invalida!");
                        // }
                      }
                    },
                    child: Text(
                      'Cadastrar',
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
              ],
            ),
          ),
        ),
      ),
    );

    // return Scaffold(
    //   body: FutureBuilder(
    //     future: cardap.CadastraProduto(
    //         "Coquinha",
    //         "Uma coca de 300ml juntamente com uma Loli",
    //         54.93,
    //         "Bebidas",
    //         "https://ih1.redbubble.net/image.434510290.8389/st,small,507x507-pad,600x600,f8f8f8.u4.jpg"),
    //     builder: (context, snapshot) {
    //       if (snapshot.hasData) {
    //         LoginApiModel cardapio = snapshot.data as LoginApiModel;

    //         if (cardapio.resultado == 0)
    //           return Center(
    //             child: Container(
    //               child: Text(
    //                 "Cadastrado",
    //               ),
    //             ),
    //           );
    //         else
    //           return Center(
    //             child: Container(
    //               child: Text(
    //                 "Produto ja cadatrado",
    //               ),
    //             ),
    //           );
    //       }
    //       return const CircularProgressIndicator(
    //         color: Colors.red,
    //       );
    //     },
    //   ),
    //   // Container(
    //   //   child: ListView.builder(
    //   //     itemCount: lista.dados != null ? lista.dados.lenth : 0,
    //   //     itemBuilder: (context, i) {
    //   //       final item = lista.dados[i];
    //   //       print(lista);
    //   //       return Container();
    //   //     },
    //   //   ),
    //   // ),
    // );
  }
}
