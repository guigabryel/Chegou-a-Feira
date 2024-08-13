import 'package:flutter/material.dart';
import 'components/botaodestaques.dart';
import 'components/abainicial.dart';
import 'components/barra.dart';
import 'components/barralateral.dart';
import 'components/fim.dart';

class Teste extends StatefulWidget {
  const Teste({super.key});

  @override
  State<Teste> createState() => _TesteState();
}

class _TesteState extends State<Teste> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 176, 39, 69),
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        actions: [
          login(),
          SizedBox(width: 18),
          cadastro(),
          SizedBox(width: 10),
        ],
      ),
      drawer: Barralateral(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Abainicial(),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 70,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'DESTAQUES',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                    ),
                  ),
                ],
              ),
            ),
          //  Row(
          //    children: [
          //      Expanded(
          //        child: 
          //        // código do primeiro código
          //      ),
          //      
          //      Expanded(
          //        child: 
          //        //códido do segundo produto
          //      ),
          //    ],
          //  ),
            Container(
              width: double.infinity,
              height: 10,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
            ),
            Container(
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Divider(color: Colors.black12),
              ),
            ),
            Fim(),
          ],
        ),
      ),
    );
  }
}
