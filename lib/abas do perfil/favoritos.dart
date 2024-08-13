import 'package:flutter/material.dart';

import '../components/abainicial.dart';
import '../components/barra.dart';
import '../components/barralateral.dart';
import '../components/fim.dart';

class Favoritos extends StatefulWidget {
  const Favoritos({super.key});

  @override
  State<Favoritos> createState() => _FavoritosState();
}

class _FavoritosState extends State<Favoritos> {
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

              Image.asset('assets/images/coracao1.png'),

              SizedBox(height: 15,),

              Text('Produtos Favoritos', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),

              Row(
                children: [
                  Text('Marque o coração', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),),
                  Text(' de um produto e monte uma lista', style: TextStyle(fontSize: 14),),
                ],
              ),
              Text('com seus produtos prediletos.', style: TextStyle(fontSize: 14),)
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