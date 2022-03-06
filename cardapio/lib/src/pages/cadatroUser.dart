import 'package:cardapio/src/assets/colors/colors.dart';
import 'package:cardapio/src/pages/homePage.dart';
import 'package:cardapio/src/pages/login.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:google_fonts/google_fonts.dart';

import '../API/repository_Usuario.dart';
import '../models/userApiModel.dart';

class Cadastro extends StatelessWidget {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmePasswordController = TextEditingController();
  Cadastro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    RepositoryUser user = Provider.of(context);
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
                      "Cadastro",
                      style: GoogleFonts.notoSans(
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
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
                        Icons.person,
                        color: Color(0XFF1E2841),
                      ),
                      hintText: "   Digite seu nome",
                      hintStyle: const TextStyle(
                        color: Color(0XFF1E2841),
                      ),
                    ),
                  ),
                ),
                TextField(
                  // cursorColor: Colors.black,
                  controller: emailController,
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
                      Icons.email_rounded,
                      color: Color(0XFF1E2841),
                    ),
                    hintText: "   Digite seu email",
                    hintStyle: const TextStyle(
                      color: Color(0XFF1E2841),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: TextField(
                    // cursorColor: Colors.black,
                    controller: passwordController,
                    obscureText: true,
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
                        Icons.lock,
                        color: Color(0XFF1E2841),
                      ),
                      hintText: "   Digite sua senha",
                      hintStyle: const TextStyle(
                        color: Color(0XFF1E2841),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15, bottom: 30.0),
                  child: TextField(
                    // cursorColor: Colors.black,
                    controller: confirmePasswordController,
                    obscureText: true,
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
                        Icons.lock,
                        color: Color(0XFF1E2841),
                      ),
                      hintText: "   Confirme sua senha",
                      hintStyle: const TextStyle(
                        color: Color(0XFF1E2841),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: TextButton(
                    onPressed: () async {
                      // print(emailController.text);
                      // print(passwordController.text);
                      if (passwordController.text ==
                              confirmePasswordController.text &&
                          nameController.text != '' &&
                          emailController.text != '' &&
                          passwordController.text != '') {
                        var usuario = await user.CadastrarUsuario(
                            '${nameController.text}',
                            '${emailController.text}',
                            '${passwordController.text}');
                        print(usuario.resultado);
                        if (usuario.resultado == 0) {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => LoginPage(),
                            ),
                          );
                        }
                      } else {
                        print("Senha invalida!");
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

    // Container(
    //   child: Scaffold(
    //     body: FutureBuilder(
    //       future: user.CadastrarUsuario("Luis", "luis@gmail.com", "123456"),
    //       builder: (context, snapshot) {
    //         if (snapshot.hasData) {
    //           LoginApiModel user = snapshot.data as LoginApiModel;

    //           if (user.resultado == 0)
    //             return Center(
    //               child: Container(
    //                 child: Text(
    //                   "Cadastrado",
    //                   style: TextStyle(fontSize: 24),
    //                 ),
    //               ),
    //             );
    //           else
    //             return Center(
    //               child: Container(
    //                 child: Text(
    //                   "Usuario ja cadastrado",
    //                   style: TextStyle(fontSize: 24),
    //                 ),
    //               ),
    //             );
    //         }
    //         return const CircularProgressIndicator(
    //           color: Colors.red,
    //         );
    //       },
    //     ),
    //     // Container(
    //     //   child: ListView.builder(
    //     //     itemCount: lista.dados != null ? lista.dados.lenth : 0,
    //     //     itemBuilder: (context, i) {
    //     //       final item = lista.dados[i];
    //     //       print(lista);
    //     //       return Container();
    //     //     },
    //     //   ),
    //     // ),
    //   ),
    // );
  }
}
