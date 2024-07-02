import 'package:flutter/material.dart';

import '../components/botaodestaques.dart';

class Bolinhas extends StatefulWidget {
  const Bolinhas({super.key});

  @override
  State<Bolinhas> createState() => _BolinhasState();
}

class _BolinhasState extends State<Bolinhas> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
              ),
            ]
          ),
        ],
      ),
    );
  }
}