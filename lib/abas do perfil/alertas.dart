import 'package:chegou_a_feira/minhaconta.dart';
import 'package:flutter/material.dart';

import '../components/abainicial.dart';
import '../components/barra.dart';
import '../components/barralateral.dart';
import '../components/fim.dart';

class Alertas extends StatefulWidget {
  const Alertas({super.key});

  @override
  State<Alertas> createState() => _AlertasState();
}

class _AlertasState extends State<Alertas> {
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
         height: 415,
         color: Colors.white,
         child: Padding(
           padding: const EdgeInsets.all(20.0),
           child: Column(
            children: [

              Image.asset('assets/images/sino1.png'),

              SizedBox(height: 15,),

              Text('Olá, (Cliente).', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
              Text('Você ainda não possui alertas', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
              Text('preços.', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),

              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: Text('Ative o sininho', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),),
                  ),
                  Text(' de um produto e receba', style: TextStyle(fontSize: 14),),
                ],
              ),
              Text('notificações quando ele entrar em promoção.', style: TextStyle(fontSize: 14),),

              SizedBox(height: 10,),

              Container(
                width: 120,
                height: 40,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 255, 17, 0),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: GestureDetector(
              onTap: () {
            Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => Conta()),
                );
              },
                child: Center(child: Text('Ativar alertas', style: TextStyle(color: Colors.white, fontSize: 15,fontWeight: FontWeight.bold),)),
           ),
          ),
         ],
        ),
       ),
      ),
      Container(
          width: double.infinity,
         height: 220,
         color: Color.fromARGB(31, 114, 113, 113),
      ),

      Fim()
     ]
    ),
   ),
  );
 }
}