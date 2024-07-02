import 'package:flutter/material.dart';

import '../components/botaodestaques.dart';

class Jerimum extends StatefulWidget {
  const Jerimum({super.key});

  @override
  State<Jerimum> createState() => _JerimumState();
}

class _JerimumState extends State<Jerimum> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
              ),
            ]
          ),
        ],
      ),
    );
  }
}