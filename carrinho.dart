import 'package:chegou_a_feira/components/barra.dart';
import 'package:chegou_a_feira/components/barralateral.dart';
import 'package:chegou_a_feira/destaques.dart';
import 'package:chegou_a_feira/login.dart';
import 'package:chegou_a_feira/minhaconta.dart';
import 'package:flutter/material.dart';
import 'components/abainicial.dart';
import 'components/botaocarrinho.dart';
import 'components/fim.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Meucarrinho extends StatefulWidget {
  const Meucarrinho({super.key});

  @override
  State<Meucarrinho> createState() => _TesteState();
}

class _TesteState extends State<Meucarrinho> {
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
            drawer: 
            
            Barralateral(),
      
            body: SingleChildScrollView(
              child:  Column(
              children: [
                
                  Abainicial(),

              Container(
         width: MediaQuery.of(context).size.width,
         height: 1830,
         color: Color.fromARGB(31, 114, 113, 113),
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
                           ]
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
                ],
               ),
              ),
                      Container(
                      width: double.infinity,
                      height: 50,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Row(
                          children: [
                            SizedBox(height: 15,),
                            Icon(Icons.lightbulb_outlined, color: Color.fromARGB(255, 110, 66, 146),),
                            Text('Produtos mais comprados nessa loja', style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black
                         ),
                        ),
                       ],
                      ),
                     ),
                    ),
                                Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(8)
                                  ),
                                  
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(top: 13),
                                            child: Image.asset('assets/images/leite.png', width: 50),
                                          ),
                                          SizedBox(width: 10),
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(top: 17),
                                                child: Text('Leite Cemil'),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(right: 3),
                                                child: Text('Integral 1L'),
                                              ),
                                            ],
                                          ),
                                          SizedBox(width: 40),
                                          Padding(
                                            padding: const EdgeInsets.only(top: 25),
                                            child: Text('R\$ 5,99', style: TextStyle(fontWeight: FontWeight.bold)),
                                          ),
                                          SizedBox(width: 13),
                                          Padding(
                                            padding: const EdgeInsets.only(top: 10),
                                            child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor: Color.fromARGB(255, 176, 39, 69),
                                                padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 1.0),
                                                shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(10.0),
                                                ),
                                              ),
                                              onPressed: () {
                                                
                                              },
                                              child: Text(
                                                'Adicionar',
                                                style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                                                
                                        SizedBox(height: 5,),
                                                                
                                        Padding(
                                          padding: const EdgeInsets.only(left: 10),
                                          child: Container(
                                           width: 340,
                                          height: 5,
                                          decoration: BoxDecoration(
                                          color: Colors.white
                                            ),
                                          child: Divider(color: Colors.grey,),
                                          
                                        ),
                                        ),
                                        Row(
                                          children: [
                                                                Padding(
                                padding: const EdgeInsets.only(top: 13),
                                child: Image.asset('assets/images/coco.png', width: 50),
                                                                ),
                                                                SizedBox(width: 10), 
                                                                Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 15),
                                    child: Text('Coco Seco'),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 3),
                                    child: Text('Unidade'),
                                  ),
                                ],
                                                                ),
                                                                SizedBox(width: 43),
                                                                Padding(
                                padding: const EdgeInsets.only(top: 17),
                                child: Text('R\$ 2,99', style: TextStyle(fontWeight: FontWeight.bold)),
                                                                ),
                                                                SizedBox(width: 13),
                                                                Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Color.fromARGB(255, 176, 39, 69),
                                    padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 1.0),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                  ),
                                  onPressed: () {
                                    // Ação do botão
                                  },
                                  child: Text(
                                    'Adicionar',
                                    style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                                  ),
                                ),
                                                                ),
                                          ],
                                        ),
                                                                
                                        SizedBox(height: 5,),
                                                                
                                        Padding(
                                          padding: const EdgeInsets.only(left: 10),
                                          child: Container(
                                           width: 340,
                                          height: 5,
                                          decoration: BoxDecoration(
                                          color: Colors.white
                                            ),
                                          child: Divider(color: Colors.grey,),
                                          
                                        ),
                                       ),
                                        Row(
                                          children: [
                                                                Padding(
                                padding: const EdgeInsets.only(top: 13),
                                child: Image.asset('assets/images/beterraba.png', width: 50),
                                                                ),
                                                                SizedBox(width: 10), 
                                                                Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 15),
                                    child: Text('Beterraba'),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 3),
                                    child: Text('500g'),
                                  ),
                                ],
                                                                ),
                                                                SizedBox(width: 48),
                                                                Padding(
                                padding: const EdgeInsets.only(top: 17),
                                child: Text('R\$ 7,99', style: TextStyle(fontWeight: FontWeight.bold)),
                                                                ),
                                                                SizedBox(width: 13),
                                                                Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Color.fromARGB(255, 176, 39, 69),
                                    padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 1.0),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                  ),
                                  onPressed: () {
                                    // Ação do botão
                                  },
                                  child: Text(
                                    'Adicionar',
                                    style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                                  ),
                                ),
                                                                ),
                                          ],
                                        ),
                                                                
                                        SizedBox(height: 5,),
                                                                
                                        Padding(
                                          padding: const EdgeInsets.only(left: 10),
                                          child: Container(
                                           width: 340,
                                          height: 5,
                                          decoration: BoxDecoration(
                                          color: Colors.white
                                            ),
                                          child: Divider(color: Colors.grey,),
                                          
                                        ),
                                        ),
                                        Row(
                                          children: [
                                                                Padding(
                                padding: const EdgeInsets.only(top: 13),
                                child: Image.asset('assets/images/coentro.png', width: 50),
                                                                ),
                                                                SizedBox(width: 10), 
                                                                Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 15),
                                    child: Text('Coentro'),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 3),
                                    child: Text('Unidade'),
                                  ),
                                ],
                                                                ),
                                                                SizedBox(width: 55),
                                                                Padding(
                                padding: const EdgeInsets.only(top: 17),
                                child: Text('R\$ 2,40', style: TextStyle(fontWeight: FontWeight.bold)),
                                                                ),
                                                                SizedBox(width: 13),
                                                                Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Color.fromARGB(255, 176, 39, 69),
                                    padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 1.0),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                  ),
                                  onPressed: () {
                                    // Ação do botão
                                  },
                                  child: Text(
                                    'Adicionar',
                                    style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                                  ),
                                 ),
                                ),
                               ],
                              ),
                                                                
                                 SizedBox(height: 5,),
                                                                
                            ],
                          ),
                        ),
                        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Subtotal',
                      style: TextStyle(fontSize: 17),
                    ),
                    Text(
                      'R\$ 112,05',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 176, 39, 69),
                  padding: EdgeInsets.symmetric(vertical: 14.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                onPressed: () {
                  // Ação do botão
                },
                icon: Icon(Icons.shopping_cart, color: Colors.white),
                label: Text(
                  'Ir para o pagamento',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
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
                Fim(),

       ]
      ),
     ),
    );
  }
}
