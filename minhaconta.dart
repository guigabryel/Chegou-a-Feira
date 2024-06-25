import 'package:chegou_a_feira/barra.dart';
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
              child:  Column(
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
         height: 550,
         color: Colors.white,
         child: 
         Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [

            Text('Minha Conta', style: TextStyle(fontSize: 30),),

            Container(
              width: 350,
              height: 150,
              decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.black12)
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Icon(
                            Icons.edit_square, 
                            size: 40.0,
                            color: Color.fromARGB(255, 81, 44, 99),
                          ),
                         ),
                  Padding(
                    padding: const EdgeInsets.only(top: 25),
                    child: Container(
                          width: 320,
                          height: 5,
                          decoration: BoxDecoration(
                          color: Colors.white,
                            ),
                          child: Divider(color: Colors.black12,),
                        ),
                       ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Text('Editar Conta'),
                 )
                ],
               ),
              ),

            SizedBox(height: 5,),
            Container(
              width: 350,
              height: 150,
              decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.black12)
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: FaIcon(
                            FontAwesomeIcons.key,
                            size: 40.0,
                            color: Color.fromARGB(255, 81, 44, 99),
                          ),
                         ),
                  Padding(
                    padding: const EdgeInsets.only(top: 25),
                    child: Container(
                          width: 320,
                          height: 5,
                          decoration: BoxDecoration(
                          color: Colors.white,
                            ),
                          child: Divider(color: Colors.black12,),
                        ),
                       ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Text('Modificar Senha'),
                 )
                ],
               ),
              ),

            SizedBox(height: 5,),
            Container(
              width: 350,
              height: 150,
              decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.black12)
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: FaIcon(
                            FontAwesomeIcons.book, 
                            size: 40.0,
                            color: Color.fromARGB(255, 81, 44, 99),
                          ),
                         ),
                  Padding(
                    padding: const EdgeInsets.only(top: 25),
                    child: Container(
                          width: 320,
                          height: 5,
                          decoration: BoxDecoration(
                          color: Colors.white,
                            ),
                          child: Divider(color: Colors.black12,),
                        ),
                       ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Text('Endereços'),
                 )
                ],
               ),
              ),

            SizedBox(height: 5,),

           ],
          ),
         ),
        ),
      Container(
         width: MediaQuery.of(context).size.width,
         height: 550,
         color: Colors.white,
         child: 
         Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [

            Text('Meus Pedidos', style: TextStyle(fontSize: 30),),

            Container(
              width: 350,
              height: 150,
              decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.black12)
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: FaIcon(
                            FontAwesomeIcons.bagShopping,
                            size: 40.0,
                            color: Color.fromARGB(255, 81, 44, 99),
                          ),
                         ),
                  Padding(
                    padding: const EdgeInsets.only(top: 25),
                    child: Container(
                          width: 320,
                          height: 5,
                          decoration: BoxDecoration(
                          color: Colors.white,
                            ),
                          child: Divider(color: Colors.black12,),
                        ),
                       ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Text('Pedidos'),
                 )
                ],
               ),
              ),

            SizedBox(height: 5,),
            Container(
              width: 350,
              height: 150,
              decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.black12)
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: FaIcon(
                            FontAwesomeIcons.repeat,
                            size: 40.0,
                            color: Color.fromARGB(255, 81, 44, 99),
                          ),
                         ),
                  Padding(
                    padding: const EdgeInsets.only(top: 25),
                    child: Container(
                          width: 320,
                          height: 5,
                          decoration: BoxDecoration(
                          color: Colors.white,
                            ),
                          child: Divider(color: Colors.black12,),
                        ),
                       ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Text('Devolução'),
                 )
                ],
               ),
              ),

            SizedBox(height: 5,),
            Container(
              width: 350,
              height: 150,
              decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.black12)
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: FaIcon(
                            FontAwesomeIcons.moneyBill1, 
                            size: 40.0,
                            color: Color.fromARGB(255, 81, 44, 99),
                          ),
                         ),
                  Padding(
                    padding: const EdgeInsets.only(top: 25),
                    child: Container(
                          width: 320,
                          height: 5,
                          decoration: BoxDecoration(
                          color: Colors.white,
                            ),
                          child: Divider(color: Colors.black12,),
                        ),
                       ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Text('Transações'),
                 )
                ],
               ),
              ),

            SizedBox(height: 5,),

            

           ],
          ),
         ),
        ),
      Container(
         width: MediaQuery.of(context).size.width,
         height: 250,
         color: Colors.white,
         child: 
         Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [

            Text('Meu informativo', style: TextStyle(fontSize: 30),),

            Container(
              width: 350,
              height: 150,
              decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.black12)
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: FaIcon(
                            FontAwesomeIcons.newspaper,
                            size: 40.0,
                            color: Color.fromARGB(255, 81, 44, 99),
                          ),
                         ),
                  Padding(
                    padding: const EdgeInsets.only(top: 25),
                    child: Container(
                          width: 320,
                          height: 5,
                          decoration: BoxDecoration(
                          color: Colors.white,
                            ),
                          child: Divider(color: Colors.black12,),
                        ),
                       ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Text('Pedidos'),
                 )
                ],
               ),
              ),

            SizedBox(height: 5,),
           

            SizedBox(height: 5,),

           

           ],
          ),
         ),
        ),
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
