import 'package:flutter/material.dart';
import 'package:chegou_a_feira/components/fim.dart';
import 'package:chegou_a_feira/components/formcadastro.dart';
import '../components/abainicial.dart';
import '../components/barra.dart';
import '../components/barralateral.dart';
import '../components/botoesdados.dart';
import '../components/pessoafisica.dart';
import '../components/pessoajuridica.dart';
import '../destaques.dart';
import '../minhaconta.dart';


class Endereco extends StatefulWidget {
  const Endereco({super.key});

  @override
  State<Endereco> createState() => _EnderecoState();
}

class _EnderecoState extends State<Endereco> {
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
                

                Text('Gerenciar endereços', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
          ],
         ),
        ],
       ),
      ),
            Container(
        width: double.infinity,
        height: 470,
        color: Color.fromARGB(31, 114, 113, 113),

        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                width: 355,
                height: 55,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 255, 17, 0),
                  borderRadius: BorderRadius.circular(9)
                ),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.add, color: Colors.white,),
                      Text(' Novo Endereço',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 16
                        ),),
                    ],
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