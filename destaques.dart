import 'package:chegou_a_feira/components/barra.dart';
import 'package:chegou_a_feira/cadastro.dart';
import 'package:chegou_a_feira/produtos%20em%20destaques/alho.dart';
import 'package:chegou_a_feira/produtos%20em%20destaques/banana.dart';
import 'package:chegou_a_feira/produtos%20em%20destaques/batatadoce.dart';
import 'package:chegou_a_feira/produtos%20em%20destaques/batatainglesa.dart';
import 'package:chegou_a_feira/produtos%20em%20destaques/cebola.dart';
import 'package:chegou_a_feira/produtos%20em%20destaques/invictolimao.dart';
import 'package:chegou_a_feira/produtos%20em%20destaques/invictomaca.dart';
import 'package:chegou_a_feira/produtos%20em%20destaques/invictoneutro.dart';
import 'package:chegou_a_feira/produtos%20em%20destaques/macarrao.dart';
import 'package:chegou_a_feira/produtos%20em%20destaques/sabao.dart';
import 'package:chegou_a_feira/produtos%20em%20destaques/tomate.dart';
import 'components/abainicial.dart';
import 'components/barralateral.dart';
import 'components/botaodestaques.dart';
import 'components/fim.dart';
import 'package:chegou_a_feira/login.dart';
import 'package:chegou_a_feira/minhaconta.dart';
import 'package:chegou_a_feira/produtos/sabao1.dart';
import 'package:chegou_a_feira/carrinho.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'produtos em destaques/batatapalha.dart';
import 'produtos em destaques/biscoito.dart';
import 'produtos em destaques/maca.dart';

class Destaques extends StatefulWidget {
  const Destaques({super.key});

  @override
  State<Destaques> createState() => _DestaquesState();
}

class _DestaquesState extends State<Destaques> {
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
         height: 70,
         color: Colors.white,
         child: 
         Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('DESTAQUES',
            style: TextStyle(
              color: Colors.black,
              fontSize: 30,
            ),
           ),
          ],
         ),
      ),
      Row(
        children: [

          Sabao(),

          Biscoito()
       ],
      ),
      Row(
        children: [

          Batatapalha(),
          
          Macarrao()
       ],
      ),
      
      Row(
        children: [
          
          Invictolimao(),

          Invictomaca(),
       ],
      ),

      Row(
        children: [

          Invictoneutro(),

          Banana()
       ],
      ),

      Row(
        children: [

          Maca(),
          
          Tomate()
       ],
      ),
      
      Row(
        children: [
          
          Cebola(),

          Alho()
       ],
      ),
      
      Row(
        children: [
          
          Batatainglesa(),

          Batatadoce()
       ],
      ),
     
      Row(
        children: [
          Container(
            width: 200,
            height: 400,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Colors.black12,
                width: 1
              )
            ),
            
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Stack(
                      children: [
                    Image.asset('assets/images/alface.png', ),
                    ],
                    ),
                    SizedBox(height: 10,),
                    
                    Padding(
                      padding: const EdgeInsets.only(right: 80.0),
                      child: Text('Alface 1 Und',),
                    ),
                    SizedBox(height: 30,),

                   Padding(
                      padding: const EdgeInsets.only(right: 90.0),
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Center(
                            child: Text('R\$4,79',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              color: Color.fromARGB(255, 156, 16, 16),
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                            ),
                           ),
                          ),
                            
        ],
       ),
      ),
     ),
                        SizedBox(height: 15,),

                        Container(
                         width: 170,
                        height: 5,
                        decoration: BoxDecoration(
                        color: Colors.white
                          ),
                        child: Divider(color: Colors.black12,),

    ),
                        Container(
                          width: 180,
                        height: 100,
                          child: QuantitySelector(),
                        )
               ]
              ),
             ],
            ),           
          ),
          Container(
            width: 190,
            height: 400,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Colors.black12,
                width: 1
              )
            ),
            
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Stack(
                      children: [
                    Image.asset('assets/images/coentro.png', ),
                    

                    


                    ],
                    ),
                    SizedBox(height: 10,),
                    
                    Padding(
                      padding: const EdgeInsets.only(right: 70.0),
                      child: Text('Coentro 1 Und',),
                    ),

                    SizedBox(height: 30,),

                    Padding(
                      padding: const EdgeInsets.only(right: 90.0),
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Center(
                            child: Text('R\$2,40',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              color: Color.fromARGB(255, 156, 16, 16),
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                            ),
                           ),
                          ),
                            
        ],
       ),
      ),
     ),
                        SizedBox(height: 14,),

                        Container(
                         width: 170,
                        height: 5,
                        decoration: BoxDecoration(
                        color: Colors.white
                          ),
                        child: Divider(color: Colors.black12,),

    ),
                        Container(
                          width: 180,
                        height: 100,
                          child: QuantitySelector(),
                        )
               ]
              ),
             ],
            ),           
          ),
       ],
      ),
      //ATÉ AQUI
      //AQUI
      Row(
        children: [
          Container(
            width: 200,
            height: 400,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Colors.black12,
                width: 1
              )
            ),
            
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Stack(
                      children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Image.asset('assets/images/cenoura.png', ),
                    ),
                    ],
                    ),
                    SizedBox(height: 10,),
                    
                    Padding(
                      padding: const EdgeInsets.only(right: 80.0),
                      child: Text('Cenoura 500g',),
                    ),
                    SizedBox(height: 30,),

                   Padding(
                      padding: const EdgeInsets.only(right: 90.0),
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Center(
                            child: Text('R\$5,20',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              color: Color.fromARGB(255, 156, 16, 16),
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                            ),
                           ),
                          ),
                            
        ],
       ),
      ),
     ),
                        SizedBox(height: 15,),

                        Container(
                         width: 170,
                        height: 5,
                        decoration: BoxDecoration(
                        color: Colors.white
                          ),
                        child: Divider(color: Colors.black12,),

    ),
                        Container(
                          width: 180,
                        height: 100,
                          child: QuantitySelector(),
                    )
                  ]
                ),
              ],
            ),
          ),
          Container(
            width: 190,
            height: 400,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Colors.black12,
                width: 1
              )
            ),
            
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Stack(
                      children: [
                    Image.asset('assets/images/beterraba.png', ),
                    ],
                   ),
                    SizedBox(height: 10,),
                    
                    Padding(
                      padding: const EdgeInsets.only(right: 60.0),
                      child: Text('Beterraba 500g',),
                    ),

                    SizedBox(height: 30,),

                    Padding(
                      padding: const EdgeInsets.only(right: 90.0),
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Center(
                            child: Text('R\$7,99',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              color: Color.fromARGB(255, 156, 16, 16),
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                                ),
                              ),
                            ),
                           ],
                         ),
                       ),
                     ),
                        SizedBox(height: 14,),

                        Container(
                         width: 170,
                        height: 5,
                        decoration: BoxDecoration(
                        color: Colors.white
                          ),
                        child: Divider(color: Colors.black12,),

                      ),
                        Container(
                          width: 180,
                        height: 100,
                          child: QuantitySelector(),
                    )
                  ]
                ),
              ],
            ),           
          ),
        ],
      ),
      //ATÉ AQUI
      //AQUI
      Row(
        children: [
          Container(
            width: 200,
            height: 400,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Colors.black12,
                width: 1
              )
            ),
            
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Stack(
                      children: [
                    Image.asset('assets/images/jerimum.png', ),
                    ],
                    ),
                    SizedBox(height: 10,),
                    
                    Padding(
                      padding: const EdgeInsets.only(right: 45.0),
                      child: Text('Jerimum Leite 1Kg',),
                    ),
                    SizedBox(height: 30,),

                   Padding(
                      padding: const EdgeInsets.only(right: 90.0),
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Center(
                            child: Text('R\$3,99',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              color: Color.fromARGB(255, 156, 16, 16),
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                        SizedBox(height: 15,),

                        Container(
                         width: 170,
                        height: 5,
                        decoration: BoxDecoration(
                        color: Colors.white
                          ),
                        child: Divider(color: Colors.black12,),

                              ),
                        Container(
                          width: 180,
                        height: 100,
                          child: QuantitySelector(),
                            )
                          ]
                        ),
                      ],
                    ),
                  ),
          Container(
            width: 190,
            height: 400,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Colors.black12,
                width: 1
              )
            ),
            
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Stack(
                      children: [
                    Image.asset('assets/images/coco.png', ),
                    ],
                    ),
                    SizedBox(height: 10,),
                    
                    Padding(
                      padding: const EdgeInsets.only(right: 50.0),
                      child: Text('Coco Seco 1 Und',),
                    ),

                    SizedBox(height: 30,),

                    Padding(
                      padding: const EdgeInsets.only(right: 90.0),
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Center(
                            child: Text('R\$2,99',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              color: Color.fromARGB(255, 156, 16, 16),
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                                ),
                              ),
                            ),
                           ],
                         ),
                       ),
                     ),
                        SizedBox(height: 14,),

                        Container(
                         width: 170,
                        height: 5,
                        decoration: BoxDecoration(
                        color: Colors.white
                          ),
                        child: Divider(color: Colors.black12,),

                      ),
                        Container(
                          width: 180,
                        height: 100,
                          child: QuantitySelector(),
                    )
                  ]
                ),
              ],
            ),           
          ),
        ],
      ),
      //ATÉ AQUI
      //AQUI
      Row(
        children: [
          Container(
            width: 200,
            height: 400,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Colors.black12,
                width: 1
              )
            ),
            
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Stack(
                      children: [
                    Image.asset('assets/images/inhame.png', ),
                    ],
                    ),
                    SizedBox(height: 10,),
                    
                    Padding(
                      padding: const EdgeInsets.only(right: 75.0),
                      child: Text('Inhame 1,5Kg',),
                    ),
                    SizedBox(height: 30,),

                   Padding(
                      padding: const EdgeInsets.only(right: 80.0),
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Center(
                            child: Text('R\$33,60',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              color: Color.fromARGB(255, 156, 16, 16),
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                               ),
                              ),
                            ),
                          ],
                         ),
                       ),
                     ),
                        SizedBox(height: 15,),

                        Container(
                         width: 170,
                        height: 5,
                        decoration: BoxDecoration(
                        color: Colors.white
                          ),
                        child: Divider(color: Colors.black12,),

                      ),
                        Container(
                          width: 180,
                        height: 100,
                          child: QuantitySelector(),
                    )
                  ]
                ),
              ],
            ),           
          ),
          Container(
            width: 190,
            height: 400,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Colors.black12,
                width: 1
              )
            ),
            
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Stack(
                      children: [
                    Image.asset('assets/images/abacaxi.png', ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    
                    Padding(
                      padding: const EdgeInsets.only(right: 70.0),
                      child: Text('Abacaxi 1 Und',),
                    ),

                    SizedBox(height: 30,),

                    Padding(
                      padding: const EdgeInsets.only(right: 90.0),
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Center(
                            child: Text('R\$7,99',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              color: Color.fromARGB(255, 156, 16, 16),
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                                ),
                              ),
                            ),
                          ],
                         ),
                       ),
                     ),
                        SizedBox(height: 14,),

                        Container(
                         width: 170,
                        height: 5,
                        decoration: BoxDecoration(
                        color: Colors.white
                          ),
                        child: Divider(color: Colors.black12,),

                          ),
                        Container(
                          width: 180,
                        height: 100,
                          child: QuantitySelector(),
                           )
                         ]
                       ),
                     ],
                   ),           
                 ),
               ],
             ),
      //ATÉ AQUI
      //AQUI
      Row(
        children: [
          Container(
            width: 200,
            height: 420,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Colors.black12,
                width: 1
              )
            ),
            
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Stack(
                      children: [
                    Image.asset('assets/images/vermelho.png', ),
                    ],
                    ),
                    SizedBox(height: 10,),
                    
                    Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: Text('Bolinhas de Diversas Pré',),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 5),
                      child: Text('Frito Lara ( Carne, Frango,'),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 55),
                      child: Text(' Queijo Pizza) 500g'),
                    ),
                    SizedBox(height: 10,),

                   Padding(
                      padding: const EdgeInsets.only(right: 80.0),
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Center(
                            child: Text('R\$24,99',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              color: Color.fromARGB(255, 156, 16, 16),
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                        SizedBox(height: 15,),

                        Container(
                         width: 170,
                        height: 5,
                        decoration: BoxDecoration(
                        color: Colors.white
                          ),
                        child: Divider(color: Colors.black12,),

                      ),
                        Container(
                          width: 180,
                        height: 100,
                          child: QuantitySelector(),
                    )
                  ]
                ),
              ],
            ),           
          ),
          Container(
            width: 190,
            height: 420,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Colors.black12,
                width: 1
              )
            ),
            
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Stack(
                      children: [
                    Image.asset('assets/images/amarela.png', ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    
                    Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: Text('Coxinhas de Frango Pré',),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 66.0),
                      child: Text('Frito Lara 500g',),
                    ),

                    SizedBox(height: 30,),

                    Padding(
                      padding: const EdgeInsets.only(right: 80.0),
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Center(
                            child: Text('R\$19,49',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              color: Color.fromARGB(255, 156, 16, 16),
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                        SizedBox(height: 14,),

                        Container(
                         width: 170,
                        height: 5,
                        decoration: BoxDecoration(
                        color: Colors.white
                          ),
                        child: Divider(color: Colors.black12,),

                        ),
                        Container(
                          width: 180,
                        height: 100,
                          child: QuantitySelector(),
                    )
                  ]
                ),
              ],
            ),           
          ),
        ],
      ),
      //ATÉ AQUI
            //AQUI
      Row(
        children: [
          Container(
            width: 200,
            height: 400,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Colors.black12,
                width: 1
              )
            ),
            
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Stack(
                      children: [
                    Image.asset('assets/images/leite.png', ),
                    Positioned(
                      bottom: 10,
                      left: 0,
                  child: Container(
                      width: 78,
                      height: 30,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 41, 5, 70),
                      ),
                      child: Center(
                        child: Text('PROMOÇÃO',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 11
                            ),
                          ),
                        ),
                      ), 
                    ),
                  ],
                ),
                    SizedBox(height: 10,),
                    
                    Padding(
                      padding: const EdgeInsets.only(right: 25.0),
                      child: Text('Leite Cemil Integral 1L',),
                    ),
                   

                    SizedBox(height: 30,),

                    Padding(
                      padding: const EdgeInsets.only(right: 30),
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Center(
                            child: Text('R\$5,99',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              color: Color.fromARGB(255, 156, 16, 16),
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              ),
                            ),
                          ),
                            SizedBox(width: 10,),
                            Container(
                        width: 75,
                        height: 25,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 202, 24, 24),
                        ),
                        child: Stack(
                          children: [
                            Align(
                              alignment: Alignment.center,
                            child: Text('R\$7,99',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                       Positioned(
                        left: 9,
                        child: Text('__________',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12
                           ),
                          ),
                        ),
                      ],
                    ),
                  ), 
                ],
              ),
            ),
          ),

                        SizedBox(height: 20,),

                        Container(
                         width: 170,
                        height: 5,
                        decoration: BoxDecoration(
                        color: Colors.white
                          ),
                        child: Divider(color: Colors.black12,),
                        ),
                        Container(
                          width: 180,
                        height: 100,
                          child: QuantitySelector(),
                    )
                  ]
                ),
              ],
            ),           
          ),
          Container(
            width: 190,
            height: 400,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Colors.black12,
                width: 1
              )
            ),
          ),
        ],
      ),
                    Container(
                      width: double.infinity,
                        height: 10,
                        decoration: BoxDecoration(
                        color: Colors.white
                      ),
                    ),
                      Container(
                         width: double.infinity,
                        height: 60,
                        decoration: BoxDecoration(
                        color: Colors.white
                          ),
                         child: Padding(
                           padding: const EdgeInsets.all(10.0),
                           child: Container(
                            child: Divider(color: Colors.black12,)
                      ),
                    ),
                  ),
                    
                    Fim(),
     ],
    ),
   ),
  );
 }
}

class Produto {
  String nome;
  double preco;
  int quantidade;

  Produto({required this.nome, required this.preco, this.quantidade = 1});
}

class CarrinhoModel extends ChangeNotifier {
  List<Produto> _produtos = [];
  double _total = 0.0;

  List<Produto> get produtos => _produtos;

  double get total => _total;

  void adicionarProduto(Produto produto) {
    _produtos.add(produto);
    _total += produto.preco;
    notifyListeners();
  }

  void removerProduto(Produto produto) {
    _produtos.remove(produto);
    _total -= produto.preco;
    notifyListeners();
  }
}
