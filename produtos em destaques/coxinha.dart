import 'package:flutter/material.dart';

import '../components/botaodestaques.dart';

class Coxinha extends StatefulWidget {
  const Coxinha({super.key});

  @override
  State<Coxinha> createState() => _CoxinhaState();
}

class _CoxinhaState extends State<Coxinha> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
              ),
            ]
          ),
        ],
      ),
    );
  }
}