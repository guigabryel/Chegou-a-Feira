import 'package:chegou_a_feira/barra.dart';
import 'package:chegou_a_feira/cadastro.dart';
import 'package:chegou_a_feira/login.dart';
import 'package:flutter/material.dart';

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
                        'R\$0,00',
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
                    Image.asset('assets/images/sabao.png', ),
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
                    
                    Text('Sabão Liquido Becker 3L',),

                    SizedBox(height: 50,),

                    Padding(
                      padding: const EdgeInsets.only(right: 30),
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Center(
                            child: Text('R\$18,99',
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
                            
                            child: Text('R\$21,99',
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
                    Image.asset('assets/images/biscoito.png', ),
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
                    
                    Text('Biscoito Vitarella Cream',),
                    Text('Cracker Tradicional 350g',),

                    SizedBox(height: 30,),

                    Padding(
                      padding: const EdgeInsets.only(right: 30),
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Center(
                            child: Text('R\$4,89',
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
                            
                            child: Text('R\$5,39',
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
          
       ],
      ),
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
                    Image.asset('assets/images/palha.png', ),
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
                    
                    Text('Batata Palha Scrusch 80g',),

                    SizedBox(height: 50,),

                    Padding(
                      padding: const EdgeInsets.only(right: 30),
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Center(
                            child: Text('R\$4,29',
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
                            
                            child: Text('R\$5,49',
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
                    Image.asset('assets/images/macarrao.png', ),
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
                    
                    Text('Macarrão Espaguete Fino',),
                    Padding(
                      padding: const EdgeInsets.only(right: 75.0),
                      child: Text('Vitarella 400g',),
                    ),

                    SizedBox(height: 30,),

                    Padding(
                      padding: const EdgeInsets.only(right: 30),
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Center(
                            child: Text('R\$2,69',
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
                            
                            child: Text('R\$3,09',
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
       ],
      ),
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
                    Image.asset('assets/images/limao.png', ),
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
                    
                    Text('Detergente Invicto limão',),
                    Padding(
                      padding: const EdgeInsets.only(right: 119.0),
                      child: Text('500ml',),
                    ),

                    SizedBox(height: 30,),

                    Padding(
                      padding: const EdgeInsets.only(right: 30),
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Center(
                            child: Text('R\$1,99',
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
                            
                            child: Text('R\$2,49',
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
                    Image.asset('assets/images/marca.png', ),
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
                    
                    Text('Detergente Invicto Maçã',),
                    Padding(
                      padding: const EdgeInsets.only(right: 119.0),
                      child: Text('500ml',),
                    ),

                    SizedBox(height: 30,),

                    Padding(
                      padding: const EdgeInsets.only(right: 30),
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Center(
                            child: Text('R\$1,99',
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
                            
                            child: Text('R\$2,49',
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
                    Image.asset('assets/images/neutro.png', ),
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
                    
                    Text('Detergente Invicto Neutro',),
                    Padding(
                      padding: const EdgeInsets.only(right: 124.0),
                      child: Text('500ml',),
                    ),

                    SizedBox(height: 30,),

                    Padding(
                      padding: const EdgeInsets.only(right: 30),
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Center(
                            child: Text('R\$1,99',
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
                            
                            child: Text('R\$2,49',
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
                    Image.asset('assets/images/banana.png', ),
                    

                    


                    ],
                    ),
                    SizedBox(height: 10,),
                    
                    Padding(
                      padding: const EdgeInsets.only(right: 50.0),
                      child: Text('Banana Maçã 1Kg',),
                    ),

                    SizedBox(height: 50,),

                    Padding(
                      padding: const EdgeInsets.only(right: 90.0),
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Center(
                            child: Text('R\$9,60',
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
                    Image.asset('assets/images/maca.png', ),
                    ],
                    ),
                    SizedBox(height: 10,),
                    
                    Padding(
                      padding: const EdgeInsets.only(right: 67.0),
                      child: Text('Maçã Fuji 500g',),
                    ),
                    SizedBox(height: 30,),

                   Padding(
                      padding: const EdgeInsets.only(right: 90.0),
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Center(
                            child: Text('R\$8,85',
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
                    Image.asset('assets/images/tomate.png', ),
                    

                    


                    ],
                    ),
                    SizedBox(height: 10,),
                    
                    Padding(
                      padding: const EdgeInsets.only(right: 80.0),
                      child: Text('Tomate 500g',),
                    ),

                    SizedBox(height: 30,),

                    Padding(
                      padding: const EdgeInsets.only(right: 90.0),
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Center(
                            child: Text('R\$9,60',
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
                    Image.asset('assets/images/cebola.png', ),
                    ],
                    ),
                    SizedBox(height: 10,),
                    
                    Padding(
                      padding: const EdgeInsets.only(right: 37.0),
                      child: Text('Cebola Branca 500g',),
                    ),
                    SizedBox(height: 30,),

                   Padding(
                      padding: const EdgeInsets.only(right: 90.0),
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Center(
                            child: Text('R\$4,80',
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
                    Image.asset('assets/images/alho.png', ),
                    

                    


                    ],
                    ),
                    SizedBox(height: 10,),
                    
                    Padding(
                      padding: const EdgeInsets.only(right: 95.0),
                      child: Text('Alho 100g',),
                    ),

                    SizedBox(height: 30,),

                    Padding(
                      padding: const EdgeInsets.only(right: 90.0),
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Center(
                            child: Text('R\$4,48',
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
                    Image.asset('assets/images/batata.png', ),
                    ],
                    ),
                    SizedBox(height: 10,),
                    
                    Padding(
                      padding: const EdgeInsets.only(right: 37.0),
                      child: Text('Batata Inglesa 500g',),
                    ),
                    SizedBox(height: 30,),

                   Padding(
                      padding: const EdgeInsets.only(right: 90.0),
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Center(
                            child: Text('R\$6,65',
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
                    Image.asset('assets/images/doce.png', ),
                    

                    


                    ],
                    ),
                    SizedBox(height: 10,),
                    
                    Padding(
                      padding: const EdgeInsets.only(right: 48.0),
                      child: Text('Batata Doce 500g',),
                    ),

                    SizedBox(height: 30,),

                    Padding(
                      padding: const EdgeInsets.only(right: 90.0),
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Center(
                            child: Text('R\$3,20',
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
                           
                            child: Divider(color: Colors.black12,)),
                         ),
                  ),
                  Container(
                      width: double.infinity,
                        height: 40,
                        decoration: BoxDecoration(
                        color: Colors.white
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
     ],
    
    ),
    
   ),
  );
 }
}







class Barra extends StatelessWidget {
  const Barra({super.key});

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
          borderRadius: BorderRadius.circular(0.0),
          borderSide: BorderSide.none,
        ),
        filled: true,
        fillColor: Colors.white,
        contentPadding: EdgeInsets.symmetric(horizontal: 16.0), // Espaçamento interno
        suffixIcon: Container(
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 110, 66, 146),
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(0.0),
              bottomRight: Radius.circular(0.0),
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


// BOTÃO DE ADICIONAR
class QuantitySelector extends StatefulWidget {
  @override
  _QuantitySelectorState createState() => _QuantitySelectorState();
}

class _QuantitySelectorState extends State<QuantitySelector> {
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
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              icon: Icon(Icons.remove),
              onPressed: _decrementCounter,
              color: Colors.black,
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              iconSize: 24.0,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                '$_counter',
                style: TextStyle(fontSize: 20.0),
              ),
            ),
            IconButton(
              icon: Icon(Icons.add),
              onPressed: _incrementCounter,
              color: Colors.black,
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              iconSize: 24.0,
            ),
          ],
        ),
        ElevatedButton(
          onPressed: () {
            // Adicione a ação do botão aqui
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.lightBlue, 
            fixedSize: Size(150, 30),
            shape: RoundedRectangleBorder(),
            padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 5.0),
          ),
          child: Icon(
            Icons.shopping_cart,
            color: Colors.white,
          ),
        ),
      ],
    );
  }}
