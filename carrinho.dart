import 'package:chegou_a_feira/barra.dart';
import 'package:chegou_a_feira/destaques.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Carrinho extends StatefulWidget {
  const Carrinho({super.key});

  @override
  State<Carrinho> createState() => _CarrinhoState();
}

class _CarrinhoState extends State<Carrinho> {
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
                  
                  Row(
                    children: [
                      Icon(
            Icons.shopping_cart,
            color: Colors.white,
            size: 20,
          ),
          SizedBox(width: 5,),
                      Text(
                        'R\$116,74',
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
            height: 30,
            color: Colors.white,
           ),


      Container(
         width: MediaQuery.of(context).size.width,
         height: 35,
         color: Colors.white,
            
         
         child: 
         Row( 
          crossAxisAlignment: CrossAxisAlignment.start,
           children: [
            
             Padding(
               padding: const EdgeInsets.only(left: 15),
               child: Container(
                width: 70,
                height: 35,
                decoration: BoxDecoration(
                           color: Colors.white,
                           border: Border.all(
              color: Colors.black12,
              width: 1
                  )
                ),
                child: Center(child: Text('Imagem'),),
                
               ),
             ),
             Padding(
               padding: const EdgeInsets.only(left: 0),
               child: Container(
                width: 290,
                height: 35,
                decoration: BoxDecoration(
                           color: Colors.white,
                           border: Border.all(
              color: Colors.black12,
              width: 1
                  )
                ),
                child: Center(
                  child: Padding(
                  padding: const EdgeInsets.only(right: 220),
                  child: Text('Produto'),
                 ),
                ),
               ),
              ),
            ],
          ),
         ),

         Container(
          width: MediaQuery.of(context).size.width,
            height: 200,
            color: Colors.white,

           child: Row( 
            crossAxisAlignment: CrossAxisAlignment.start,
             children: [
              
               Padding(
                 padding: const EdgeInsets.only(left: 15),
                 child: Container(
                  width: 70,
                  height: 130,
                  decoration: BoxDecoration(
                             color: Colors.white,
                             border: Border.all(
                color: Colors.black12,
                width: 1
                    )
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                             color: Colors.white,
                             border: Border.all(
                color: Colors.black12,
                width: 1
                    )
                  ),
                    child: Image.asset('assets/images/sabao.png',))
                  
                 ),
               ),
               Container(
                width: 290,
                height: 130,
                decoration: BoxDecoration(
                           color: Colors.white,
                           border: Border.all(
                               color: Colors.black12,
                               width: 1
                  )
                ),
                child: Center(
                  child: Padding(
                  padding: const EdgeInsets.only(right: 100),
                  child: Container(
                        width: 330,
                      height: 100,
                        child: QuantitySelector3(),
                      ),
                 ),
                ),
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

















class QuantitySelector3 extends StatefulWidget {
  @override
  _QuantitySelectorState createState() => _QuantitySelectorState();
}

class _QuantitySelectorState extends State<QuantitySelector3> {
int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      if (_counter > 0) {
        _counter--;
      }
    });
  }

@override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
      ),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(20.0),
              color: Colors.white,
            ),
            child: IconButton(
              icon: Icon(Icons.remove, size: 15,),
              onPressed: _decrementCounter,
              color: Colors.black,
            ),
          ),
          Expanded(
            child: Center(
              child: Text(
                '$_counter',
                style: TextStyle(fontSize: 20.0),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(20.0),
              color: Colors.white,
            ),
            child: IconButton(
              icon: Icon(Icons.add),
              onPressed: _incrementCounter,
              color: Colors.black,
            ),
          ),
          SizedBox(width: 20,),
          Container(
            height: 48.0,
            decoration: BoxDecoration(
              color: Colors.lightBlue,
              border: Border.all(color: Colors.lightBlue),
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: () {
              },
              color: Colors.white,
            ),
          ),
        ],
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
