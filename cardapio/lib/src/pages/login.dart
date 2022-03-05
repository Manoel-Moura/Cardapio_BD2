// import 'package:cardapio/src/colors/colors.dart';
import 'package:cardapio/main.dart';
import 'package:cardapio/src/pages/cadatroUser.dart';
import 'package:cardapio/src/pages/homePage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:google_fonts/google_fonts.dart';

import '../API/repository_Usuario.dart';
import '../assets/colors/colors.dart';
import '../models/userApiModel.dart';

class LoginPage extends StatelessWidget {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  LoginPage({Key? key}) : super(key: key);

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
                  margin: const EdgeInsets.only(bottom: 70, top: 70),
                  child: Center(
                    child: Column(
                      children: [
                        Text(
                          "ZM",
                          style: GoogleFonts.rockSalt(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 50,
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
                      "Login",
                      style: GoogleFonts.notoSans(
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                        color: Colors.white,
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
                  padding: const EdgeInsets.only(top: 15, bottom: 30.0),
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
                Center(
                  child: TextButton(
                    onPressed: () async {
                      // print(emailController.text);
                      // print(passwordController.text);

                      var usuario = await user.LoginUsuario(
                          '${emailController.text}',
                          '${passwordController.text}');

                      if (usuario.resultado == 0) {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const HomePage(),
                          ),
                        );
                      }
                    },
                    child: Text(
                      'Entrar',
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
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Ainda não possui conta?',
                        style: TextStyle(color: Colors.white),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => Cadastro(),
                            ),
                          );
                        },
                        child: Text(
                          'Cadastra-se',
                          style: TextStyle(color: orange),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
