import 'package:cardapio/src/API/repository_Produto.dart';
import 'package:cardapio/src/assets/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

class CardMessage extends StatelessWidget {
  const CardMessage({
    Key? key,
    required this.image,
    required this.name,
    required this.incredientes,
    required this.valor,
    required this.id,
    // this.radius,
  }) : super(key: key);
  final String name;
  final String incredientes;
  final String valor;
  final int? id;
  // final double? radius;
  final String image;

  @override
  Widget build(BuildContext context) {
    RepositoryProd produto = Provider.of(context);
    return Padding(
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
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage('$image'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 70, left: 60),
                    child: Container(
                      padding: EdgeInsets.all(6),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: red,
                      ),
                      child: Text(
                        'R\$ $valor',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
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
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Text('$name',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: orange,
                            fontSize: 22,
                            fontWeight: FontWeight.bold)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 5, left: 5),
                    child: Container(
                      width: MediaQuery.of(context).size.width / 2,
                      child: Text(
                        '$incredientes',
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
                    onTap: () {},
                    child: Container(
                      padding: EdgeInsets.all(6),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.green,
                      ),
                      child: Text(
                        'Editar',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      //height: 30,
                      // width: 60,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: GestureDetector(
                      onTap: () {
                        produto.DeleteProduto(id!);
                        setState() {}
                      },
                      child: Container(
                        padding: EdgeInsets.all(6),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: red,
                        ),
                        child: Text(
                          'Remover',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
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
    );
  }
}
