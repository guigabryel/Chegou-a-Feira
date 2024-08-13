import 'package:chegou_a_feira/components/fim.dart';
import 'package:chegou_a_feira/minhaconta.dart';
import 'package:flutter/material.dart';

import '../components/abainicial.dart';
import '../components/barra.dart';
import '../components/barralateral.dart';

class Historico extends StatefulWidget {
  const Historico({super.key});

  @override
  State<Historico> createState() => _HistoricoState();
}

class _HistoricoState extends State<Historico> {
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
         width: MediaQuery.of(context).size.width,
         height: 70,
         decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: Colors.black26
          )
         ),
         
         child: Column(
          children: [

            SizedBox(height: 15,),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              GestureDetector(
              onTap: () {
            Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => Conta()),
                );
              },
              child: Icon(Icons.chevron_left, size: 45,),
                ),
                

                Text('Pedidos', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
              ],
            ),
          ],
         ),
      ),
      Container(
        width: double.infinity,
        height: 70,
        decoration: BoxDecoration(
          color: Color.fromARGB(131, 231, 231, 231),
          border: Border.all(
            color: Colors.black12
          ),
        ),
        child: 
        Center(child: Text('Você ainda não realizou nenhuma compra.', style: TextStyle(fontSize: 16),)),
        
      ),
      Container(
        width: double.infinity,
        height: 350,
        decoration: BoxDecoration(
          color: Color.fromARGB(131, 231, 231, 231),
        ),        
      ),
      Fim()
     ]
    ),
   ),
  );
 }
}