import 'package:chegou_a_feira/components/fim.dart';
import 'package:flutter/material.dart';

import '../components/abainicial.dart';
import '../components/barra.dart';
import '../components/barralateral.dart';

class Prateleira extends StatefulWidget {
  const Prateleira({super.key});

  @override
  State<Prateleira> createState() => _PrateleiraState();
}

class _PrateleiraState extends State<Prateleira> {
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
         height: 300,
         color: Colors.white,
         child: Padding(
           padding: const EdgeInsets.all(20.0),
           child: Column(
            children: [

              Image.asset('assets/images/estrela1.png'),

              SizedBox(height: 15,),

              Text('Minha Prateleira', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),

              Text('É uma lista com os produtos que você mais compra.', style: TextStyle(fontSize: 14),)
                   ],
                  ),
         ),
      ),
      Container(
          width: double.infinity,
         height: 200,
         color: Color.fromARGB(31, 114, 113, 113),
      ),

      Fim()
     ]
    ),
   ),
  );
 }
}