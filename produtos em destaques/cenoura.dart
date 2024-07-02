import 'package:flutter/material.dart';

import '../components/botaodestaques.dart';

class Cenoura extends StatefulWidget {
  const Cenoura({super.key});

  @override
  State<Cenoura> createState() => _CenouraState();
}

class _CenouraState extends State<Cenoura> {
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
          );
  }
}