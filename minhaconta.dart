import 'package:chegou_a_feira/abas%20do%20perfil/alertas.dart';
import 'package:chegou_a_feira/abas%20do%20perfil/favoritos.dart';
import 'package:chegou_a_feira/components/barra.dart';
import 'package:chegou_a_feira/components/abainicial.dart';
import 'package:chegou_a_feira/components/barradoapp.dart';
import 'package:chegou_a_feira/components/barralateral.dart';
import 'package:chegou_a_feira/components/fim.dart';
import 'package:chegou_a_feira/destaques.dart';
import 'package:chegou_a_feira/login.dart';
import 'package:chegou_a_feira/carrinho.dart';
import 'package:chegou_a_feira/abas%20do%20perfil/prateleira.dart';
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
              child: GestureDetector(
              onTap: () {
            Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => Prateleira()),
                );
              },
                child: Container(
                  width: 60,
                  child: Image.asset('assets/images/estrela.png'),
                ),
               ),
              ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
              onTap: () {
            Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => Favoritos()),
                );
              },
                child: Container(
                  width: 60,
                  child: Image.asset('assets/images/coracao.png'),
                ),
               ),
              ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
              onTap: () {
            Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => Alertas()),
                );
              },
                child: Container(
                  width: 60,
                  child: Image.asset('assets/images/sino.png'),
              ),
             ),
            ),
           ],
          ),
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
               GestureDetector(
              onTap: () {
            Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => Prateleira()),
                );
              },
              child: Text('Minha'),
            ),
            GestureDetector(
              onTap: () {
            Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => Favoritos()),
                );
              },
              child: Text('Produtos'),
            ),
            GestureDetector(
              onTap: () {
            Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => Alertas()),
                );
              },
              child: Text('Meus'),
             ),
            ],
           ),

           Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: GestureDetector(
              onTap: () {
            Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => Prateleira()),
                );
              },
                
                child: Text('Prateleira'),
              ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 60),
                child:GestureDetector(
              onTap: () {
            Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => Favoritos()),
                );
              },
                child: Text('Favoritos'),
              ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 69),
                child: GestureDetector(
              onTap: () {
            Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => Prateleira()),
                );
              },
                child: Text('Alertas'),
              ),
             ),
            ],
           ),

            SizedBox(height: 5,),
      
           ],
          ),
         ),
        ),
        
        Container(
          width: double.infinity,
         height: 432,
         color: Color.fromARGB(31, 114, 113, 113),

         child: Padding(
           padding: const EdgeInsets.all(16.0),
           child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5)
            ),
            child: Column(
            children: [
              
              ListTile(
                leading: Icon(Icons.notifications_active, color: Colors.grey),
                title: Text('Ativar Notificações'),
                onTap: () {
                 
                },
              ),
              Divider(height: 1),
              ListTile(
                leading: Icon(Icons.shopping_cart, color: Colors.grey),
                title: Text('Histórico de pedidos'),
                onTap: () {
                 
                },
              ),
              Divider(height: 1),
              ListTile(
                leading: FaIcon(FontAwesomeIcons.ticket, color: Colors.grey),
                title: Text('Cupons'),
                onTap: () {
                  
                },
              ),
              Divider(height: 1),
              ListTile(
                leading: FaIcon(FontAwesomeIcons.fileEdit, color: Colors.grey),
                title: Text('Dados de Cadastro'),
                onTap: () {
                  
                },
              ),
              Divider(height: 1),
              ListTile(
                leading: FaIcon(FontAwesomeIcons.mapLocationDot, color: Colors.grey),
                title: Text('Gerenciar endereços'),
                onTap: () {
                  
                },
              ),
              Divider(height: 1),
              ListTile(
                leading: FaIcon(FontAwesomeIcons.asterisk, color: Colors.grey),
                title: Text('Trocar sua senha'),
                onTap: () {
                  
                },
              ),
              Divider(height: 1),
              ListTile(
                leading: FaIcon(FontAwesomeIcons.signOutAlt, color: Colors.grey),
                title: Text('Sair'),
                onTap: () {
                
             },
            ),
           ],
          ),
         ),
        ),
       ),
                   Fim(),
     ]
    ),
   ),
  );
 }
}
