import 'package:chegou_a_feira/components/abainicial.dart';
import 'package:chegou_a_feira/components/barra.dart';
import 'package:chegou_a_feira/components/barralateral.dart';
import 'package:chegou_a_feira/destaques.dart';
import 'package:chegou_a_feira/login.dart';
import 'package:chegou_a_feira/carrinho.dart';
import 'package:chegou_a_feira/minhaconta.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../components/botaoprodutos.dart';
import '../components/fim.dart';

class Sabao1 extends StatelessWidget {
  const Sabao1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
              backgroundColor: Color.fromARGB(255, 176, 39, 69),
              iconTheme: IconThemeData(
                color: Colors.white
              ),
        
        actions: [
          login(),
          SizedBox(width: 18,),
          cadastro(),
          SizedBox(width: 10,),
        ]
      ),
      drawer: Barralateral(),

            body: SingleChildScrollView(
              child:  Column(
              children: [
                  
                  Abainicial(),

                  Container(
              height: MediaQuery.of(context).size.height * 0.55, 
              width: MediaQuery.of(context).size.width, 
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.8, 
                    child: Image.asset('assets/images/sabao2.png', fit: BoxFit.contain), 
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02), 
                  Padding(
                    padding: const EdgeInsets.all(7.0),
                    child: Divider(color: Colors.black12),
                  )
                ],
              ),
            ),

      Container(
        height: 1081,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white
        ),
        child: 
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Text(
                'Sabão Liquido Becker 3L',
                style: TextStyle(
                  fontSize: 30
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 270),
              child: Text('Modelo: 231'),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 175),
              child: Text('Diponibilidade: Em estoque'),
            ),
            SizedBox(height: 5,),
            Padding(
              padding: const EdgeInsets.only(right: 295),
              child: Container(
                          width: 75,
                          height: 25,
                          decoration: BoxDecoration(
                            color: Colors.white,
                          ),
                          child: Stack(
                            
                            children: [
                              
                              Align(
                                alignment: Alignment.center,
                              
                              child: Text('R\$21,99',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold
                          ),
                         ),
                        ),
                         Positioned(
                          left: 9,
                          child: Text('__________',
                          style: TextStyle(
                            fontSize: 12
                ),
               ),
              ),
             ],
            ),
           ),
          ),
          SizedBox(height: 5,),

          Padding(
            padding: const EdgeInsets.only(right: 238),
            child: Text('R\$18,99',
            style: TextStyle(
              color: Color.fromARGB(255, 156, 16, 16),
              fontSize: 30,
              fontWeight: FontWeight.bold
            ),
            ),
          ), 

                        Container(
                          width: 330,
                        height: 100,
                          child: QuantitySelector2(),
                        ),
                        
                        Fim(),
                        
        ],
       ),
      ),
     ]
    ),
   ),
  );
 }
}