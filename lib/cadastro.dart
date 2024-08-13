import 'package:chegou_a_feira/components/abainicial.dart';
import 'package:chegou_a_feira/components/barra.dart';
import 'package:chegou_a_feira/components/barralateral.dart';
import 'package:chegou_a_feira/destaques.dart';
import 'package:chegou_a_feira/login.dart';
import 'package:chegou_a_feira/carrinho.dart';
import 'components/botaocadastro.dart';
import 'components/calendario.dart';
import 'components/fim.dart';
import 'package:chegou_a_feira/minhaconta.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Cadastro extends StatelessWidget {
  const Cadastro({super.key});

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
        height: 1986,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white
        ),
        child: Column(
          children: [
            SizedBox(height: 30,),

            Padding(
              padding: const EdgeInsets.only(right: 200),
              child: Text('Minha Conta',
              style: TextStyle(
                fontSize: 28
                ),
              ),
            ),
            
            SizedBox(height: 5,),

            Padding(
              padding: const EdgeInsets.only(right: 43),
              child: Text('Se você já tem uma conta em nossa loja, acesse '),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Row(
                children: [
                  Text('sua conta '),
              
                  GestureDetector(
                onTap: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => Login()),
                  );
                        },
              child: Text('clicando aqui.',
                  style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 10,),

            Padding(
              padding: EdgeInsets.only(right: 148),
              child: Text('Seus dados de contato',
              style: TextStyle(fontSize: 20),
              ),
            ),

            Padding(
              padding:  EdgeInsets.only(top: 1),
              child: Divider(color: Colors.black12,
              thickness: 1,),
            ),
            
            Padding(
              padding: const EdgeInsets.only(left: 19),
              child: Row(children: [
                Text('*',style: TextStyle(color: Colors.red, fontSize: 18),),
                SizedBox(width: 3,),
                Text('Nome'),
                ],
              ),
            ),
            
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: SizedBox(
                height: 38,
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Nome',
                    labelStyle: TextStyle(color: Colors.grey),
                    contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 17.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(3),
                    )
                  ),
                ),
              ),
            ),

            SizedBox(height: 5,),

            Padding(
              padding: const EdgeInsets.only(left: 19),
              child: Row(children: [
                Text('*',style: TextStyle(color: Colors.red, fontSize: 18),),
                SizedBox(width: 3,),
                Text('Sobrenome'),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(10.0),
              child: SizedBox(
                height: 38,
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Sobrenome',
                    labelStyle: TextStyle(color: Colors.grey),
                    contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 17.0),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black12, width: 2),
                      borderRadius: BorderRadius.circular(3),
                    )
                  ),
                ),
              ),
            ),

            SizedBox(height: 5,),
            
            Padding(
              padding: const EdgeInsets.only(left: 19),
              child: Row(children: [
                Text('*',style: TextStyle(color: Colors.red, fontSize: 18),),
                SizedBox(width: 3,),
                Text('CPF'),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(10.0),
              child: SizedBox(
                height: 38,
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'CPF',
                    labelStyle: TextStyle(color: Colors.grey),
                    contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 17.0),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black12, width: 2),
                      borderRadius: BorderRadius.circular(3),
                    )
                  ),
                ),
              ),
            ),

            Calendario(),

            SizedBox(height: 5,),

            Padding(
              padding: const EdgeInsets.only(left: 19),
              child: Row(children: [
                Text('*',style: TextStyle(color: Colors.red, fontSize: 18),),
                SizedBox(width: 3,),
                Text('E-mail'),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(10.0),
              child: SizedBox(
                height: 38,
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'E-mail',
                    labelStyle: TextStyle(color: Colors.grey),
                    contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 17.0),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black12, width: 2),
                      borderRadius: BorderRadius.circular(3),
                    )
                  ),
                ),
              ),
            ),

            SizedBox(height: 5,),

            Padding(
              padding: const EdgeInsets.only(left: 19),
              child: Row(children: [
                Text('*',style: TextStyle(color: Colors.red, fontSize: 18),),
                SizedBox(width: 3,),
                Text('Telefone'),
               ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(10.0),
              child: SizedBox(
                height: 38,
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Telefone',
                    labelStyle: TextStyle(color: Colors.grey),
                    contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 17.0),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black12, width: 2),
                      borderRadius: BorderRadius.circular(3),
                    )
                  ),
                ),
              ),
            ),

            SizedBox(height: 10,),

            Padding(
              padding: EdgeInsets.only(right: 176),
              child: Text('Sua senha de acesso',
              style: TextStyle(fontSize: 20),
              ),
            ),

            Padding(
              padding:  EdgeInsets.only(top: 1),
              child: Divider(color: Colors.black12,
              thickness: 1,),
            ),

            SizedBox(height: 5,),

            Padding(
              padding: const EdgeInsets.only(left: 19),
              child: Row(children: [
                Text('*',style: TextStyle(color: Colors.red, fontSize: 18),),
                SizedBox(width: 3,),
                Text('Senha'),
               ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(10.0),
              child: SizedBox(
                height: 38,
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Senha',
                    labelStyle: TextStyle(color: Colors.grey),
                    contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 17.0),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black12, width: 2),
                      borderRadius: BorderRadius.circular(3),
                    )
                  ),
                ),
              ),
            ),

            SizedBox(height: 5,),

            Padding(
              padding: const EdgeInsets.only(left: 19),
              child: Row(children: [
                Text('*',style: TextStyle(color: Colors.red, fontSize: 18),),
                SizedBox(width: 3,),
                Text('Repetir a Senha'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: SizedBox(
                height: 38,
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Repetir a Senha',
                    labelStyle: TextStyle(color: Colors.grey),
                    contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 17.0),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black12, width: 2),
                      borderRadius: BorderRadius.circular(3),
                    )
                  ),
                ),
              ),
            ),
            
            SizedBox(height: 10,),

            Padding(
              padding: EdgeInsets.only(right: 260),
              child: Text('Informativo',
              style: TextStyle(fontSize: 20),
              ),
            ),

            Padding(
              padding:  EdgeInsets.only(top: 1),
              child: Divider(color: Colors.black12,
              thickness: 1,),
            ),

            SizedBox(height: 15,),

            Padding(
              padding: const EdgeInsets.only(right: 258),
              child: Text('Deseja receber?'),
            ),

            RadioButtons(),

            SizedBox(height: 20,),

            Padding(
              padding: const EdgeInsets.only(right: 250),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => Cadastro()),
                  );
                },
                child: Text('Continuar'),
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Color.fromARGB(255, 41, 5, 70), 
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10), 
                  shape: RoundedRectangleBorder(),
                ),
              ),
            ),

            SizedBox(height: 30,),
                       
                  Fim(),
          
        ]
       ),
      ),
     ]
    ),
   ),
  );
 }
}