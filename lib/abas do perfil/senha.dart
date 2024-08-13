import 'package:chegou_a_feira/components/fim.dart';
import 'package:chegou_a_feira/components/formcadastro.dart';
import 'package:flutter/material.dart';
import '../components/TextfieldSenha.dart';
import '../components/abainicial.dart';
import '../components/barra.dart';
import '../components/barralateral.dart';
import '../components/botoesdados.dart';
import '../components/pessoafisica.dart';
import '../components/pessoajuridica.dart';
import '../destaques.dart';
import '../minhaconta.dart';

class Senha extends StatefulWidget {
  const Senha({super.key});

  @override
  State<Senha> createState() => _SenhaState();
}

class _SenhaState extends State<Senha> {
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
                

                Text('Alterar Senha', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
          ],
         ),
        ],
       ),
      ),
            Container(
        width: double.infinity,
        height: 470,
        color: Colors.white,

        child: Column(
          children: [

            SizedBox(height: 15,),

            Padding(
              padding: const EdgeInsets.only(right: 30),
              child: Text('Informe abaixo o seu e-mail atual e a nova senha.'),
            ),

            Padding(
              padding: const EdgeInsets.all(19.0),
              child: Column(
                children: [
                  TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Seu e-mail:',
                    hintText: 'Seu e-mail:',
                    prefixIcon: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text('* ', style: TextStyle(color: Colors.black)),
                    ),
                    prefixIconConstraints: BoxConstraints(minWidth: 0, minHeight: 0),
                  ),
                 ),

                 SizedBox(height: 10,),

                 Textfieldsenha(),

                ],
              ),
            ),

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
                  child: 
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Alterar Senha',
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