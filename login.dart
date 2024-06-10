import 'package:flutter/material.dart';
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
        backgroundColor: const Color.fromARGB(255, 176, 39, 69),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu, color: Colors.white,),
        ),
        actions: [
          login(),
          SizedBox(width: 18,),
          cadastro(),
          SizedBox(width: 10,),
        ],
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
                  Column(
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
                      Text(
                        'R\$0,00',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                    
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
              height: 1770,
              color: Color.fromARGB(255, 255, 255, 255),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20,),

                  Text(
                    'Nosso supermercado virtual está mais moderno e seguro, agora',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 13,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        'o login é através do ',
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
                  Row(
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
                  Row(
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
                  Row(
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
                  Text(
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
                  SizedBox(height: 20,),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 270,
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
                        Text(
                          '  Ainda não é cliente? ',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 32,
                          ),
                        ),
                        SizedBox(height: 7,),
                        Text(
                          '    Cadastre-se',
                          style: TextStyle(
                            color: Color.fromARGB(255, 75, 74, 74),
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10,),
                        Text(
                          '    Ao cadastrar sua conta, você será capaz de',
                          style: TextStyle(
                           color: Color.fromARGB(255, 75, 74, 74),
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          '    comprar mais rápido, ficar atualizado sobre a',
                          style: TextStyle(
                            color: Color.fromARGB(255, 75, 74, 74),
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          '    situação de um pedido e acompanhar o histórico',
                          style: TextStyle(
                            color: Color.fromARGB(255, 75, 74, 74),
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          '    dos pedidos que você já fez.',
                          style: TextStyle(
                            color: Color.fromARGB(255, 75, 74, 74),
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(height: 10,),
                        Padding(
                          padding: const EdgeInsets.only(left: 16.0),
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
                      ],
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
                        Text(
                          '  Já é cliente? ',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 32,
                          ),
                        ),
                        SizedBox(height: 7,),
                        Text(
                          '    Se você fez um pedido e cadastrou uma conta,',
                          style: TextStyle(
                            color: Color.fromARGB(255, 75, 74, 74),
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '    coloque os dados da conta abaixo:',
                          style: TextStyle(
                            color: Color.fromARGB(255, 75, 74, 74),
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10,),
                        Text(
                          '     E-mail',
                          style: TextStyle(
                            color: Color.fromARGB(255, 75, 74, 74),
                            fontSize: 14,
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
                        Text(
                          '     Senha',
                          style: TextStyle(
                            color: Color.fromARGB(255, 75, 74, 74),
                            fontSize: 14,
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
                              decorationColor: Colors.white
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
                              backgroundColor: Color.fromARGB(255, 41, 5, 70), // Cor do texto do botão
                              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10), // Padding do botão
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
      style: TextStyle(color: Colors.white), 
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
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'ONDE ESTAMOS',
                style: TextStyle(
                  fontSize: 19,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 5),
            Row(
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
            SizedBox(height: 9),
            Row(
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
            SizedBox(height: 9),
            Row(
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
            SizedBox(height: 9),
            Row(
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
           SizedBox(height: 5,),
           Text(
              'INSTITUCIONAL',
              style: TextStyle(
                fontSize: 19,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 5,),
            Row(
              children: [
                Text('O Chegou a Feira',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white
                ),),],),
                SizedBox(height: 5,),
                Row(
                  children: [
                Text('Como Comprar',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white
                ),),],),
                SizedBox(height: 5,),
                 Row(
                  children: [
                Text('Termos e Condições',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white
                ),),],),
                SizedBox(height: 5,),
                 Row(
                  children: [
                Text('Entre em Contato',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white
                ),),]),
                SizedBox(height: 5,),
                Text(
              'AVISOS',
              style: TextStyle(
                fontSize: 19,
                color: Colors.white,
              ),
            ),
                SizedBox(height: 5,),
                Text(
              'AVISOS',
              style: TextStyle(
                fontSize: 19,
                color: Colors.white,
              ),
            ),
                SizedBox(height: 5,),
                Text(
              '* imagens meramente ilustrativas',
              style: TextStyle(
                fontSize: 15,
                color: Colors.white,
              ),
            ),
                SizedBox(height: 5,),
                Text(
              'Venda sujeita à disponibilidade de estoque no dia da',
              style: TextStyle(
                fontSize: 15,
                color: Colors.white,
              ),
            ),
                Text(
              'entrega. No caso de faltar algum produto, este não será',
              style: TextStyle(
                fontSize: 15,
                color: Colors.white,
              ),
            ),
                Text(
              'entregue e o valor correspondente não será cobrado.',
              style: TextStyle(
                fontSize: 15,
                color: Colors.white,
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
                          child: Divider(color: Colors.grey,),
              
                  ),
            ),

            SizedBox(height: 10,),

            Image.asset(
                      'assets/images/logo.png',
                      width: 130,
                      height: 70,
                    ),
              Text('Todos os direitos reservados',
              style: TextStyle(
                fontSize: 15,
                color: Colors.white
              ),),
              Text('Chegou a Feira © 2024',
              style: TextStyle(
                fontSize: 15,
                color: Colors.white
              ),),
           Image.asset(
                      'assets/images/formas.png',
                      width: MediaQuery.of(context).size.width,
                      height: 40,
                    ),
            Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width, // Largura total da tela
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
                   Positioned(
                    top: 0,
                    right: 0, 
                    child: 
                    Image.asset(
                      'assets/images/pbsoft.png',
                      width: 200 ,
                     height: 50 ,
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
