import 'package:chegou_a_feira/cadastro.dart';
import 'package:chegou_a_feira/destaques.dart';
import 'package:flutter/material.dart';
import 'barra.dart';

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
          onPressed: () {
          }, 
          icon: Icon(Icons.menu, color: Colors.white,)
          ),
          actions: [
            login(),
            SizedBox(width: 18,),
            cadastro(),
            SizedBox(width: 10,),

            
        ],
      ),
      
    body:SingleChildScrollView(
        child: Column(
          children: [    
          
          Container(
            width: MediaQuery.of(context).size.width,
            height: 90,
            color: Color.fromARGB(255, 110, 66, 146),
            
            child: Row(
              
              children: [
                GestureDetector(
                onTap: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => Destaques(),
                    ),
                    
                  );
                  
                },
                  child: Image.asset('assets/images/logo.png',
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
                          fontWeight: FontWeight.bold
                      ),
                    )
                  ],
                ),
                
              ],
            ),
              
          ),
          Column(
                      children: [
                        SearchBar()
                      ],  
                    ),
          
          Container(
            width: MediaQuery.of(context).size.width,
            height: 10,
            color: Color.fromARGB(255, 110, 66, 146),
                    ),
          
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: Color.fromARGB(255, 12, 12, 12),

            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(height: 20,),
                    Text(
                      '   Nosso supermercado virtual está mais moderno e seguro, ',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                      ),
                    ),
                    Text(
                      '   agora o login é através do E-mail do seu cadastro, caso tenha',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                      ),
                    ),
                    Text(
                      '   problemas com sua senha, escolha a opção Solicitar nova ',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                      ),
                    ),
                    Text(
                      '   senha. Dúvidas ouproblemas nos contate através do telefone ',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                      ),
                    ),
                    Text(
                      '   (83) 98840-4132 ouatravés do e-mail ',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                      ),
                    ),
                    Text(
                      '   contato@chegoafeira.com.br',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                      ),
                    ),
                    SizedBox(height: 20,),

                    SizedBox(
                      child: 
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 270,
                        color: Color.fromARGB(255, 31, 30, 30),
                        
                      child: Row(
                        children: [
                          Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
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
                          fontWeight: FontWeight.bold
                      ),
                    ),

                    SizedBox(height: 10,),

                    Text(
                        '    Ao casastrar sua conta, você será capaz de',
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 16,
                      ),
                    ),
                    Text(
                        '    comprar mais rápido, dicar atualizado sobre a',
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

                    child:  ElevatedButton(
                      
                    onPressed: () {
                        Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => Cadastro(),
                        ),
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
                    
                  ]
                          ),
                        ],
                      ),
                      ),
                    ),
                    SizedBox(height: 20,),

                    SizedBox(
                      child: 
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 300,
                        color: Color.fromARGB(255, 31, 30, 30),
                        
                      child: Row(
                        children: [
                          Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
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
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    Text(
                        '    coloque os dados da conta abaixo:',
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 16,
                          fontWeight: FontWeight.bold
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
                    
                   TextField(

                   ),
                     





                    Padding(
                      padding: const EdgeInsets.only(left: 16.0),

                    child:  ElevatedButton(
                      
                    onPressed: () {
                        Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => Destaques(),
                        ),
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
                    
                  ]
                          ),
                        ],
                      ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            ),
          ]
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
    return Padding(
      padding: const EdgeInsets.only(left: 16.0), // Adiciona espaçamento à esquerda
      child: TextField(
        controller: _controller,
        decoration: InputDecoration(
          hintText: 'Digite o que está procurando',
          hintStyle: TextStyle(color: Colors.grey), // Cor do texto do hint
          border: OutlineInputBorder(),
          filled: true,
          fillColor: Color.fromARGB(255, 46, 45, 45), // Cor de fundo
          contentPadding: EdgeInsets.symmetric(horizontal: 16.0), // Espaçamento interno
          suffixIcon: Container(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 110, 66, 146),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.search, color: Colors.white,), // Ícone de pesquisa
            ),
          ),
        ),
        onChanged: (value) {
          // Aqui você pode adicionar a lógica para pesquisar conforme o usuário digita
          print('Pesquisando por: $value');
        },
        style: TextStyle(color: Colors.white), // Cor do texto
      ),
    );
  }
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}

