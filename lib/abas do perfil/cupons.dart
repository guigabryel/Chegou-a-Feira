import 'package:flutter/material.dart';

import '../components/abainicial.dart';
import '../components/barra.dart';
import '../components/barralateral.dart';
import '../components/fim.dart';
import '../minhaconta.dart';

class Cupons extends StatefulWidget {
  const Cupons({super.key});

  @override
  State<Cupons> createState() => _CuponsState();
}

class _CuponsState extends State<Cupons> {
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
                

                Text('Cupons', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
              ],
            ),
          ],
         ),
      ),
      Container(
        width: double.infinity,
        height: 600,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: Colors.black12
          ),
        ),
        child: 
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Image.asset('assets/images/cupons.png'),
            ),
            
            SizedBox(height: 15,),

            Text('Que pena, não há', style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),),
            Text('cupons no momento...', style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),),

            SizedBox(height: 10,),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Divider(),
            ),

            Padding(
              padding: const EdgeInsets.only(right: 60),
              child: Text('Caso tenha um código, adicione-o abaixo:', style: TextStyle(fontSize: 16),),
            ),

            SizedBox(height: 5,),

            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: Container(
                width: 350,
                height: 40,
                child: Row(
          children: [
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Digite o código do cupom',
                ),
              ),
            ),
            SizedBox(width: 10), 
            TextButton(
              onPressed: () {
                
              },
              child: Text(
                'Adicionar',
                style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
              ),
            ),
          ],
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