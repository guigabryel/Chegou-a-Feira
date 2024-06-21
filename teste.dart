import 'package:chegou_a_feira/barra.dart';
import 'package:chegou_a_feira/destaques.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Teste extends StatefulWidget {
  const Teste({super.key});

  @override
  State<Teste> createState() => _TesteState();
}

class _TesteState extends State<Teste> {
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
         height: 1900,
         color: Colors.white,
         child: 
         Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [

            SizedBox(height: 10,),

            Container(
              width: 600,
              height: 1290,
              decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.black12),
              borderRadius: BorderRadius.circular(10.0)
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      height: 20,
                      child: Row(
                        children: [
                          Text('Imagem'),
                      
                          VerticalDivider(
                            color: Colors.black,
                            thickness: 1,),
                      
                      
                          Text('Produto')
                        ],
                      ),
                    ),
                  ),
                  Container(
                        width: 350,
                        height: 5,
                        decoration: BoxDecoration(
                        color: Colors.white,
                          ),
                        child: Divider(color: Colors.black12,),
                      ),
                  
                  Column(
                    children: [
                      SizedBox(
                        height: 120,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Image.asset('assets/images/sabao.png',height: 90,width: 53,),
                          
                               VerticalDivider(
                                    color: Colors.black,
                                    thickness: 1,),

                                Padding(
                                  padding: const EdgeInsets.only(right: 30),
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(right: 80),
                                        child: Text('Sabão Liquido 3L'),
                                      ),
                                      
                                      Padding(
                                        padding: const EdgeInsets.only(right: 80),
                                        child: Row(
                                          children: [
                                            Text('Preço: ', style: TextStyle(fontWeight: FontWeight.bold),),
                                                                          
                                            Padding(
                                              padding: const EdgeInsets.only(right: 10),
                                              child: Text('R\$ 18,99'),
                                            ),
                                             
                                          ],
                                        ),
                                      ),
                                Container(
                                  width: 200,
                                  height: 40,
                                  decoration: BoxDecoration(
                                  color: Colors.white,
                                    ),
                                  child: QuantitySelector3(),
                          ),
                          Padding(
                                        padding: const EdgeInsets.only(right: 95),
                            child: Row(
                              children: [
                                Text('Total: ', style: TextStyle(fontWeight: FontWeight.bold),),
                                Text('R\$ 37,98')
                              ],
                            ),
                          )
                         ],
                        ),
                       ),
                      ],
                     ),
                    ),
                   ),
                   Container(
                        width: 350,
                        height: 5,
                        decoration: BoxDecoration(
                        color: Colors.white,
                          ),
                        child: Divider(color: Colors.black12,),
                      ),
                  ],
                 ),
                 //AQUI
                  Column(
                    children: [
                      SizedBox(
                        height: 120,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Image.asset('assets/images/biscoito.png',height: 90,width: 53,),
                          
                               VerticalDivider(
                                    color: Colors.black,
                                    thickness: 1,),

                                Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 5),
                                      child: Text('Biscoito Vitarella Cream Cracker 350g'),
                                    ),
                                    
                                    Padding(
                                      padding: const EdgeInsets.only(right: 135),
                                      child: Row(
                                        children: [
                                          Text('Preço: ', style: TextStyle(fontWeight: FontWeight.bold),),
                                                                        
                                          Padding(
                                            padding: const EdgeInsets.only(right: 10),
                                            child: Text('R\$ 4,89'),
                                          ),
                                           
                                        ],
                                      ),
                                    ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 50),
                                  child: Container(
                                  width: 200,
                                  height: 40,
                                  decoration: BoxDecoration(
                                  color: Colors.white,
                                    ),
                                  child: QuantitySelector3(),
                                                            ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 140),
                                  child: Row(
                                  children: [
                                    Text('Total: ', style: TextStyle(fontWeight: FontWeight.bold),),
                                    Text('R\$ 14,67')
                                      ],
                          ),
                         ),
                        ],
                       ),
                      ],
                     ),
                    ),
                   ),
                   Container(
                        width: 350,
                        height: 5,
                        decoration: BoxDecoration(
                        color: Colors.white,
                          ),
                        child: Divider(color: Colors.black12,),
                      ),
                  ],
                 ),
                 //AQUI
                  Column(
                    children: [
                      SizedBox(
                        height: 120,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Image.asset('assets/images/palha.png',height: 90,width: 53,),
                          
                               VerticalDivider(
                                    color: Colors.black,
                                    thickness: 1,),

                                Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(right: 74),
                                      child: Text('Batata Palha Scrusch 80g'),
                                    ),
                                    
                                    Padding(
                                      padding: const EdgeInsets.only(right: 135),
                                      child: Row(
                                        children: [
                                          Text('Preço: ', style: TextStyle(fontWeight: FontWeight.bold),),
                                                                        
                                          Padding(
                                            padding: const EdgeInsets.only(right: 10),
                                            child: Text('R\$ 4,29'),
                                          ),
                                           
                                        ],
                                      ),
                                    ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 50),
                                  child: Container(
                                  width: 200,
                                  height: 40,
                                  decoration: BoxDecoration(
                                  color: Colors.white,
                                    ),
                                  child: QuantitySelector3(),
                                                            ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 150),
                                  child: Row(
                                  children: [
                                    Text('Total: ', style: TextStyle(fontWeight: FontWeight.bold),),
                                    Text('R\$ 8,58')
                                      ],
                          ),
                         ),
                        ],
                       ),
                      ],
                     ),
                    ),
                   ),
                   Container(
                        width: 350,
                        height: 5,
                        decoration: BoxDecoration(
                        color: Colors.white,
                          ),
                        child: Divider(color: Colors.black12,),
                      ),
                  ],
                 ),
                 //AQUI
                  Column(
                    children: [
                      SizedBox(
                        height: 120,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Image.asset('assets/images/macarrao.png',height: 90,width: 53,),
                          
                               VerticalDivider(
                                    color: Colors.black,
                                    thickness: 1,),

                                Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(right: 74),
                                      child: Text('Macarrão Espaguete Fino'),
                                    ),
                                    
                                    Padding(
                                      padding: const EdgeInsets.only(right: 135),
                                      child: Row(
                                        children: [
                                          Text('Preço: ', style: TextStyle(fontWeight: FontWeight.bold),),
                                                                        
                                          Padding(
                                            padding: const EdgeInsets.only(right: 10),
                                            child: Text('R\$ 2,69'),
                                          ),
                                           
                                        ],
                                      ),
                                    ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 50),
                                  child: Container(
                                  width: 200,
                                  height: 40,
                                  decoration: BoxDecoration(
                                  color: Colors.white,
                                    ),
                                  child: QuantitySelector3(),
                                                            ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 145),
                                  child: Row(
                                  children: [
                                    Text('Total: ', style: TextStyle(fontWeight: FontWeight.bold),),
                                    Text('R\$ 10,76')
                                      ],
                          ),
                         ),
                        ],
                       ),
                      ],
                     ),
                    ),
                   ),
                   Container(
                        width: 350,
                        height: 5,
                        decoration: BoxDecoration(
                        color: Colors.white,
                          ),
                        child: Divider(color: Colors.black12,),
                      ),
                  ],
                 ),
                 //AQUI
                  Column(
                    children: [
                      SizedBox(
                        height: 120,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Image.asset('assets/images/limao.png',height: 90,width: 53,),
                          
                               VerticalDivider(
                                    color: Colors.black,
                                    thickness: 1,),

                                Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(right: 80),
                                      child: Text('Detergente Invicto limão'),
                                    ),
                                    
                                    Padding(
                                      padding: const EdgeInsets.only(right: 135),
                                      child: Row(
                                        children: [
                                          Text('Preço: ', style: TextStyle(fontWeight: FontWeight.bold),),
                                                                        
                                          Padding(
                                            padding: const EdgeInsets.only(right: 10),
                                            child: Text('R\$ 1,99'),
                                          ),
                                           
                                        ],
                                      ),
                                    ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 50),
                                  child: Container(
                                  width: 200,
                                  height: 40,
                                  decoration: BoxDecoration(
                                  color: Colors.white,
                                    ),
                                  child: QuantitySelector3(),
                                                            ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 150),
                                  child: Row(
                                  children: [
                                    Text('Total: ', style: TextStyle(fontWeight: FontWeight.bold),),
                                    Text('R\$ 1,99')
                                      ],
                          ),
                         ),
                        ],
                       ),
                      ],
                     ),
                    ),
                   ),
                   Container(
                        width: 350,
                        height: 5,
                        decoration: BoxDecoration(
                        color: Colors.white,
                          ),
                        child: Divider(color: Colors.black12,),
                      ),
                  ],
                 ),
                 //AQUI
                  Column(
                    children: [
                      SizedBox(
                        height: 120,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Image.asset('assets/images/neutro.png',height: 90,width: 53,),
                          
                               VerticalDivider(
                                    color: Colors.black,
                                    thickness: 1,),

                                Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(right: 76),
                                      child: Text('Detergente Invicto neutro'),
                                    ),
                                    
                                    Padding(
                                      padding: const EdgeInsets.only(right: 135),
                                      child: Row(
                                        children: [
                                          Text('Preço: ', style: TextStyle(fontWeight: FontWeight.bold),),
                                                                        
                                          Padding(
                                            padding: const EdgeInsets.only(right: 10),
                                            child: Text('R\$ 1,99'),
                                          ),
                                           
                                        ],
                                      ),
                                    ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 50),
                                  child: Container(
                                  width: 200,
                                  height: 40,
                                  decoration: BoxDecoration(
                                  color: Colors.white,
                                    ),
                                  child: QuantitySelector3(),
                                                            ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 150),
                                  child: Row(
                                  children: [
                                    Text('Total: ', style: TextStyle(fontWeight: FontWeight.bold),),
                                    Text('R\$ 3,98')
                                      ],
                          ),
                         ),
                        ],
                       ),
                      ],
                     ),
                    ),
                   ),
                   Container(
                        width: 350,
                        height: 5,
                        decoration: BoxDecoration(
                        color: Colors.white,
                          ),
                        child: Divider(color: Colors.black12,),
                      ),
                  ],
                 ),
                 //AQUI
                  Column(
                    children: [
                      SizedBox(
                        height: 120,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Image.asset('assets/images/marca.png',height: 90,width: 53,),
                          
                               VerticalDivider(
                                    color: Colors.black,
                                    thickness: 1,),

                                Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(right: 80),
                                      child: Text('Detergente Invicto maçã'),
                                    ),
                                    
                                    Padding(
                                      padding: const EdgeInsets.only(right: 135),
                                      child: Row(
                                        children: [
                                          Text('Preço: ', style: TextStyle(fontWeight: FontWeight.bold),),
                                                                        
                                          Padding(
                                            padding: const EdgeInsets.only(right: 10),
                                            child: Text('R\$ 1,99'),
                                          ),
                                           
                                        ],
                                      ),
                                    ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 50),
                                  child: Container(
                                  width: 200,
                                  height: 40,
                                  decoration: BoxDecoration(
                                  color: Colors.white,
                                    ),
                                  child: QuantitySelector3(),
                                                            ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 150),
                                  child: Row(
                                  children: [
                                    Text('Total: ', style: TextStyle(fontWeight: FontWeight.bold),),
                                    Text('R\$ 1,99')
                                      ],
                          ),
                         ),
                        ],
                       ),
                      ],
                     ),
                    ),
                   ),
                   Container(
                        width: 350,
                        height: 5,
                        decoration: BoxDecoration(
                        color: Colors.white,
                          ),
                        child: Divider(color: Colors.black12,),
                      ),
                  ],
                 ),
                 //AQUI
                  Column(
                    children: [
                      SizedBox(
                        height: 120,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Image.asset('assets/images/banana.png',height: 90,width: 53,),
                          
                               VerticalDivider(
                                    color: Colors.black,
                                    thickness: 1,),

                                Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(right: 122),
                                      child: Text('Banana Maçã 1Kg'),
                                    ),
                                    
                                    Padding(
                                      padding: const EdgeInsets.only(right: 135),
                                      child: Row(
                                        children: [
                                          Text('Preço: ', style: TextStyle(fontWeight: FontWeight.bold),),
                                                                        
                                          Padding(
                                            padding: const EdgeInsets.only(right: 10),
                                            child: Text('R\$ 1,99'),
                                          ),
                                           
                                        ],
                                      ),
                                    ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 50),
                                  child: Container(
                                  width: 200,
                                  height: 40,
                                  decoration: BoxDecoration(
                                  color: Colors.white,
                                    ),
                                  child: QuantitySelector3(),
                                                            ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 150),
                                  child: Row(
                                  children: [
                                    Text('Total: ', style: TextStyle(fontWeight: FontWeight.bold),),
                                    Text('R\$ 1,99')
                                      ],
                          ),
                         ),
                        ],
                       ),
                      ],
                     ),
                    ),
                   ),
                   Container(
                        width: 350,
                        height: 5,
                        decoration: BoxDecoration(
                        color: Colors.white,
                          ),
                        child: Divider(color: Colors.black12,),
                      ),
                  ],
                 ),
                 //AQUI
                  Column(
                    children: [
                      SizedBox(
                        height: 120,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Image.asset('assets/images/maca.png',height: 90,width: 53,),
                          
                               VerticalDivider(
                                    color: Colors.black,
                                    thickness: 1,),

                                Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(right: 140),
                                      child: Text('Maçã Fuji 500g'),
                                    ),
                                    
                                    Padding(
                                      padding: const EdgeInsets.only(right: 135),
                                      child: Row(
                                        children: [
                                          Text('Preço: ', style: TextStyle(fontWeight: FontWeight.bold),),
                                                                        
                                          Padding(
                                            padding: const EdgeInsets.only(right: 10),
                                            child: Text('R\$ 8,85'),
                                          ),
                                           
                                        ],
                                      ),
                                    ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 50),
                                  child: Container(
                                  width: 200,
                                  height: 40,
                                  decoration: BoxDecoration(
                                  color: Colors.white,
                                    ),
                                  child: QuantitySelector3(),
                                                            ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 150),
                                  child: Row(
                                  children: [
                                    Text('Total: ', style: TextStyle(fontWeight: FontWeight.bold),),
                                    Text('R\$ 17,7')
                                      ],
                          ),
                         ),
                        ],
                       ),
                      ],
                     ),
                    ),
                   ),
                   Container(
                        width: 350,
                        height: 5,
                        decoration: BoxDecoration(
                        color: Colors.white,
                          ),
                        child: Divider(color: Colors.black12,),
                      ),
                  ],
                 ),
                 //AQUI
                  Column(
                    children: [
                      SizedBox(
                        height: 120,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Image.asset('assets/images/cebola.png',height: 90,width: 53,),
                          
                               VerticalDivider(
                                    color: Colors.black,
                                    thickness: 1,),

                                Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(right: 112),
                                      child: Text('Cebola Branca 500g'),
                                    ),
                                    
                                    Padding(
                                      padding: const EdgeInsets.only(right: 135),
                                      child: Row(
                                        children: [
                                          Text('Preço: ', style: TextStyle(fontWeight: FontWeight.bold),),
                                                                        
                                          Padding(
                                            padding: const EdgeInsets.only(right: 10),
                                            child: Text('R\$ 4,80'),
                                          ),
                                           
                                        ],
                                      ),
                                    ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 50),
                                  child: Container(
                                  width: 200,
                                  height: 40,
                                  decoration: BoxDecoration(
                                  color: Colors.white,
                                    ),
                                  child: QuantitySelector3(),
                                                            ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 150),
                                  child: Row(
                                  children: [
                                    Text('Total: ', style: TextStyle(fontWeight: FontWeight.bold),),
                                    Text('R\$ 14,4')
                                      ],
                          ),
                         ),
                        ],
                       ),
                      ],
                     ),
                    ),
                   ),
                  ],
                 ),
                 //AQUI
                ],
               ),
              ),

            SizedBox(height: 5,),

            SizedBox(height: 5,),

            

           ],
          ),
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
int _counter = 1;

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
    return SizedBox(
      height: 50.0,
      child: Container(
        decoration: BoxDecoration(
        ),
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: IconButton(
                icon: Icon(Icons.remove,),
                onPressed: _decrementCounter,
                color: Colors.black,
              ),
            ),
            Expanded(
              child: Center(
                child: Text(
                  '$_counter',
                  style: TextStyle(fontSize: 18.0),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: IconButton(
                icon: Icon(Icons.add),
                onPressed: _incrementCounter,
                color: Colors.black,
              ),
            ),
            SizedBox(width: 0,),
            Container(
              height: 39.0,
              child: IconButton(
                icon: Icon(Icons.close),
                onPressed: () {
                },
                color: Colors.red,
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
