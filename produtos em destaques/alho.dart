import 'package:flutter/material.dart';

import '../components/botaodestaques.dart';

class Alho extends StatefulWidget {
  const Alho({super.key});

  @override
  State<Alho> createState() => _AlhoState();
}

class _AlhoState extends State<Alho> {
  @override
  Widget build(BuildContext context) {
    return           Container(
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
          );

  }
}