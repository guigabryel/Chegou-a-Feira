import 'package:flutter/material.dart';

import '../components/botaodestaques.dart';

class Macarrao extends StatefulWidget {
  const Macarrao({super.key});

  @override
  State<Macarrao> createState() => _MacarraoState();
}

class _MacarraoState extends State<Macarrao> {
  @override
  Widget build(BuildContext context) {
    return          Container(
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
          );
       
      

  }
}