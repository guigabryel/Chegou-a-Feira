import 'package:chegou_a_feira/components/fim.dart';
import 'package:chegou_a_feira/components/formcadastro.dart';
import 'package:flutter/material.dart';

import '../components/abainicial.dart';
import '../components/barra.dart';
import '../components/barralateral.dart';
import '../components/botoesdados.dart';
import '../components/pessoafisica.dart';
import '../components/pessoajuridica.dart';
import '../destaques.dart';
import '../minhaconta.dart';

class Dados extends StatefulWidget {
  const Dados({super.key});

  @override
  State<Dados> createState() => _DadosState();
}

class _DadosState extends State<Dados> {
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
                

                Text('Dados de Cadastro', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
          ],
         ),
        ],
       ),
      ),
      Container(
        width: double.infinity,
        height: 470,
        color: Colors.white,

        child: Formcadastro(),
        
      ),
      Container(
        width: double.infinity,
        height: 290,
        color: Colors.white,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 130),
              child: Text('Não perca as novidades!', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
              
            ),
            Botoesdados(),

            SizedBox(height: 15,),

            GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => Conta()),
                        );
                      },
                      child: Container(
                        width: 360,
                        height: 50,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 255, 17, 0),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Center(
                          child: Text(
                            'Salvar alterações',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 17,
                            ),
                          ),
                        ),
                      ),
            ),
            SizedBox(height: 15,),

            GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => Destaques()),
                        );
                      },
                      child: Container(
              width: 360,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.circular(8)
              ),
             child: Center(child: 
             Padding(
               padding: const EdgeInsets.only(left: 115),
               child: Row(
                 children: [
                   Icon(Icons.delete),
                   Text('Excluir Conta', 
               style: TextStyle(
               color: Colors.black, 
               fontSize: 17),
                ),
               ],
              ),
             ),
            ),
           ),
          ),
         ],
        ),
       ),
      Fim()
     ]
    ),
   ),
  );
 }
}