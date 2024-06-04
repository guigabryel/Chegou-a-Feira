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
              height: 150,
              color: Color.fromARGB(255, 41, 5, 70),
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
                      SizedBox(height: 10,),

                  
                  SizedBox(width: 100, child: SearchBar(),),
                    ],
                  ),

                  
                    
                  
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 1800,
              color: Color.fromARGB(255, 12, 12, 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20,),
                  Text(
                    '   Nosso supermercado virtual está mais moderno e seguro, ',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 13,
                    ),
                  ),
                  Text(
                    '   agora o login é através do E-mail do seu cadastro, caso tenha',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 13,
                    ),
                  ),
                  Text(
                    '   problemas com sua senha, escolha a opção Solicitar nova ',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 13,
                    ),
                  ),
                  Text(
                    '   senha. Dúvidas ou problemas nos contate através do telefone ',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 13,
                    ),
                  ),
                  Text(
                    '   (83) 98840-4132 ou através do e-mail ',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 13,
                    ),
                  ),
                  Text(
                    '   contato@chegoafeira.com.br',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 13,
                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 270,
                    color: Color.fromARGB(255, 31, 30, 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 20,),
                        Text(
                          '  Ainda não é cliente? ',
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 32,
                          ),
                        ),
                        SizedBox(height: 7,),
                        Text(
                          '    Cadastre-se',
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10,),
                        Text(
                          '    Ao cadastrar sua conta, você será capaz de',
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          '    comprar mais rápido, ficar atualizado sobre a',
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          '    situação de um pedido e acompanhar o histórico',
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          '    dos pedidos que você já fez.',
                          style: TextStyle(
                            color: Colors.white70,
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
                              backgroundColor: Color.fromARGB(255, 41, 5, 70), // Cor do texto do botão
                              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10), // Padding do botão
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
                    height: 400,
                    color: Color.fromARGB(255, 31, 30, 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 20,),
                        Text(
                          '  Já é cliente? ',
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 32,
                          ),
                        ),
                        SizedBox(height: 7,),
                        Text(
                          '    Se você fez um pedido e cadastrou uma conta,',
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '    coloque os dados da conta abaixo:',
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10,),
                        Text(
                          '     E-mail',
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 14,
                          ),
                        ),
                        SizedBox(height: 10,),
                        TextField(
                          decoration: InputDecoration(
                            labelText: 'E-mail',
                            contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 17.0),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            )
                          ),
                        ),
                        SizedBox(height: 10,),
                        Text(
                          '     Senha',
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 14,
                          ),
                        ),
                        SizedBox(height: 10,),
                        TextField(
                          decoration: InputDecoration(
                            labelText: 'Senha',
                            contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 17.0),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            )
                          ),
                        ),

                        SizedBox(height: 10,),
                        
                        Text(
                          '    Solicitar nova senha',
                          style: TextStyle(
                            color: Colors.white70,
                            decoration: TextDecoration.underline,
                            decorationColor: Colors.white
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
              height: 830,
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
        hintStyle: TextStyle(color: Colors.grey), // Cor do texto do hint
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide.none,
        ),
        filled: true,
        fillColor: Color.fromARGB(255, 46, 45, 45), // Cor de fundo
        contentPadding: EdgeInsets.symmetric(horizontal: 16.0), // Espaçamento interno
        suffixIcon: Container(
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 110, 66, 146),
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(8.0),
              bottomRight: Radius.circular(8.0),
            ),
          ),
          child: Icon(Icons.search, color: Colors.white,), // Ícone de pesquisa
        ),
      ),
      onChanged: (value) {
        // Aqui você pode adicionar a lógica para pesquisar conforme o usuário digita
        print('Pesquisando por: $value');
      },
      style: TextStyle(color: Colors.white), // Cor do texto
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
            Text(
              'ONDE ESTAMOS',
              style: TextStyle(
                fontSize: 19,
                color: Colors.white,
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
            Divider(
              color: Colors.white,
              thickness: 1,
            ),
            SizedBox(height: 25,),

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
              Divider(),
              SizedBox(height: 10,),
              
              Padding(
                padding: EdgeInsets.all(5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 
                   IconButton(
                    
                    onPressed: (){

                    }, 
                    icon: Icon(Icons.facebook,
                    size: 30,
                    color: Colors.white,),
                    ),
                   IconButton(
                    
                    onPressed: (){

                    }, 
                    icon: Icon(Icons.camera_alt_outlined,
                    size: 30,
                    color: Colors.white,),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                    child: Image.asset(
                      'assets/images/pbsoft.png',
                      
              ),
              ),
                  ], 
                ),
              ),
              ],
            ),
          ],
        ),
      ],
    );
  

  }
}
