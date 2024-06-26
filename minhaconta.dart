import 'package:chegou_a_feira/components/barra.dart';
import 'package:chegou_a_feira/components/abainicial.dart';
import 'package:chegou_a_feira/components/barralateral.dart';
import 'package:chegou_a_feira/components/fim.dart';
import 'package:chegou_a_feira/destaques.dart';
import 'package:chegou_a_feira/login.dart';
import 'package:chegou_a_feira/carrinho.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Conta extends StatefulWidget {
  const Conta({super.key});

  @override
  State<Conta> createState() => _ContaState();
}

class _ContaState extends State<Conta> {
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
         height: 380,
         color: Colors.white,
         child: 
         Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [

            Text('Perfil', style: TextStyle(fontSize: 30,),),

            SizedBox(height: 15,),

            Image.asset('assets/images/avatar.png'),
                        
                   SizedBox(height: 5,),
                        
                   Text('Nome do Cliente', 
                   style: TextStyle(
                  fontWeight: FontWeight.bold
                   ),
                  ),
                        
                  SizedBox(height: 4,),
                        
                   Text('E-mail do Cliente',),

                   SizedBox(height: 10,),
                        
            Divider(),

           Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 60,
                  
                  child:  Image.asset('assets/images/estrela.png'),
                  
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 60,
                  
                  child:  Image.asset('assets/images/coracao.png'),
                  
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 60,
                  
                  child:  Image.asset('assets/images/sino.png'),
                  
                ),
              ),
            ],
           ),

           Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('Minha'),
              Text('Produtos'),
              Text('Meus '),
            ],
           ),
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('Prateleira'),
              Text('Favoritos    '),
              Text('Alertas'),
            ],
           ),

            SizedBox(height: 5,),
      
           ],
          ),
         ),
        ),

        Container(
          width: MediaQuery.of(context).size.width,
         height: 350,
         color: Color.fromARGB(31, 114, 113, 113),          
        ),
                     Fim(),
       ]
      ),
     ),
    );
  }
}
