import 'package:cardapio/src/API/repository_Produto.dart';
import 'package:cardapio/src/API/repository_Usuario.dart';
import 'package:cardapio/src/pages/login.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<RepositoryProd>(create: (context) => RepositoryProd()),
        Provider<RepositoryUser>(create: (context) => RepositoryUser()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.grey),
        home: const Home(),
      ),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    //return SafeArea(child: BuscaIdProduto());
    return LoginPage();
    // return HomePage();
    //return CadastroProduto();
    //return AtualizaProduto();
  }
}
