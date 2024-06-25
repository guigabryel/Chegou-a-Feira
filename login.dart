import 'package:chegou_a_feira/carrinho.dart';
import 'package:chegou_a_feira/minhaconta.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'cadastro.dart';
import 'destaques.dart';
import 'barra.dart';
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
      drawer: Drawer(
        
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 176, 39, 69),
              ),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        child: Text('perfil', style: TextStyle(fontSize: 15),),
            radius: 30,
            backgroundColor: Colors.black,
            foregroundColor: Colors.white,
                      ),
                      Text(
                        'Nome',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                        ),
                      ),
                      Text(
                        'E-mail',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            
            ListTile(
              minTileHeight: 30,
              leading: Icon(Icons.person, color: Colors.blue,),
              title: Text('Minha Conta'),
              onTap: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => Conta()),
                );
              },
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Divider(),
            ),
            ListTile(
              minTileHeight: 30,
              leading: Icon(Icons.star, color: Colors.purple,),
              title: Text('DESTAQUES'),
              onTap: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => Destaques()),
                );
              },
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Divider(),
            ),
            ListTile(
              minTileHeight: 30,
              leading: Icon(Icons.local_bar, color: Colors.black,),
              title: Text('BEBIDAS'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Divider(),
            ),
            ListTile(
              minTileHeight: 30,
              leading: Icon(Icons.cookie, color: Color.fromARGB(255, 116, 58, 37),),
              title: Text('BEBIDAS E CHOCOLATES'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Divider(),
            ),
            ListTile(
              minTileHeight: 30,
              leading: FaIcon(FontAwesomeIcons.cheese, color: Color.fromARGB(255, 197, 191, 131),),
              title: Text('FRIO E LATICÍNIOS'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Divider(),
            ),
            ListTile(
              minTileHeight: 30,
              leading: FaIcon(FontAwesomeIcons.soap, color: Colors.blue,),
              title: Text('HIGIENE E BELEZA'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Divider(),
            ),
            ListTile(
              minTileHeight: 30,
              leading: FaIcon(FontAwesomeIcons.appleAlt, color: Color.fromARGB(255, 17, 88, 19),),
              title: Text('HOTIFRUTI'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Divider(),
            ),
            ListTile(
              minTileHeight: 30,
              leading: FaIcon(FontAwesomeIcons.sprayCan, color: Colors.lightBlue,),
              title: Text('LIMPEZA'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Divider(),
            ),
            ListTile(
              minTileHeight: 30,
              leading: FaIcon(FontAwesomeIcons.shoppingBasket, color: Colors.green,),
              title: Text('MERCEARIA'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Divider(),
            ),
            ListTile(
              minTileHeight: 30,
              leading: FaIcon(FontAwesomeIcons.breadSlice, color: const Color.fromARGB(255, 187, 109, 80),),
              title: Text('PADARIA'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Divider(),
            ),
            ListTile(
              minTileHeight: 30,
              leading: FaIcon(FontAwesomeIcons.paw, color: Colors.brown,),
              title: Text('UTILIDADES E PETSHOP'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 100,
              color: Color.fromARGB(255, 81, 44, 99),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => Destaques()),
                      );
                    },
                    child: Image.asset(
                      'assets/images/logo.png',
                      width: 130,
                      height: 130,
                    ),
                  ),
                  SizedBox(width: 80),
                  GestureDetector(
                     onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Meucarrinho(),
            ),
          );
        },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Meu carrinho',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  
                  Row(
                    children: [
                      Icon(
            Icons.shopping_cart,
            color: Colors.white,
            size: 20,
          ),
          SizedBox(width: 5,),
                      Text(
                        'R\$112,05',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),
            ],
           ),
         ),      
                  
                ],
              ),
              
            ),
            Container(
              height: 70,
              decoration: BoxDecoration(
              color: Color.fromARGB(255, 81, 44, 99),
              border: Border.all(
                color: Color.fromARGB(255, 81, 44, 99),
              )
              ),
              child: 
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SearchBar(),
                ),
                ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 1504,
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
                      SizedBox(height: 70,),
                  Container(
              width: MediaQuery.of(context).size.width,
              height: 850,
              color: Color.fromARGB(255, 33, 3, 58),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20,),
                  SizedBox(height: 20,),
                  Fim(),
                ],
              ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SearchBar extends StatefulWidget {
  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _controller,
      decoration: InputDecoration(
        hintText: 'Digite o que está procurando',
        hintStyle: TextStyle(color: Colors.grey), 
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(0.0),
          borderSide: BorderSide.none,
        ),
        filled: true,
        fillColor: Colors.white, 
        contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
        suffixIcon: Container(
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 110, 66, 146),
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(0.0),
              bottomRight: Radius.circular(0.0),
            ),
          ),
          child: Icon(Icons.search, color: Colors.white,), 
        ),
      ),
      onChanged: (value) {
        
        print('Pesquisando por: $value');
      },
      style: TextStyle(color: Colors.black), 
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}

class Fim extends StatelessWidget {
  const Fim({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
  children: [
    Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 13),
              child: Text(
                'ONDE ESTAMOS',
                style: TextStyle(
                  fontSize: 19,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 13),
              child: Row(
                children: [
                  Icon(Icons.location_on,
                  color: Colors.white,
                  size: 18,
                  ),
              Text(
                'Av. João Vieira Carneiro, 306 - João Pessoa/PB',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
              ]
                         ),
            ),
            SizedBox(height: 9),
            Padding(
              padding: const EdgeInsets.only(left: 13),
              child: Row(
                children: [
                  Icon(Icons.local_post_office,
                  color: Colors.white,
                  size: 18,
                  ),
              Text(
                ' contato@chegouafeira.com.br',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
              ]
                         ),
            ),
            SizedBox(height: 9),
            Padding(
              padding: const EdgeInsets.only(left: 13),
              child: Row(
                children: [
                  Icon(Icons.business,
                  color: Colors.white,
                  size: 18,
                  ),
              Text(
                ' 52.969.955/0001-55',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
              ]
                         ),
            ),
            SizedBox(height: 9),
            Padding(
              padding: const EdgeInsets.only(left: 13),
              child: Row(
                children: [
                  FaIcon(
                    FontAwesomeIcons.whatsapp,
                    color: Colors.white, 
                    size: 18,
                  ),
              Text(
                ' (83) 3021-4132 | 98840-4132',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
              ]
                         ),
            ),
           SizedBox(height: 5,),
           Padding(
              padding: const EdgeInsets.only(left: 13),
             child: Text(
                'INSTITUCIONAL',
                style: TextStyle(
                  fontSize: 19,
                  color: Colors.white,
                ),
              ),
           ),
            SizedBox(height: 5,),
            Padding(
              padding: const EdgeInsets.only(left: 13),
              child: Row(
                children: [
                  Text('O Chegou a Feira',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white
                  ),),],),
            ),
                SizedBox(height: 5,),
                Padding(
              padding: const EdgeInsets.only(left: 13),
                  child: Row(
                    children: [
                  Text('Como Comprar',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white
                  ),),],),
                ),
                SizedBox(height: 5,),
                 Padding(
              padding: const EdgeInsets.only(left: 13),
                   child: Row(
                    children: [
                                   Text('Termos e Condições',
                                   style: TextStyle(
                    fontSize: 15,
                    color: Colors.white
                                   ),),],),
                 ),
                SizedBox(height: 5,),
                 Padding(
              padding: const EdgeInsets.only(left: 13),
                   child: Row(
                    children: [
                                   Text('Entre em Contato',
                                   style: TextStyle(
                    fontSize: 15,
                    color: Colors.white
                                   ),),]),
                 ),
                SizedBox(height: 5,),
                Padding(
              padding: const EdgeInsets.only(left: 13),
                  child: Text(
                                'AVISOS',
                                style: TextStyle(
                  fontSize: 19,
                  color: Colors.white,
                                ),
                              ),
                ),
                SizedBox(height: 5,),
                Padding(
              padding: const EdgeInsets.only(left: 13),
                  child: Text(
                                '* imagens meramente ilustrativas',
                                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                                ),
                              ),
                ),
                SizedBox(height: 5,),
                Padding(
              padding: const EdgeInsets.only(left: 13),
                  child: Text(
                                'Venda sujeita à disponibilidade de estoque no dia ',
                                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                                ),
                              ),
                ),
                Padding(
              padding: const EdgeInsets.only(left: 13),
                  child: Text(
                                'da entrega. No caso de faltar algum produto, ',
                                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                                ),
                              ),
                ),
                Padding(
              padding: const EdgeInsets.only(left: 13),
                  child: Text(
                                'este não será entregue e o valor correspondente',
                                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                                ),
                              ),
                ),
                Padding(
              padding: const EdgeInsets.only(left: 13),
                  child: Text(
                                'não será cobrado.',
                                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                                ),
                              ),
                ),
            SizedBox(height: 10,),
            
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                           width: 370,
                          height: 25,
                          decoration: BoxDecoration(
                          color: Color.fromARGB(255, 33, 3, 58),
                            ),
                          child: Divider(color: Colors.white,),
              
                  ),
            ),

            SizedBox(height: 10,),

            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Image.asset(
                        'assets/images/logo.png',
                        width: 130,
                        height: 70,
                      ),
            ),
              Padding(
              padding: const EdgeInsets.only(left: 13),
                child: Text('Todos os direitos reservados',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white
                ),),
              ),
              Padding(
              padding: const EdgeInsets.only(left: 13),
                child: Text('Chegou a Feira © 2024',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white
                ),),
              ),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Image.asset(
                        'assets/images/formas.png',
                        width: 370,
                        height: 40,
                      ),
           ),
            Padding(
              padding: const EdgeInsets.only(left: 13),
              child: Row(
                  children: [
                    Container(
                      width: 200,
                      height: 40, // Altura da imagem
                      child: Align(
                        alignment: Alignment.centerLeft, // Alinha a imagem à esquerda
                        child: Image.asset(
                          'assets/images/pagseguro.png',
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ],
                ),
            ),
                          Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                           width: 370,
                          height: 25,
                          decoration: BoxDecoration(
                          color: Color.fromARGB(255, 33, 3, 58),
                            ),
                          child: Divider(color: Colors.grey,),
              
                  ),
            ),

              SizedBox(height: 10,),
              
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 
                   IconButton(
                    
                    onPressed: (){}, 
                    icon: Icon(Icons.facebook,
                    size: 30,
                    color: Colors.white,
                    ),
                   ),
                   IconButton(
                    
                    onPressed: (){}, 
                    icon: Icon(Icons.camera_alt_outlined,
                    size: 30,
                    color: Colors.white,
                    ),
                   ),
                   Padding(
                     padding: const EdgeInsets.only(left: 150),
                     child: GestureDetector(
                      onTap: () {
                        _launchURL('https://www.pbsoft.com.br');
                      },
                     
                     child: Image.asset(
                       'assets/images/pbsoft.png',
                       width: 100 ,
                      height: 50 ,
                       ),
                   ),
                   ),
                  ], 
                ),
              ],
            ),
          ],
        ),
      ],
    );
  

  }
}
void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
