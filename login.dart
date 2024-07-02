import 'package:chegou_a_feira/carrinho.dart';
import 'package:chegou_a_feira/components/abainicial.dart';
import 'package:chegou_a_feira/minhaconta.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'cadastro.dart';
import 'components/barralateral.dart';
import 'components/fim.dart';
import 'destaques.dart';
import 'components/barra.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

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
        child: Column(
          children: [

            Abainicial(),
          
            Container(
              width: MediaQuery.of(context).size.width,
              height: 1454,
              color: Color.fromARGB(255, 255, 255, 255),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20,),

                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      'Nosso supermercado virtual está mais moderno e seguro, ',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 13,
                      ),
                    ),
                  ),
                  
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Row(
                      children: [
                        Text(
                          'agora o login é através do ',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                          ),
                        ),
                        Text('E-mail',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        Text(' do seu cadastro, caso tenha',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                          ),
                        )
                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Row(
                      children: [
                        Text(
                          'problemas com sua senha, escolha a opção ',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                          ),
                        ),
                        Text('Solicitar nova ',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                            fontWeight: FontWeight.bold
                          ),
                        )
                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Row(
                      children: [
                        Text(
                          'senha.',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        Text(' Dúvidas ou problemas nos contate através do telefone ',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                          ),
                        )
                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Row(
                      children: [
                        Text(
                          '(83) 98840-4132 ',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        Text('ou através do e-mail',
                         style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                          ),
                        )
                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      'contato@chegoafeira.com.br',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                       color: Colors.black,
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.black
                      ),
                    ),
                  ),

                  SizedBox(height: 20,),

                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 430,
                    decoration: BoxDecoration(
                    color: Color.fromARGB(255, 238, 236, 236),
                    border: Border.all(
                      color: Colors.grey,
                      width: 1.5,
                    ),
                    borderRadius: BorderRadius.circular(5.0)
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 20,),
                        Padding(
                          padding: const EdgeInsets.only(left: 16),
                          child: Text(
                            'Faça seu Login',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 32,
                            ),
                          ),
                        ),

                        SizedBox(height: 7,),

                        Padding(
                          padding: const EdgeInsets.only(left: 16),
                          child: Text(
                            'Se você fez um pedido e cadastrou uma conta,',
                            style: TextStyle(
                              color: Color.fromARGB(255, 75, 74, 74),
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left: 16),
                          child: Text(
                            'coloque os dados da conta abaixo:',
                            style: TextStyle(
                              color: Color.fromARGB(255, 75, 74, 74),
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),

                        SizedBox(height: 10,),

                        Padding(
                          padding: const EdgeInsets.only(left: 19),
                          child: Text(
                            'E-mail',
                            style: TextStyle(
                              color: Color.fromARGB(255, 75, 74, 74),
                              fontSize: 14,
                            ),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: TextField(
                            decoration: InputDecoration(
                              labelText: 'E-mail',
                              contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 17.0),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(3),
                              )
                            ),
                          ),
                        ),

                        SizedBox(height: 10,),

                        Padding(
                          padding: const EdgeInsets.only(left: 19),
                          child: Text(
                            'Senha',
                            style: TextStyle(
                              color: Color.fromARGB(255, 75, 74, 74),
                              fontSize: 14,
                            ),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: TextField(
                            decoration: InputDecoration(
                              labelText: 'Senha',
                              contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 17.0),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(3),
                              )
                            ),
                          ),
                        ),

                        SizedBox(height: 10,),
                        
                        Padding(
                          padding: const EdgeInsets.only(left: 16.0),
                          child: Text(
                            'Solicitar nova senha',
                            style: TextStyle(
                             color: Color.fromARGB(255, 75, 74, 74),
                              decoration: TextDecoration.underline,
                              decorationColor: Colors.black
                            ),
                          ),
                        ),

                        SizedBox(height: 13,),  

                        Padding(
                          padding: const EdgeInsets.only(left: 16.0),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).pushReplacement(
                                MaterialPageRoute(builder: (context) => Destaques()),
                              );
                            },
                            child: Text('Acessar'),
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.white,
                              backgroundColor: Color.fromARGB(255, 41, 5, 70), 
                              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10), 
                              shape: RoundedRectangleBorder(),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                      SizedBox(height: 50,),
                  
                  Fim(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
